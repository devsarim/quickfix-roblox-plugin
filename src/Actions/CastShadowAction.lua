local Roact = require(script.Parent.Parent.Roact)

local DualAction = require(script.Parent.DualAction)

return function()
	return Roact.createElement(DualAction, {
		text = "CastShadow",

		predicate = function(object)
			return object:IsA("BasePart")
		end,

		onDisable = function(objects)
			local count = 0

			for _, descendant in objects do
				if not descendant.CastShadow then
					continue
				end

				descendant.CastShadow = false
				count += 1
			end

			warn("[Asset Optimizer] CastShadow set to false for " .. count .. " objects")
		end,

		onEnable = function(objects)
			local count = 0

			for _, descendant in objects do
				if descendant.CastShadow then
					continue
				end

				descendant.CastShadow = true
				count += 1
			end

			warn("[Asset Optimizer] CastShadow set to true for " .. count .. " objects")
		end,
	})
end
