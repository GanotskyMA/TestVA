﻿#language: ru

@tree
@ExportScenarios

Функционал: Экспортный сценарий на заполнение шапки документа Заказ

Как тестировщик я хочу
заполненить шапку документа Заказ 
чтобы проверить на работоспособность



Сценарий: Экспортный сценарий на заполнение шапки документа Заказ
* Создание заказа
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	Тогда открылось окно 'Заказ (создание)'
* Создание шапки
	И я нажимаю кнопку выбора у поля с именем "Дата"
	И в поле с именем 'Дата' я ввожу текст '23.06.2023  0:00:00'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И я нажимаю кнопку выбора у поля с именем "Покупатель"
	Тогда открылось окно 'Контрагенты'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'              |
		| '000000014' | 'Магазин "Бытовая техника"' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Большой'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И я нажимаю на кнопку "Записать"
	

