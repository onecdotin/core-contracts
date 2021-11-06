hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --network ropsten

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.



Starting migrations...
======================
> Network name:    'ropsten'
> Network id:      3
> Block gas limit: 8000000 (0x7a1200)


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0x8bad1c7231d5b728928b2e9977f1a48d2b4d2acaccdf636f6de53f1b4d95c7a8
   > Blocks: 6            Seconds: 109
   > contract address:    0x175b41d45B1dC56E03fA0a8063858d4915842607
   > block number:        11373429
   > block timestamp:     1636201452
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.243221970011610692
   > gas used:            245600 (0x3bf60)
   > gas price:           1.100123517 gwei
   > value sent:          0 ETH
   > total cost:          0.0002701903357752 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11373430)
   > confirmation number: 2 (block: 11373431)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0002701903357752 ETH


2_upgradable_onec.js
====================

   Deploying 'Onec'
   ----------------
   > transaction hash:    0x95bc3962f3f5d5a238b2efa2c915c332f8e29e7e2454115f59979d67bb8cde65
   > Blocks: 1            Seconds: 9
   > contract address:    0xC09AeEeacc4e6eb03fDE17B298E540b39BFc83cA
   > block number:        11373436
   > block timestamp:     1636201580
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.238801939794100113
   > gas used:            3971845 (0x3c9b05)
   > gas price:           1.100123556 gwei
   > value sent:          0 ETH
   > total cost:          0.00436952024528082 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 11373438)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0xab36ff7e26537a894c11b6ae832e387e19e354cb30880fd7760549c5d67e74e6
   > Blocks: 1            Seconds: 13
   > contract address:    0xFcb5B75F2b51840dC1a220F804c55cd2eaF3eD97
   > block number:        11373439
   > block timestamp:     1636201595
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.238091800138235618
   > gas used:            645509 (0x9d985)
   > gas price:           1.100123555 gwei
   > value sent:          0 ETH
   > total cost:          0.000710139655864495 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 2 (block: 11373441)
Deployed 0xFcb5B75F2b51840dC1a220F804c55cd2eaF3eD97

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.005079659901145315 ETH


Summary
=======
> Total deployments:   3
> Final cost:          0.005349850236920515 ETH
