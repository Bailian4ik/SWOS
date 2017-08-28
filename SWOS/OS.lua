forms=require("forms")
local shell = require("shell")

shell.execute("resolution 160 42");
 
Form1=forms.addForm()          -- создаем основную форму
 
exitForm=forms.addForm()       -- и форму диалога выхода
exitForm.border=2
exitForm.W=31
exitForm.H=7
exitForm.left=math.floor((Form1.W-exitForm.W)/2)
exitForm.top =math.floor((Form1.H-exitForm.H)/2)
exitForm:addLabel(8,3,"Вы хотите выйти?")
exitForm:addButton(5,5,"Да",function() forms.stop() end)
exitForm:addButton(18,5,"Нет",function() Form1:setActive() end)
 
Btn1=Form1:addButton(65,21,"Выход",function() exitForm:setActive() end) -- создаем кнопку выхода
Btn1.color=0x505050                       -- задаем цвет кнопки
 
forms.run(Form1)               --запускаем gui 