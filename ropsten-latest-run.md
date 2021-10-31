hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % truffle migrate --reset --network ropsten

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

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0xd93e9feb96c60c1270b42e8a1803566d6be128888a8ec5c09e74f209ce527176
   > Blocks: 1            Seconds: 9
   > contract address:    0x80f0ccbbA0f948B8A69f106d807b82bBD322602C
   > block number:        11330375
   > block timestamp:     1635622096
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.274480614124104384
   > gas used:            245600 (0x3bf60)
   > gas price:           1.665944009 gwei
   > value sent:          0 ETH
   > total cost:          0.0004091558486104 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11330376)
   > confirmation number: 2 (block: 11330377)

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.0004091558486104 ETH


2_upgradable_onec.js
====================

   Replacing 'Onec'
   ----------------
   > transaction hash:    0x3a0f3339107f483e34fdd16584d0686b0a92a3ba3d84c41c296b34ad0dd266c0
   > Blocks: 1            Seconds: 9
   > contract address:    0x413FfE9EC57c186CDd28C2D5A0ceE12a72cc65D8
   > block number:        11330380
   > block timestamp:     1635622165
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.268418903589135035
   > gas used:            3592691 (0x36d1f3)
   > gas price:           1.665944009 gwei
   > value sent:          0 ETH
   > total cost:          0.005985222047638219 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11330381)
   > confirmation number: 2 (block: 11330382)

   Deploying 'ProxyAdmin'
   ----------------------
   > transaction hash:    0x6f3b432ffbf6e54f8eb6ecee291dce8debcf355e7a5ccf420707b9fb298f2953
   > Blocks: 1            Seconds: 13
   > contract address:    0x42183Af893CD0D4f2bC472d719D6c20aCe43F30F
   > block number:        11330385
   > block timestamp:     1635622207
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.267612553369898855
   > gas used:            484020 (0x762b4)
   > gas price:           1.665944009 gwei
   > value sent:          0 ETH
   > total cost:          0.00080635021923618 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11330386)
   > confirmation number: 2 (block: 11330387)

   Deploying 'TransparentUpgradeableProxy'
   ---------------------------------------
   > transaction hash:    0xa9699aefb03d7f9be5815f90e1c75c1c3e04a7af47b4ed7c1a55a8d7c22ddc6c
   > Blocks: 3            Seconds: 13
   > contract address:    0x02D3f3Fdc311be6118030DB32E8A7e60801AC8e4
   > block number:        11330388
   > block timestamp:     1635622237
   > account:             0xB1932F9dE39c0633b77F64752f83692aD978cDD9
   > balance:             0.266537171519238783
   > gas used:            645509 (0x9d985)
   > gas price:           1.665944008 gwei
   > value sent:          0 ETH
   > total cost:          0.001075381850660072 ETH

   Pausing for 2 confirmations...
   ------------------------------
   > confirmation number: 1 (block: 11330391)
   > confirmation number: 2 (block: 11330392)
Deployed 0x02D3f3Fdc311be6118030DB32E8A7e60801AC8e4

   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:     0.007866954117534471 ETH


Summary
=======
> Total deployments:   4
> Final cost:          0.008276109966144871 ETH


hrishabhsharma@Hrishabhs-MacBook-Pro core-contract % 
