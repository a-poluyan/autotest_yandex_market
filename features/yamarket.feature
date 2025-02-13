# language: ru
@all @GUI
Функционал: Теститорвание Yandex Market

    Предыстория: Предусловия для проведения тестирования
        Допустим открыли браузер Google Chrome
        И перешли по адресу "https://market.yandex.ru"
        То находимся на странице "Яндекс Маркет"
        И вводим в поле "строка_поиска" значение "Смартфоны" для поиска
        И кликаем на "найти"
        То находимся на странице "Мобильные телефоны"

    @all @GUI @search_from
    Сценарий: Проверка поиска поиска по цене на странице «Смартфоны» с диапазоном равным нижнему граничному значению
        Допустим сохранили значения полей "Цена_от" и "Цена_до"
        И вводим в поле "Цена_от" сохраненное значение "Цена_от"
        И вводим в поле "Цена_до" сохраненное значение "Цена_от"
        Тогда должны отобразится смартфоны этого ценового диапазона
        И проверяем что все смартфоны находятся внутри ценового диапазона

    @all @GUI @search_to
    Сценарий: Проверка поиска поиска по цене на странице «Смартфоны» с диапазоном равным верхнему граничному значению
        Допустим сохранили значения полей "Цена_от" и "Цена_до"
        И вводим в поле "Цена_от" сохраненное значение "Цена_до"
        И вводим в поле "Цена_до" сохраненное значение "Цена_до"
        Тогда должны отобразится смартфоны этого ценового диапазона
        И проверяем что все смартфоны находятся внутри ценового диапазона
    
    @all @GUI @search_rand
    Сценарий: Проверка поиска поиска по цене на странице «Смартфоны» со случайным диапазоном
        Допустим сгенерировали случайное число от "0" до "100000" и сохранили как "Цена_от"
        И вводим в поле "Цена_от" сохраненное значение "Цена_от"
        И вводим в поле "Цена_до" значение "Цена_от" плюс "30000"
        Тогда должны отобразится смартфоны этого ценового диапазона
        И проверяем что все смартфоны находятся внутри ценового диапазона
    
    @all @GUI @sort_battery
    Сценарий: Проверка нового вида сортировки «по ёмкости батареи» на странице "Смартфоны»
        Допустим элемент "блок_сортировки" находится на странице
        Тогда проверяем наличие типа "по ёмкости батареи" в элементе "блок_сортировки"
