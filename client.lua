RegisterNetEvent('notify', function(text, type, length)
	notify(text, type, length)
end)

function notify(text, texttype, length)
	local ttype = texttype ~= nil and texttype or 'primary'
	local length = length ~= nil and length or 5000
	SendNuiMessage(json.encode({
		action = "show",
		type = ttype,
		length = length,
		text = text,
	}))
end

exports('notify', notify)
-- exports['thommie-notify']:notify(text, type, length)