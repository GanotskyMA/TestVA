﻿#language: ru

@tree

Функционал: Проверка расчета поля Количество (итог) документа Заказ

Как тестировщик я хочу
проверить расчет поля Количество (итог) документа Заказ 
чтобы проверить работоспособность

Сценарий: Проверка расчета поля Количество (итог) документа Заказ
* Создаем документ и заполняем шапку
	Дано Экспортный сценарий на заполнение шапки документа Заказ
* Создаем товары
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000012' | 'Электротовары' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000039' | 'Телевизоры'   |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '20 500,00'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я добавляю строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыТовар"
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000012' | 'Электротовары' |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000034' | 'Veko876N'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ * от * *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '2'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля "Номер" как "$НомерДокумента$"
* Проверка табличной формы
	И таблица "Товары" стала равной:
		| 'Товар'       | 'Цена'      | 'Количество' | 'Сумма'      |
		| 'Sony К3456P' | '20 500,00' | '5'          | '102 500,00' |
		| 'Veko876N'    | '6 000,00'  | '2'          | '12 000,00'  |
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '7'
	И элемент формы с именем "ТоварыИтогСумма" стал равен '114 500'
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Заказ * от *' в течение 20 секунд
*Проверка создания документа
	Тогда таблица "Список" содержит строки:
		| 'Номер'     |
		| '$НомерДокумента$' |
	
	
	

