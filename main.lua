function sendToDiscord(color, name, message, footer)
	local embed = {
		  {
			  ["color"] = color,
			  ["title"] = "**".. name .."**",
			  ["description"] = message,
			  ["footer"] = {
				  ["text"] = footer,
			  },
		  }
	  }
  
	PerformHttpRequest('https://discord.com/api/webhooks/1079081328055697449/dfKx7RQ11jm_ebzt9Sjsg42rIDbY2wBz_2j_OcX8t5LohzskhWDDAtGxZ7k3-8S3p0pr', function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

sendToDiscord(327424, "Bing", "Hello, this is Bing.", "Have a nice day.")

-- OFF
