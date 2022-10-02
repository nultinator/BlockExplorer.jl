using HTTP
using JSON

function getblockhash(block::Int64)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/block-index/$block")
    return JSON.parse(String(info.body))["blockHash"]
end

function getblock(blockheight::Int64)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/block/$blockheight")
    return JSON.parse(String(info.body))
end

function getblock(blockhash::String)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/block/$blockhash")
    return JSON.parse(String(info.body))
end

function getaddress(address::String)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/address/$address")
    return JSON.parse(String(info.body))
end

function listunspent(address::String)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/utxo/$address")
    return JSON.parse(String(info.body))
end

function getbalancehistory(address::String)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/balancehistory/$address")
    return JSON.parse(String(info.body))
end

function gettransaction(txid::String)
    info = HTTP.request("GET", "https://bitcoinblockexplorers.com/api/v2/tx-specific/$txid")
    return JSON.parse(String(info.body))
end