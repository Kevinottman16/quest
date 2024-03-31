-- PID: Delgnb0Q6iClWbWf9KYEX5NzsznqPETrOUf7krn1-Ls
-- IDE: https://ide.betteridea.dev/?getcode=Delgnb0Q6iClWbWf9KYEX5NzsznqPETrOUf7krn1-Ls
_0RBIT = "WSXUI2JjYUldJ7CKq9wE1MGwXs-ldzlUlHOQszwQe0s"

Handlers.add("Kevinottman16", -- change this (username)
    Handlers.utils.hasMatchingTag("Action", "Kevinottman16-github"), -- change this too (tagname)
    function(msg)
        local token = msg.Tags.Token 
        local currency = msg.Tags.Currency
        local url = "https://api.coingecko.com/api/v3/simple/price?ids=" .. token .. "&vs_currencies=" .. currency
        ao.send({
            Target = _0RBIT,
            Action = "Get-Real-Data",
            Url = url 
        }) 
        Handlers.utils.reply("PriceFetch")(msg)
    end
)
