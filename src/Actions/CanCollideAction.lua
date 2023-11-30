local Roact = require(script.Parent.Parent.Roact)

local DualAction = require(script.Parent.DualAction)

return function()
	return Roact.createElement(DualAction, {
		text = "CanCollide",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onDisable = function(objects)
			local count = 0

			for _, descendant in objects do
				if not descendant.CanCollide then
					continue
				end

				descendant.CanCollide = false
				count += 1
			end

			warn("[Asset Optimizer] CanCollide set to false for " .. count .. " objects")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.CanCollide then
					continue
				end

				descendant.CanCollide = true
				count += 1
			end

			warn("[Asset Optimizer] CanCollide set to true for " .. count .. " objects")
		end,
	})
end
