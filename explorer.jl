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