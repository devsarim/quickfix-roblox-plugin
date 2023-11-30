local ChangeHistoryService = game:GetService("ChangeHistoryService")

local Roact = require(script.Parent.Parent.Roact)

local GetAffectedObjects = require(script.Parent.GetAffectedObjects)

return function(props)
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 32),

		BackgroundTransparency = 1,
	}, {
		Off = Roact.createElement("TextButton", {
			Size = UDim2.new(0.5, -5, 0, 32),
			LayoutOrder = 1,

			FontFace = Font.new(
				"rbxasset://fonts/families/SourceSansPro.json",
				Enum.FontWeight.Bold,
				Enum.FontStyle.Normal
			),
			Text = props.text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 28,

			BackgroundColor3 = Color3.fromRGB(255, 102, 102),
			BorderSizePixel = 0,

			[Roact.Event.MouseButton1Click] = function()
				props.onDisable(GetAffectedObjects(props.predicate))
				ChangeHistoryService:SetWaypoint("Asset Optimizer Action: " .. props.text)
			end,
		}, {
			UICorner = Roact.createElement("UICorner"),

			UIFlexItem = Roact.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill,
			}),
		}),

		On = Roact.createElement("TextButton", {
			Size = UDim2.new(0.5, -5, 0, 32),

			FontFace = Font.new(
				"rbxasset://fonts/families/SourceSansPro.json",
				Enum.FontWeight.Bold,
				Enum.FontStyle.Normal
			),
			Text = props.text,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 28,

			BackgroundColor3 = Color3.fromRGB(38, 217, 100),
			BorderSizePixel = 0,

			[Roact.Event.MouseButton1Click] = function()
				props.onEnable(GetAffectedObjects(props.predicate))
				ChangeHistoryService:SetWaypoint("Asset Optimizer Action: " .. props.text)
			end,
		}, {
			UICorner = Roact.createElement("UICorner"),

			UIFlexItem = Roact.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill,
			}),
		}),

		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 5),
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})
end
