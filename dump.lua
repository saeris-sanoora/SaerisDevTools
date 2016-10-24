local addonName, addon = ...

function addon.dump(value)
	_G.UIParentLoadAddOn('Blizzard_DebugTools')
	_G.DevTools_Dump(value)
end

_G.dump = addon.dump
