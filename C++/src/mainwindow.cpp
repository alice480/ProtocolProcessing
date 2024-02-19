#include "mainwindow.h"
#include "./ui_mainwindow.h"

void MainWindow::output_statistic() {
  std::string temp(50, '-');
  QString delmiter = QString::fromStdString(temp);
  for (const auto &[name, count] : hardware_counts) {
    ui->textEdit->append(delmiter);
    ui->textEdit->append("Имя пользователя: " + QString::fromStdString(name));
    ui->textEdit->append("Количество включений: " + QString::number(count));

    QTime time = QTime::fromMSecsSinceStartOfDay(hardware_times[name]);
    ui->textEdit->append("Суммарное время работы: " +
                         time.toString("hh:mm:ss"));
  }
  ui->lineEdit->setText(QString::number(count_of_inclusions));
}

// processing protocol data
void MainWindow::process_protocol(std::vector<std::string> protocol_data) {
  // getting dates for analysis fro, dateEdit widgets
  QDate date1 = ui->dateEdit->date();
  QDate date2 = ui->dateEdit_2->date();

  // going through the records of the protocol
  for (std::string line : protocol_data) {
    // get the start date of the work
    QDate start_date_of_work = get_date_from_line(line, "Начало работы :");
    // get the end date of the work
    QDate end_date_of_work = get_date_from_line(line, "Работа завершена: ");

    // processing a record if it is in the specified range
    if (date1 <= start_date_of_work && end_date_of_work <= date2) {
      count_of_inclusions++;
      // checking whether the launch was with the operator
      if (line.find("Оператор") != std::string::npos) {
        // operators name extraction
        const std::string operator_substring = "Оператор -  ";
        size_t start_pos_of_name =
            line.find(operator_substring) + operator_substring.length();
        size_t end_pos_of_name = line.find("\n", start_pos_of_name);
        size_t length_of_name = end_pos_of_name - start_pos_of_name - 1;

        std::string orerator_name =
            line.substr(start_pos_of_name, length_of_name);

        // increasing the number of inclusions on behalf of the user
        ++hardware_counts[orerator_name];
        // increasing the working time
        QTime start_time_of_work = get_time_from_line(line, "Начало работы :");
        QTime end_time_of_work = get_time_from_line(line, "Работа завершена: ");
        hardware_times[orerator_name] +=
            start_time_of_work.msecsTo(end_time_of_work);
      }
    }
  }
}

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow) {
  ui->setupUi(this);
}

MainWindow::~MainWindow() { delete ui; }

void MainWindow::on_pushButton_clicked() {

  std::string fileName =
      QFileDialog::getOpenFileName(this, tr("Open protocol file"), "/home/",
                                   tr("Protocol files (*.log)"))
          .toStdString();

  ui->textEdit->clear();

  std::vector<std::string> protocol_data = read_protocol_file(fileName);
  process_protocol(protocol_data);
  output_statistic();
}
