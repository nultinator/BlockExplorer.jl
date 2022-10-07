include("Coins.jl")

function getblock_hash(coin::Coin, block::Int64)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block-index/$block")
    return JSON.parse(String(info.body))["blockHash"]::String
end

function getblock(coin::Coin, blockheight::Int64)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block/$blockheight")
    return JSON.parse(String(info.body))::AbstractDict
end

function getblock(coin::Coin, blockhash::String)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block/$blockhash")
    return JSON.parse(String(info.body))::AbstractDict
end

function getaddress(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/address/$address")
    return JSON.parse(String(info.body))::AbstractDict
end

function listunspent(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/utxo/$address")
    return JSON.parse(String(info.body))::AbstractDict
end

function getbalance_history(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/balancehistory/$address")
    return JSON.parse(String(info.body))::AbstractDict
end

function gettransaction(coin::Coin, txid::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/tx-specific/$txid")
    return JSON.parse(String(info.body))::AbstractDict
end
