local Selection = game:GetService("Selection")

local Roact = require(script.Parent.Parent.Roact)

local SingleAction = require(script.Parent.SingleAction)

return function()
	return Roact.createElement(SingleAction, {
		text = "Select MeshParts",

		predicate = function(object)
			return object:IsA("MeshPart")
		end,

		onEnable = function(objects)
			if #objects > 0 then
				Selection:Set(objects)
			end
		end,
	})
end
