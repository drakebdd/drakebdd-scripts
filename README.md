Всем привет! х)
С вами маленькая лапка с ее скриптами
репозиторий содержит следующие файлы
1 глобальный скрипт для моего настольника, с ремапон некоторых клавиш и чешской раскладкой - insertver.ahk
2 скрипты для Rust вида rustver.ahk
3 оптимизационный конфиг для Rust client.cfg , кидать в  D:\steam\SteamApps\common\rust\cfg или где там у вас лежит раст.

В проекте
переписать скрипт для раста в функциональной парадигме
4 перенести в репозиторий прошивку и ПО коутера
5 создать отдельный скрипт для ноутбука
6 перенести сюда конфиги доты и кс( в том числе ахкшные)


Подробнее о rustver.ahk

Файл интерпретируется скриптовой машиной autohotkey
Содержит в себе следующие секции
1 секцию глобальных директив
2 секцию глобальных переменных
2.1 Секцию настроек. 
в зависимости от разрешения экрана нужно выставить значения xhelmet yhelmet для скрипта на перенос вещей
clickdelay,	enterdelay, f1delay - задержки, их нужно увеличить если скрипт неуспевает совершить заданные действия
2.2 Секцию констант
2.3 Секцию счетчиков
3 Бинды, привязки к клавишам
3.1 перетаскивание вещей из ящика и в ящик.
пока реализованы следующие варианты - перемещение из ящика в нижние две строки инвентаря(F3), в верхние две(Alt+F3), обратно(F4)
перемещение в ящик надетой брони, всех 6 быстрых слотов и 2 слотов инвентаря(F5) и обратно(F6)
рекомендую попробывать нажать F6 при открытом пустом ящике и насладиться приятным зрелищем.
3.2 Скрипты которые пишут в чат и консоль
суицид(Alt+F11)
Location(F2)
Remove(Alt+F2)
ShowDamage(Shift+F2,Shift+Alt+F2)
tpa Troyan(F7)
tpaccept(F8)
3.3 Переназначение клавиш
Капс для вечного бега(внимание очень бажный)
Переназначение колесика( помните что вам им еще сундуки проличтывать)


