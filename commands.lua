local addon = select(2, ...)

local function dispatch(text)
	local command, args = text:match('^(%S+)%s*(.*)')
	if command == 'test' then
		addon.runTests(args)
	elseif command == 'focus' then
		addon.tweakFocus(args)
	end
end

_G.SLASH_SAERISDEVTOOLS1 = '/sdt'
_G.SlashCmdList['SAERISDEVTOOLS'] = dispatch
