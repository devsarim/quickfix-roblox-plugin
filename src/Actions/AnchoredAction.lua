local Roact = require(script.Parent.Parent.Roact)

local DualAction = require(script.Parent.DualAction)

return function()
	return Roact.createElement(DualAction, {
		text = "Anchored",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onDisable = function(objects)
			local count = 0

			for _, descendant in objects do
				if not descendant.Anchored then
					continue
				end

				descendant.Anchored = false
				count += 1
			end

			warn("[Asset Optimizer] Anchored set to false for " .. count .. " objects")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.Anchored then
					continue
				end

				descendant.Anchored = true
				count += 1
			end

			warn("[Asset Optimizer] Anchored set to true for " .. count .. " objects")
		end,
	})
end
