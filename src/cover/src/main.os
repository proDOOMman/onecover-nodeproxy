# Использовать "."

Процедура Запуститься()

	РазделительПути = ПолучитьРазделительПути();

	ЛогДляРазбора = ПолучитьПеременнуюСреды("proxyResult");
	КаталогИсходников = ПолучитьПеременнуюСреды("srcPatch") ;
	КаталогРезультата = ПолучитьПеременнуюСреды("genericResultDir");
	ПутиКИсходникам = ПолучитьПеременнуюСреды("srcPatch");

	ЧтениеТекста = New ЧтениеТекста(ЛогДляРазбора);

	Конвертор = Новый Конвертор;
	Конвертор.УстановитьФайлКонфигурации(КаталогИсходников);

	Строка = ЧтениеТекста.ПрочитатьСтроку();

	Пока НЕ Строка = Неопределено Цикл 
	
		Конвертор.ПодготовитьЛог(Строка);
	
		Строка = ЧтениеТекста.ПрочитатьСтроку();
	
	КонецЦикла;	

	Конвертор.СохранитьРезультат(КаталогРезультата);

КонецПроцедуры	

Запуститься();