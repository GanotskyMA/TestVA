﻿#language: ru

@tree

Функционал: <описание фичи>

Сценарий: <описание сценария>
* Сверка с макетами когдане совпадают строки
	Если Табличный документ "Result" равен макету "ТестовыйМакет2" Тогда
	ИначеЕсли Табличный документ "Result" равен макету "ТестовыйМакет1" Тогда
	Иначе
		Тогда я вызываю исключение "Макет не совпал с эталоном"
		
		
		