hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --reset --network bsc_testnet   

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'bsc_testnet'
> Network id:      97
> Block gas limit: 30000000 (0x1c9c380)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x9f3048553e32f3b750b21567352714ed1f0ff0bf365e13b530bbf593fb6ecb59
   > Blocks: 2            Seconds: 9
   > contract address:    0xC15906A8A6ea5A9315244d14eE282aAF54D042D3
   > block number:        14830019
   > block timestamp:     1639072199
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             0.497347
   > gas used:            244300 (0x3ba4c)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.002443 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14830022)
   > confirmation number: 3 (block: 14830023)
   > confirmation number: 4 (block: 14830024)
   > confirmation number: 6 (block: 14830026)
   > confirmation number: 7 (block: 14830027)
   > confirmation number: 8 (block: 14830028)
   > confirmation number: 10 (block: 14830030)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:            0.002443 ETH


2_upgradable_onec.js
====================

   Deploying 'Onec'
   ----------------
   > transaction hash:    0xc4a8c6876f745cdaf1af835c1bfb53a59268b8de4c61e5f06d7767b9b8bb4220
   > Blocks: 3            Seconds: 9
   > contract address:    0x9a763635285e9A612eD102083C42f1c2d60647D7
   > block number:        14830037
   > block timestamp:     1639072253
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             0.45720342
   > gas used:            3971845 (0x3c9b05)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.03971845 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14830040)
   > confirmation number: 3 (block: 14830041)
   > confirmation number: 5 (block: 14830043)
   > confirmation number: 6 (block: 14830044)
   > confirmation number: 7 (block: 14830045)
   > confirmation number: 9 (block: 14830047)
   > confirmation number: 10 (block: 14830048)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0x6d43fa8290f4f17383a7a3df21ed7629a12135e8d30842cbd7236244b4ec36c9
   > Blocks: 3            Seconds: 9
   > contract address:    0x54DEE10cc9F3c57355417C4A0C43d0036Cc71566
   > block number:        14830054
   > block timestamp:     1639072304
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             0.45070933
   > gas used:            649409 (0x9e8c1)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00649409 ETH

   Pausing for 10 confirmations...
   -------------------------------
   > confirmation number: 2 (block: 14830057)
   > confirmation number: 3 (block: 14830058)
   > confirmation number: 5 (block: 14830060)
   > confirmation number: 6 (block: 14830061)
   > confirmation number: 7 (block: 14830062)
   > confirmation number: 8 (block: 14830063)
   > confirmation number: 10 (block: 14830065)
Deployed 0x54DEE10cc9F3c57355417C4A0C43d0036Cc71566

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.04621254 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.04865554 ETH
