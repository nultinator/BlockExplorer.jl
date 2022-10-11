module BlockExplorer
using HTTP
using JSON

include("API.jl")

# coins
export Coin, BTC, BCH, LTC, YEC, ZEC
# api
export getblockcount, getblock_hash, getblock, getaddress, listunspent, getbalance_history
export gettransaction
end # module
