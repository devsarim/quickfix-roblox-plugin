local Selection = game:GetService("Selection")

local Roact = require(script.Parent.Roact)

return function()
	local selectedObject, setSelectedObject
	do
		selectedObject, setSelectedObject = Roact.createBinding()
	end

	Selection.SelectionChanged:Connect(function()
		setSelectedObject(Selection:Get()[1])
	end)

	return Roact.createElement("TextLabel", {
		Size = UDim2.new(1, 0, 0, 32),

		FontFace = Font.new(
			"rbxasset://fonts/families/SourceSansPro.json",
			Enum.FontWeight.Bold,
			Enum.FontStyle.Normal
		),
		Text = selectedObject:map(function(object)
			if object then
				return object.Name
			else
				return "[Select an object]"
			end
		end),

		TextColor3 = selectedObject:map(function(object)
			if object then
				return Color3.new(1, 1, 1)
			else
				return Color3.fromRGB(170, 170, 170)
			end
		end),

		TextSize = 28,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		UICorner = Roact.createElement("UICorner"),
	})
end
