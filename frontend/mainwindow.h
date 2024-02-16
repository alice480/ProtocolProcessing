#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QDateTimeEdit>
#include <QFileDialog>
#include <QMainWindow>
#include <fstream>
#include <map>
// #include "backend/processing.h"

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow {
  Q_OBJECT

public:
  MainWindow(QWidget *parent = nullptr);
  ~MainWindow();
  void process_protocol(std::vector<std::string> protocol_data);
  bool check_key_not_in_map(std::map<std::string, short> &m, const std::string m_key);

private slots:
  void on_pushButton_clicked();

private:
  Ui::MainWindow *ui;
};
#endif // MAINWINDOW_H
