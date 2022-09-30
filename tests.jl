@assert 1 == 1
println("1 = 1: passed")

@assert getblockhash(0) == "000000000019d6689c085ae165831e934ff763ae46a2a6c172b3f1b60a8ce26f"
println("Blockhash 0: passed")