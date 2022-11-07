function onCreatePost()
	makeLuaText('fart', (value1), 1250, 0, 480)
	setTextAlignment('fart', 'Center')
	addLuaText('fart')
	setTextSize('fart', 28)
	setObjectCamera('fart','other')
end
function onEvent(name, value1, value2)
	if name == 'NeoKBCaption' then
		setTextString('fart', (value1));
	end
end



--Comical Chaos made this event