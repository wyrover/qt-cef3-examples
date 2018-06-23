#pragma once

#include <QtWidgets/QMainWindow>
#include "ui_qtcef3examples.h"

class qtcef3examples : public QMainWindow
{
	Q_OBJECT

public:
	qtcef3examples(QWidget *parent = Q_NULLPTR);

private:
	Ui::qtcef3examplesClass ui;
};
