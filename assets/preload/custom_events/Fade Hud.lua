function onEvent(n,v1,v2)
	if n == 'Fade Hud' then
		doTweenAlpha('fadehud', 'camHUD',v1,v2,'linear')
	end
end

function onUpdate()

end

function onUpdatePost()

end