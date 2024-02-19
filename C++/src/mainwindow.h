#ifndef _SRC_MAINWINDOW_H
#define _SRC_MAINWINDOW_H

#include "auxiliary.h"
#include <QFileDialog>
#include <QMainWindow>

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
  void output_statistic();

private slots:
  void on_pushButton_clicked();

private:
  Ui::MainWindow *ui;

  // lists of users and their statistics
  std::map<std::string, short> hardware_counts{};
  std::map<std::string, int> hardware_times{};
  // number of hardware launches
  short count_of_inclusions = 0;
};

#endif // _SRC_MAINWINDOW_H
