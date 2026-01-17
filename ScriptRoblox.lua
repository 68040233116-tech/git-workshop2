local prompt = script.Parent:WaitForChild("ProximityPrompt")
local tool_meat = game.ServerStorage:WaitForChild("Tool")

prompt.Triggered:Connect(function(player)
	-- ตรวจสอบว่ามี Character และยังไม่มีไอเทมนี้
	if player.Character and not player.Backpack:FindFirstChild(tool_meat.Name) 
		and not player.Character:FindFirstChild(tool_meat.Name) then

		local tool1 = tool_meat:Clone()

		-- วิธีแก้ไข: ย้ายอุปกรณ์ไปใส่ใน Backpack ของผู้เล่น
		tool1.Parent = player.Backpack 

		-- หรือถ้าอยากให้ถือทันที ให้ใช้บรรทัดนี้แทน:
		-- tool1.Parent = player.Character
	end
end)