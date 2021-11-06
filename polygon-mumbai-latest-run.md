hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --network polygon_mumbai

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'polygon_mumbai'
> Network id:      80001
> Block gas limit: 20000000 (0x1312d00)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0xc78a11a50846bd4a61fedd45ab25c8e935330c01d6d91c5e3372e4e767d66c1f
   > Blocks: 4            Seconds: 9
   > contract address:    0x70541888F11EDC3e2942B84e4fcDf6a006Ac5c6A
   > block number:        21121509
   > block timestamp:     1636201778
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.938752648
   > gas used:            245600 (0x3bf60)
   > gas price:           3 gwei
   > value sent:          0 ETH
   > total cost:          0.0007368 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 21121513)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:           0.0007368 ETH


2_upgradable_onec.js
====================

   Deploying 'Onec'
   ----------------
   > transaction hash:    0x13747c06a722941232473a0d15d414de9667324eb4c49ddfe9838f1bc2312dfa
   > Blocks: 4            Seconds: 9
   > contract address:    0xB94127c4C9F1c7A27Dc259A181c05bdf8c0C3f01
   > block number:        21121525
   > block timestamp:     1636201810
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.926699374
   > gas used:            3971845 (0x3c9b05)
   > gas price:           3 gwei
   > value sent:          0 ETH
   > total cost:          0.011915535 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 21121530)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0x551e088a5dd802b4e041272d67909fd5be113a101e99806a236e41e697a26291
   > Blocks: 2            Seconds: 9
   > contract address:    0x01AA2e17A017C573132659bEddE6ae6eC82a47c0
   > block number:        21121536
   > block timestamp:     1636201836
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.924762847
   > gas used:            645509 (0x9d985)
   > gas price:           3 gwei
   > value sent:          0 ETH
   > total cost:          0.001936527 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 21121541)
Deployed 0x01AA2e17A017C573132659bEddE6ae6eC82a47c0

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:         0.013852062 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.014588862 ETH

