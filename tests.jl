@assert 1 == 1
println("1 = 1: passed")

@assert getblockhash(BTC, 0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
println("Blockhash 0: passed")

@assert getblock(BTC, 1)["nonce"] == getblock(BTC, "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048")["nonce"]
println("getblock(int) == getblock(hash): passed")

@assert getaddress(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")["totalSent"] == "0"
println("Satoshi doesn't spend: passed")

@assert listunspent(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
println("Satoshi has coins: passed")

@assert getbalancehistory(BTC, "12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
println("Satoshi's Transaction History: passed")

@assert gettransaction(BTC, "0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098")["blockhash"] == "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048"
println("Block 1 Transaction: passed")