function onEvent(n,v1,v2)
	if n == 'DefaultZoom' then
		setProperty('defaultCamZoom',v1)
	end
end