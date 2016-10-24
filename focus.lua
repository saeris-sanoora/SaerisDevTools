local addonName, addon = ...

local kCommandHandlers = {
	details = function(elem)
		return elem
	end,
	width = function(elem, width)
		local numericWidth = tonumber(width)
		if numericWidth then
			elem:SetWidth(numericWidth)
		end
		return { width = elem:GetWidth() }
	end,
	height = function(elem, height)
		local numericHeight = tonumber(height)
		if numericHeight then
			elem:SetHeight(numericHeight)
		end
		return { height = elem:GetHeight() }
	end,
}

function addon.tweakFocus(how)
	local elem = _G.GetMouseFocus()
	local message = '%s: focus="%s", request="%s", result follows'
	print(message:format(addonName, elem:GetName(), how))
	local command, args = how:match('^(%S+)%s*(.*)')
	if command then
		local handler = kCommandHandlers[command]
		local result = 'unknown command'
		if handler then
			result = handler(elem, args)
		end
		addon.dump(result)
	end
end
