--quick script that puts the camera on the opponents/bfs section on the opposite section (sounds confusing but yeah)
--made by me (pokey)

local forcecambf = false
local forcecamdad = false

function onUpdate()
	if forcecambf == true then
		cameraSetTarget('boyfriend');
	end
	if forcecamdad == true then
		cameraSetTarget('dad');
	end
end

function onEvent(n,value1,value2)
	if n == 'FocusCamera' then

		if value1 == 'bf' then
			forcecambf = true
			forcecamdad = false
		end
		if value1 == 'dad' then
			forcecamdad = true
			forcecambf = false
		end
		if value2 == 'true' then
			forcecambf = false
			forcecamdad = false
		end
	end
end

function onUpdatePost()

end