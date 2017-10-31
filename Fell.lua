--[ Lumber Jack ]--

local tArgs = {...}

for trees = 1,tArgs[1] or 0 do
	if turtle.inspect() == 17 or 162 then
		turtle.dig()
		turtle.forward()
		while turtle.detectUp() do
			turtle.digUp()
			turtle.up()
		end
		while not turtle.detectDown() do
			turtle.down()
		end
		turtle.back()
	end
	turtle.select(1)
	turtle.place()
	turtle.select(2)
	while turtle.inspect() ~= 17 or 162 do
		turtle.place()
	end
end
