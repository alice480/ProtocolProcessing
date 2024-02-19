import datetime
from datetime import timedelta
# tkinter version==8.6
from tkinter import filedialog


# подсчет времени работы за устройством по начальному и конечному времени
def calculate_time(time_str1: str, time_str2: str):
    time1 = datetime.datetime.strptime(time_str1, '%d.%m.%y %H:%M:%S')
    time2 = datetime.datetime.strptime(time_str2, '%d.%m.%y %H:%M:%S')
    return time2 - time1


# обработка данных протокола
def process_protocol(protocol_data: list, date1: datetime, date2: datetime):
    # число включений аппаратуры
    count_of_inclusions = 0
    # список пользователей с числом включений аппаратуры и временем работы
    hardware_users = dict()
    # перебор записей для составления статистики
    for record in protocol_data:
        start_date_of_work = datetime.datetime.strptime(record[1][15:23], '%d.%m.%y')
        end_date_of_word = datetime.datetime.strptime(record[-1][18:26], '%d.%m.%y')
        # обработка записи, если она попала в нужный диапазон
        if date1 <= start_date_of_work and end_date_of_word <= date2:
            count_of_inclusions += 1
            # обработка записи, если включение было 'с оператором'
            if 'Оператор' in record[2]:
                operator = record[2].split('  ')[1]
                # добавление нового пользователя в список
                if operator not in hardware_users:
                    hardware_users[operator] = [0, timedelta(hours=0)]
                # увеличение числа включений от имени пользователя
                hardware_users[operator][0] += 1
                # увеличение суммарного времени пользователя
                hardware_users[operator][1] += calculate_time(record[1][15:], record[-1][18:])
    return count_of_inclusions, hardware_users


def convert_str_to_date(date_str: str) -> datetime:
    # обработка формата %dd%mm%yyyy
    if len(date_str) == 10:
        date_str = date_str[:6] + date_str[8:]
    # перевод строки в формат datetime
    date_obj = datetime.datetime.strptime(date_str, '%d.%m.%y')
    return date_obj


def input_date(input_text: str) -> datetime:
    date = input(input_text)
    # считываем текст, пока не получим верный формат
    while type(date) is not datetime.datetime:
        try:
            date = convert_str_to_date(date)
        except ValueError:
            date = input(f'Дата {date} не соответствует формату %d.%m.%y. Введите снова: ')
    return date


# чтение и обработка переданного файла
def read_protocol_file(filename: str) -> list:
    protocol_data = []
    with open(filename) as protocol_file:
        # разбивка на записи типа list по строке из '*'
        for record in protocol_file.read().split('*' * 80):
            protocol_data.append(list(filter(len, record.split('\n'))))
    return list(filter(len, protocol_data))


# открытие диалогового окна для выбора файла
def select_protocol_file():
    filepath = ''
    # считываем файл, пока он не будет выбран
    while len(filepath) == 0:
        print('Выберите файл!')
        filepath = filedialog.askopenfilename(filetypes=[('log files', '*.log')])
    return filepath


# ввод дат для статистики
print('Введите даты для обработки')
date1 = input_date('Дата 1: ')
date2 = input_date('Дата 2: ')

# выбор файла протокола
filename = select_protocol_file()
# чтение файла протокола
protocol_data_from_file = read_protocol_file(filename)
# обработка данных протокола
data = process_protocol(protocol_data_from_file, date1, date2)

# вывод статистики
print(f'\nСТАТИСТИКА')
print('-' * 40)
print(f'Количество включений аппаратуры: {data[0]}')
print('\nСписок пользователей:')
users = data[1]
for name in users.keys():
    print('*' * 40)
    print("\033[34m{}".format(name))
    print(f'\033[0mКоличество запусков: {users[name][0]}')
    print(f'\033[0mCуммарное время за установкой: {users[name][1]}')
print('-' * 40)
