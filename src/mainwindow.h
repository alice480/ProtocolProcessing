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

private slots:
  void on_pushButton_clicked();

private:
  Ui::MainWindow *ui;
};

#endif // _SRC_MAINWINDOW_H
