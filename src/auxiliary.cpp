#include "auxiliary.h"

QDate get_date_from_line(std::string line, const std::string substring) {
  const QString date_of_work_str = QString::fromStdString(
      line.substr(line.find(substring) + substring.length(), 8));
  return QDate::fromString(date_of_work_str, "dd.MM.yy").addYears(100);
}

QTime get_time_from_line(std::string line, const std::string substring) {
  size_t start_pos_of_time = line.find(substring) + substring.length() + 9;
  size_t end_pos_of_time = line.find("\n", start_pos_of_time);
  size_t length_of_time = end_pos_of_time - start_pos_of_time - 1;

  const QString datetime_str =
      QString::fromStdString(line.substr(start_pos_of_time, length_of_time));
  return QTime::fromString(datetime_str, "hh:mm:ss");
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
