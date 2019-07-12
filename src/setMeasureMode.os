#Использовать 1connector

Если АргументыКоманднойСтроки.Количество() > 0 
	И АргументыКоманднойСтроки[0] = "start" Тогда
	ПутьКШаблону = "./fixtures/bodySamples/debugon.xml";
Иначе
	ПутьКШаблону = "./fixtures/bodySamples/debugoff.xml";	
КонецЕсли;	

Чтение = Новый ЧтениеТекста(ПутьКШаблону);
Тело = Чтение.Прочитать();
Чтение.Закрыть();

Заголовки = Новый Соответствие();
Заголовки.Вставить("accept-charset", "utf-8");
Заголовки.Вставить("content-type", "application/xml");

АдрессДебагера = ПолучитьПеременнуюСреды("debuggerURL");

Результат = КоннекторHTTP.Post(
	АдрессДебагера + "/e1crdbg/rdbg?cmd=setMeasureMode",
	Тело,
	, 
	Новый Структура("Заголовки", Заголовки));
