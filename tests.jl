@assert 1 == 1
println("1 = 1: passed")

@assert getblockhash(0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
println("Blockhash 0: passed")

@assert getblock(1)["nonce"] == getblock("00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048")["nonce"]
println("getblock(int) == getblock(hash): passed")

@assert getaddress("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX")["totalSent"] == "0"
println("Satoshi doesn't spend: passed")

@assert listunspent("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
println("Satoshi has coins: passed")

@assert getbalancehistory("12c6DSiU4Rq3P4ZxziKxzrL5LmMBrzjrJX") != 0
println("Satoshi's Transaction History: passed")

@assert gettransaction("0e3e2357e806b6cdb1f70b54c3a3a17b6714ee1f0e68bebb44a74b1efd512098")["blockhash"] == "00000000839a8e6886ab5951d76f411475428afc90947ee320161bbf18eb6048"
println("Block 1 Transaction: passed")