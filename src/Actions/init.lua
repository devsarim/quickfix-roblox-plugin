local Roact = require(script.Parent.Roact)

return function()
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, -37),
		LayoutOrder = 1,

		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		CanvasSize = UDim2.new(),
		ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0),
		ScrollBarThickness = 0,

		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		CanQuery = Roact.createElement(require(script.CanQueryAction)),
		CanTouch = Roact.createElement(require(script.CanTouchAction)),
		CastShadow = Roact.createElement(require(script.CastShadowAction)),
		CanCollide = Roact.createElement(require(script.CanCollideAction)),
		Anchored = Roact.createElement(require(script.AnchoredAction)),

		SelectMeshParts = Roact.createElement(require(script.SelectMeshPartsAction)),
		SelectParts = Roact.createElement(require(script.SelectPartsAction)),
		SmoothPlastic = Roact.createElement(require(script.SmoothPlasticAction)),
	})
end
