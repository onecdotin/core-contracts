hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --reset --network polygon_mumbai

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'polygon_mumbai'
> Network id:      80001
> Block gas limit: 21144191 (0x142a27f)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xfa1f67ded6e58d8bb31c1543050c939bceed7f40e5c3497824e17f9a7f2ed757
   > Blocks: 2            Seconds: 5
   > contract address:    0x54DEE10cc9F3c57355417C4A0C43d0036Cc71566
   > block number:        22451453
   > block timestamp:     1639072043
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             9.9892515775
   > gas used:            245600 (0x3bf60)
   > gas price:           30 gwei
   > value sent:          0 ETH
   > total cost:          0.007368 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 22451456)
   > confirmation number: 3 (block: 22451458)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:            0.007368 ETH


2_upgradable_onec.js
====================

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0x6aa9e1512b4a142863fc77785cec6ecd50c33b790cc4b697ddee4e77f40360df
   > Blocks: 4            Seconds: 9
   > contract address:    0x4f9B80a86ad5765a15154275fB6d14E2C4b99CcD
   > block number:        22451474
   > block timestamp:     1639072089
   > account:             0x97A87eC2eb408F2941ad04823C0d22F9AC0b16aa
   > balance:             9.9685089175
   > gas used:            645509 (0x9d985)
   > gas price:           30 gwei
   > value sent:          0 ETH
   > total cost:          0.01936527 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 22451479)
Deployed 0x4f9B80a86ad5765a15154275fB6d14E2C4b99CcD

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.01936527 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.02673327 ETH
