#ifndef _SRC_AUXILIARY_H
#define _SRC_AUXILIARY_H

#include <QDate>
#include <QTime>
#include <fstream>
#include <vector>

QDate get_date_from_line(std::string line, const std::string substring);
QTime get_time_from_line(std::string line, const std::string substring);
std::vector<std::string> read_protocol_file(std::string filename);

#endif // _SRC_AUXILIARY_H