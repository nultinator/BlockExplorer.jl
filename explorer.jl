using HTTP
using JSON

include("coins.jl")

function getblockhash(coin::Coin, block::Int64)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/block-index/$block")
    return JSON.parse(String(info.body))["blockHash"]
end

function getblock(coin::Coin, blockheight::Int64)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/block/$blockheight")
    return JSON.parse(String(info.body))
end

function getblock(coin::Coin, blockhash::String)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/block/$blockhash")
    return JSON.parse(String(info.body))
end

function getaddress(coin::Coin, address::String)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/address/$address")
    return JSON.parse(String(info.body))
end

function listunspent(coin::Coin, address::String)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/utxo/$address")
    return JSON.parse(String(info.body))
end

function getbalancehistory(coin::Coin, address::String)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/balancehistory/$address")
    return JSON.parse(String(info.body))
end

function gettransaction(coin::Coin, txid::String)
    info = HTTP.request("GET", "https://$(coin.url)/api/v2/tx-specific/$txid")
    return JSON.parse(String(info.body))
end