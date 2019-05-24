/////////////////////////////////////////////////////////////////////////////////
// Серверный
//  
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
// Экспортные процедуры и функции, предназначенные для использования другими 
// объектами конфигурации или другими программами
///////////////////////////////////////////////////////////////////////////////// 

#Область ПрограммныйИнтерфейс

// ВыполнитьДействие1
//	Выполнить действие1
//
// Параметры:
//  Параметр1	 - Произвольный	 - Входящий параметр
//  Параметр2	 - Произвольный	 - Входящий параметр
//
Процедура ВыполнитьДействие1(Параметр1, Параметр2 = "") Экспорт 
	
	Сообщить(ПолучитьДанные());
	
КонецПроцедуры

// ПолучитьДанные
//	Получить данные
//
// Параметры:
//  Параметр1	 - Произвольный	 - Входящий параметр
//  Параметр2	 - Произвольный	 - Входящий параметр
//  Параметр3	 - Произвольный	 - Входящий параметр
// 
// Возвращаемое значение:
//  Произвольный - Результат
//
Функция ПолучитьДанные(Параметр1 = 1, Параметр2 = 2, Параметр3 = 4) Экспорт
	
	Возврат "Результат метода ПолучитьДанные";
	
КонецФункции

#КонецОбласти

/////////////////////////////////////////////////////////////////////////////////
// Экспортные процедуры и функции для служебного использования внутри подсистемы
///////////////////////////////////////////////////////////////////////////////// 

#Область СлужебныйПрограммныйИнтерфейс

// Подписка на событие1 перед записью
//
// Параметры:
//  Источник - Справочник.Объект	 - Источник события
//  Отказ	 - Булево	 - Прервать операцию
//
Процедура ПодпискаНаСобытие1ПередЗаписью(Источник, Отказ) Экспорт
	// Вставить содержимое обработчика.
КонецПроцедуры

// Регламентное задание1
//
Процедура РегламентноеЗадание1() Экспорт
	// Вставить содержимое обработчика.
КонецПроцедуры

#КонецОбласти

/////////////////////////////////////////////////////////////////////////////////
// Процедуры и функции, составляющие внутреннюю реализацию модуля 
///////////////////////////////////////////////////////////////////////////////// 

#Область СлужебныеПроцедурыИФункции

#КонецОбласти
