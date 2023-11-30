local Roact = require(script.Parent.Parent.Roact)

local DualAction = require(script.Parent.DualAction)

return function()
	return Roact.createElement(DualAction, {
		text = "CanQuery",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onDisable = function(objects)
			local count = 0

			for _, descendant in objects do
				if not descendant.CanQuery then
					continue
				end

				descendant.CanQuery = false
				count += 1
			end

			warn("[Asset Optimizer] CanQuery set to false for " .. count .. " objects")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.CanQuery then
					continue
				end

				descendant.CanQuery = true
				count += 1
			end

			warn("[Asset Optimizer] CanQuery set to true for " .. count .. " objects")
		end,
	})
end
