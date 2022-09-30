using HTTP
using JSON

function getblockhash(block)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/block-index/$block")
    return JSON.parse(String(info.body))["blockHash"]
end