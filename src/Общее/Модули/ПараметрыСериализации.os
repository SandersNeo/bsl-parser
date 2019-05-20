///////////////////////////////////////////////////////////////////////////////
//
// Модуль содержащий методы определения параметров чтения/записи объектов
//
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// ПРОГРАММНЫЙ ИНТЕРФЕЙС
///////////////////////////////////////////////////////////////////////////////

Функция ПараметрыЧтения(ТипОбъекта, Формат) Экспорт
	
	Возврат ПараметрыСериализации(ТипОбъекта, Формат, Истина);
	
КонецФункции // ПараметрыЧтения

Функция ПараметрыЗаписи(ТипОбъекта, Формат) Экспорт
	
	Возврат ПараметрыСериализации(ТипОбъекта, Формат, Ложь);
	
КонецФункции // ПараметрыЗаписи

///////////////////////////////////////////////////////////////////////////////
// СЛУЖЕБНЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ
///////////////////////////////////////////////////////////////////////////////

Функция ПараметрыСериализации(ТипОбъекта, Формат, ДляЧтения)
	
	ДанныеОписания = Новый Структура("Тип, Свойства, ЕстьПодчиненные, ЕстьЗначенияПоУмолчанию");
	
	ОписаниеОбъекта = СтруктурыОписаний.ОписаниеСвойствОбъекта(ТипОбъекта);
	
	ЗаполнитьЗначенияСвойств(ДанныеОписания, ОписаниеОбъекта, , "Свойства");
	
	РеквизитыСвойства = "Наименование, МетодПреобразования, Поле, ЭтоКоллекция";
	
	РеквизитИмениПоля = ?(Формат = "EDT", "ЭлементEDT", "ЭлементDesigner");
	
	Если ОписаниеОбъекта.ЕстьЗначенияПоУмолчанию Тогда
		РеквизитыСвойства = РеквизитыСвойства + ", ЗначенияПоУмолчанию";
	КонецЕсли;
	
	ДанныеОписания.Свойства = Новый Структура();

	Для Каждого Свойство Из ОписаниеОбъекта.Свойства Цикл
		
		ОписаниеСвойства = Новый Структура(РеквизитыСвойства);
		ЗаполнитьЗначенияСвойств(ОписаниеСвойства, Свойство);
		
		ОписаниеСвойства.Поле = Свойство[РеквизитИмениПоля];
		
		Если ДляЧтения Тогда
			
			ДанныеОписания.Свойства.Вставить(ОписаниеСвойства.Поле, ОписаниеСвойства);

		Иначе
			
			ДанныеОписания.Свойства.Вставить(ОписаниеСвойства.Наименование, ОписаниеСвойства);
			
		КонецЕсли;
		
	КонецЦикла;
	
	Возврат ДанныеОписания;
	
КонецФункции

