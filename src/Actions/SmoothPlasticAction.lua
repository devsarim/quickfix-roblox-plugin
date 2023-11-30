local Roact = require(script.Parent.Parent.Roact)

local SingleAction = require(script.Parent.SingleAction)

return function()
	return Roact.createElement(SingleAction, {
		text = "SmoothPlastic",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.Material == Enum.Material.SmoothPlastic then
					continue
				end

				descendant.Material = Enum.Material.SmoothPlastic
				count += 1
			end

			warn("[Asset Optimizer] Material set to SmoothPlastic for " .. count .. " objects")
		end,
	})
end
