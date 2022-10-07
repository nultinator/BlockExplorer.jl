include("Coins.jl")

"""
*API**
### getblock_hash(coin::Coin, block::Int64) -> ::String
------------------
Takes a `Coin` as input and returns the block hash.
#### example
```
println(getblock_hash(BTC, 0))
"000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
```
"""
function getblock_hash(coin::Coin, block::Int64)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block-index/$block")
    return JSON.parse(String(info.body))["blockHash"]::String
end

"""
*API**
### getblock(coin::Coin, blockheight::Int64) -> ::AbstractDict
------------------
Takes a coin, and **NON-ZERO** block hieght as input and returns block data.
#### example
```
print(getblock(BTC, 1))

Dict{String, Any} with 17 entries:
  "time"              => 1231469665
  "difficulty"        => "1"
  ...
```
"""
function getblock(coin::Coin, blockheight::Int64)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block/$blockheight")
    return JSON.parse(String(info.body))::AbstractDict
end

"""
*API**
### getblock(coin::Coin, blockhash::String) -> ::AbstractDict
------------------

#### example
```

```
"""
function getblock(coin::Coin, blockhash::String)
    info::HTTP.Response = HTTP.request("GET",
    "https://$(coin.url)/api/v2/block/$blockhash")
    return JSON.parse(String(info.body))::AbstractDict
end

"""
*API**
### getaddress(coin::Coin, blockhash::String) -> ::AbstractDict
------------------
Takes a `Coin`, an address as input and returns individual data for the address.
#### example
```
print(getaddress(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"))

Dict{String, Any} with 11 entries:
  "itemsOnPage"        => 1000
  "address"            => "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"
  "unconfirmedBalance" => "0"
  "totalReceived"      => "5134884961"
   ...
```
"""
function getaddress(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/address/$address")
    JSON.parse(String(info.body))::AbstractDict
end

"""
*API**
### listunspent(coin::Coin, address::String) -> ::AbstractDict
------------------
Takes a `Coin` and address `String` as input and returns the UTXOs
(unspent transaction outputs) belonging to that address.
#### example
```
print(listunspent(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"))

153-element Vector{Any}:
 Dict{String, Any}("height" => 755662, "vout" => 94, "txid" => "c5f368e33f4be03de149556f462fcd2c732e9024105841a825382c655483f938", "confirmations" => 1132, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "7235")
 Dict{String, Any}("height" => 755539, "vout" => 11, "txid" => "358f305c021c3cd9b54de436dab53fa68b127572f12194a727e92c2ac86cd9b9", "confirmations" => 1255, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "4964")
 Dict{String, Any}("height" => 755496, "vout" => 2, "txid" => "b4a05bfa81f0a845e82917ff83b0fe4736b75c474d4900e91d36bc165a605271", "confirmations" => 1298, "scriptPubKey" => "76a914119b098e2e980a229e139a9ed01a469e518e6f2688ac", "value" => "10000")
  ....
```
"""
function listunspent(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/utxo/$address")
    JSON.parse(String(info.body))::Vector{Any}
end

"""
*API**
### getbalance_history(coin::Coin, blockhash::String) -> ::AbstractDict
------------------

#### example
```
print(getbalancehistory(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX"))

144-element Vector{Any}:
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1231466400, "received" => "5000000000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1306767600, "received" => "2000000", "txs" => 1)
 Dict{String, Any}("sentToSelf" => "0", "sent" => "0", "time" => 1343131200, "received" => "1337", "txs" => 1)
 ...
```
"""
function getbalance_history(coin::Coin, address::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/balancehistory/$address")
    JSON.parse(String(info.body))::Vector{Any}
end

"""
*API**
### getblock(coin::Coin, blockhash::String) -> ::AbstractDict
------------------

#### example
```
print(gettransaction(BTC, "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098"))

Dict{String, Any} with 14 entries:
  "vout"          => Any[Dict{String, Any}("scriptPubKey"=>Dict{String, Any}("a…
  "time"          => 1231469665
  "blocktime"     => 1231469665
  ...
```
"""
function gettransaction(coin::Coin, txid::String)
    info::HTTP.Response = HTTP.request("GET",
     "https://$(coin.url)/api/v2/tx-specific/$txid")
    JSON.parse(String(info.body))::AbstractDict
end
