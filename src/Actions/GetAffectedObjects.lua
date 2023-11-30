local Selection = game:GetService("Selection")

return function(predicate: (object: Instance) -> boolean)
	local arrSelection = Selection:Get()
	local nSelection = #arrSelection

	local objects = {}

	if nSelection == 1 then
		for _, object in arrSelection[1]:GetDescendants() do
			if not predicate(object) then
				continue
			end

			table.insert(objects, object)
		end
	elseif nSelection > 1 then
		for _, object in arrSelection do
			if not predicate(object) then
				continue
			end

			table.insert(objects, object)
		end
	end

	return objects
end
