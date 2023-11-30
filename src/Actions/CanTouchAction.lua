local Roact = require(script.Parent.Parent.Roact)

local DualAction = require(script.Parent.DualAction)

return function()
	return Roact.createElement(DualAction, {
		text = "CanTouch",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onDisable = function(objects)
			local count = 0

			for _, descendant in objects do
				if not descendant.CanTouch then
					continue
				end

				descendant.CanTouch = false
				count += 1
			end

			warn("[Asset Optimizer] CanTouch set to false for " .. count .. " objects")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.CanTouch then
					continue
				end

				descendant.CanTouch = true
				count += 1
			end

			warn("[Asset Optimizer] CanTouch set to true for " .. count .. " objects")
		end,
	})
end
