#include "mainwindow.h"
#include "./ui_mainwindow.h"


bool check_string_key_in_map(std::map<std::string, short> m, const std::string m_key) {
  int result = 1;
  for (auto const& x : m)
    result *= x.first.compare(m_key);
  return result == 0;
}

QDate get_date_from_line(std::string line, const std::string substring) {
  const QString date_of_work_str = QString::fromStdString(
        line.substr(line.find(substring) + substring.length(), 8));
  return QDate::fromString(date_of_work_str, "dd.MM.yy").addYears(100);
}


void MainWindow::process_protocol(std::vector<std::string> protocol_data) {
  // getting dates for analysis
  QDate date1 = ui->dateEdit->date();
  QDate date2 = ui->dateEdit_2->date();

  // number of hardware launches
  short count_of_inclusions = 0;

  for (std::string line : protocol_data) {

    // get the start date of the work
    QDate start_date_of_work = get_date_from_line(line, "Начало работы :");
    // get the end date of the work
    QDate end_date_of_work = get_date_from_line(line, "Работа завершена: ");

    // list of users and their statistics
    std::map<std::string, short> hardware_users;

    if (date1 <= start_date_of_work && end_date_of_work <= date2) {
      count_of_inclusions++;
      if (line.find("Оператор") != std::string::npos) {
        const std::string operator_substring = "Оператор -  ";
        size_t start_pos_of_name =
            line.find(operator_substring) + operator_substring.length();
        size_t end_pos_of_name = line.find("\n", start_pos_of_name);
        size_t length_of_name = end_pos_of_name - start_pos_of_name - 1;

        std::string orerator_name =
            line.substr(start_pos_of_name, length_of_name);
      }
    }
  }

  ui->lineEdit->setText(QString::number(count_of_inclusions));
}

std::vector<std::string> read_protocol_file(std::string filename) {
  std::ifstream infile(filename);

  // Store the contents into a vector of strings
  std::vector<std::string> protocol_data;

  // Temporary buffer
  std::string temp;

  // Get the input from the input file until EOF
  while (std::getline(infile, temp, '*')) {
    if (temp.length())
      // Add to the list of output strings
      protocol_data.push_back(temp);
  }
  return protocol_data;
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

  std::vector<std::string> protocol_data = read_protocol_file(fileName);

  // number of hardware launches
  ui->lineEdit->setText(QString::number(protocol_data.size()));

  process_protocol(protocol_data);
}
