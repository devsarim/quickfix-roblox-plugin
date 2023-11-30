local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Roact = require(script.Parent.Parent.Roact)

local GetAffectedObjects = require(script.Parent.GetAffectedObjects)

return function(props)
	return Roact.createElement("TextButton", {
		Size = UDim2.new(1, 0, 0, 32),
		LayoutOrder = 1,

		BackgroundColor3 = Color3.fromRGB(76, 188, 255),
		BorderSizePixel = 0,

		FontFace = Font.new(
			"rbxasset://fonts/families/SourceSansPro.json",
			Enum.FontWeight.Bold,
			Enum.FontStyle.Normal
		),
		Text = props.text,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 28,

		[Roact.Event.MouseButton1Click] = function()
			props.onEnable(GetAffectedObjects(props.predicate))
			ChangeHistoryService:SetWaypoint("Asset Optimizer Action: " .. props.text)
		end,
	}, {
		UICorner = Roact.createElement("UICorner"),
	})
end
