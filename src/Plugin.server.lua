local Roact = require(script.Parent.Roact)

local Toolbar = plugin:CreateToolbar("QuickFix")

local ToggleGuiButton = Toolbar:CreateButton("QuickFix", "Toggle optimization menu", "rbxassetid://15503962551")
ToggleGuiButton.ClickableWhenViewportHidden = false

local InterfaceInfo = DockWidgetPluginGuiInfo.new(Enum.InitialDockState.Float, false, true, 300, 250, 300, 250)
local Interface = plugin:CreateDockWidgetPluginGui("OptimizationMenu", InterfaceInfo)
Interface.Title = "QuickFix"

ToggleGuiButton.Click:Connect(function()
	Interface.Enabled = not Interface.Enabled
end)

local App = Roact.createElement("Frame", {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,

	Size = UDim2.fromScale(1, 1),
}, {
	UIListLayout = Roact.createElement("UIListLayout", {
		Padding = UDim.new(0, 5),
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	}),

	UIPadding = Roact.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 5),
		PaddingLeft = UDim.new(0, 5),
		PaddingRight = UDim.new(0, 5),
		PaddingTop = UDim.new(0, 5),
	}),

	Selected = Roact.createElement(require(script.Parent.SelectedObject)),

	Actions = Roact.createElement(require(script.Parent.Actions)),
})

Roact.mount(App, Interface, "Wrapper")
