#include "mainwindow.h"
#include "./ui_mainwindow.h"


void MainWindow::process_protocol(std::vector<std::string> protocol_data) {
  QDate date1 = ui->dateEdit->date();
  QDate date2 = ui->dateEdit_2->date();

  // number of hardware launches
  short count_of_inclusions = 0;

  for (std::string line : protocol_data) {

    // get the start date of the work
    // the length of the date is 10 characters
    const std::string start_substring = "Начало работы :";

    const QString start_date_of_work_str = QString::fromStdString(
        line.substr(line.find(start_substring) + start_substring.length(), 8));
    QDate start_date_of_work =
        QDate::fromString(start_date_of_work_str, "dd.MM.yy").addYears(100);

    const std::string end_substring = "Работа завершена: ";
    const QString end_date_of_work_str = QString::fromStdString(
        line.substr(line.find(end_substring) + end_substring.length(), 8));
    QDate end_date_of_work =
        QDate::fromString(end_date_of_work_str, "dd.MM.yy").addYears(100);

    std::map<std::string&, short> hardware_users;

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

        if (hardware_users.find(orerator_name) == hardware_users.end()) {
            hardware_users.insert(
                std::make_pair<std::string&, short>(orerator_name, 0));
            ui->textEdit->append("НОВЫЙ");
        }

        auto search_name = hardware_users.find(orerator_name);
        short count = search_name->second;
        count++;
        ui->textEdit->append(QString::number(count));
        search_name->second = count;

        ui->textEdit->append("-------\nСТАТИСТИКА");
        ui->textEdit->append(QString::fromStdString(orerator_name));
        auto search = hardware_users.find(orerator_name);
        ui->textEdit->append(QString::number(search->second));

        // ui->textEdit->append(QString::fromStdString(statistic_vector[0]));
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
