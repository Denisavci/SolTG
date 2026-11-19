(set-logic HORN)

(declare-datatypes ((|state_type| 0)) (((|state_type| (|balances| (Array Int Int))))))
(declare-datatypes ((|bytes_tuple| 0)) (((|bytes_tuple| (|bytes_tuple_accessor_array| (Array Int Int)) (|bytes_tuple_accessor_length| Int)))))
(declare-datatypes ((|tx_type| 0)) (((|tx_type| (|block.basefee| Int) (|block.chainid| Int) (|block.coinbase| Int) (|block.difficulty| Int) (|block.gaslimit| Int) (|block.number| Int) (|block.timestamp| Int) (|blockhash| (Array Int Int)) (|msg.data| |bytes_tuple|) (|msg.sender| Int) (|msg.sig| Int) (|msg.value| Int) (|tx.gasprice| Int) (|tx.origin| Int)))))
(declare-datatypes ((|ecrecover_input_type| 0)) (((|ecrecover_input_type| (|hash| Int) (|v| Int) (|r| Int) (|s| Int)))))
(declare-datatypes ((|crypto_type| 0)) (((|crypto_type| (|ecrecover| (Array |ecrecover_input_type| Int)) (|keccak256| (Array |bytes_tuple| Int)) (|ripemd160| (Array |bytes_tuple| Int)) (|sha256| (Array |bytes_tuple| Int))))))
(declare-datatypes ((|abi_type| 0)) (((|abi_type|))))
(declare-datatypes ((|tuple$$| 0)) (((|tuple$$|))))
(declare-fun |interface_0_Context_10_0| (Int |abi_type| |crypto_type| |state_type| ) Bool)
(declare-fun |nondet_interface_1_Context_10_0| (Int Int |abi_type| |crypto_type| |state_type| |state_type| ) Bool)
(declare-fun |summary_constructor_2_Context_10_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (state_0 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (= error_0 0) (nondet_interface_1_Context_10_0 error_0 this_0 abi_0 crypto_0 state_0 state_0))))


(declare-fun |summary_3_function__msgSender__9_10_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| Int ) Bool)
(declare-fun |interface_4_Ownable_74_0| (Int |abi_type| |crypto_type| |state_type| Int ) Bool)
(declare-fun |nondet_interface_5_Ownable_74_0| (Int Int |abi_type| |crypto_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_constructor_6_Ownable_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_owner_14_0 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (state_0 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (= error_0 0) (nondet_interface_5_Ownable_74_0 error_0 this_0 abi_0 crypto_0 state_0 _owner_14_0 state_0 _owner_14_0))))


(declare-fun |summary_7_function__msgSender__9_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |summary_8_constructor_47_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |summary_9_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |summary_10_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (nondet_interface_5_Ownable_74_0 error_0 this_0 abi_0 crypto_0 state_0 _owner_14_0 state_1 _owner_14_1) true) (and (= error_0 0) (summary_10_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 _owner_14_1 state_2 _owner_14_2 _50_1))) (nondet_interface_5_Ownable_74_0 error_1 this_0 abi_0 crypto_0 state_0 _owner_14_0 state_2 _owner_14_2))))


(declare-fun |summary_11_function__transferOwnership__73_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |block_12_function__msgSender__9_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |block_13__msgSender_8_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(block_12_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_12_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) true) true)) true) (block_13__msgSender_8_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1))))


(declare-fun |block_14_return_function__msgSender__9_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_13__msgSender_8_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1) (and (= _3_2 expr_6_1) (and (=> true (and (>= expr_6_1 0) (<= expr_6_1 1461501637330902918203684832716283019655932542975))) (and (= expr_6_1 (|msg.sender| tx_0)) (and (= _3_1 0) true))))) true) (block_14_return_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_2))))


(declare-fun |block_15_return_ghost__msgSender_7_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_15_return_ghost__msgSender_7_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_2) (and (= _3_2 expr_6_1) (and (=> true (and (>= expr_6_1 0) (<= expr_6_1 1461501637330902918203684832716283019655932542975))) (and (= expr_6_1 (|msg.sender| tx_0)) (and (= _3_1 0) true))))) true) (block_14_return_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_14_return_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1) true) true) (summary_7_function__msgSender__9_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _3_1))))


(declare-fun |block_16_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |block_17_owner_58_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(block_16_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_16_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) true) true)) true) (block_17_owner_58_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1))))


(declare-fun |block_18_return_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |block_19_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_17_owner_58_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (and (= expr_53_0 true) (and (= _50_1 0) true))) (and (not expr_53_0) (= error_1 1))) (block_19_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (block_19_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (summary_9_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_17_owner_58_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (and (= _50_2 expr_56_0) (and (=> true (and (>= expr_56_0 0) (<= expr_56_0 1461501637330902918203684832716283019655932542975))) (and (= expr_56_0 _owner_14_1) (and (= error_1 error_0) (and (= expr_53_0 true) (and (= _50_1 0) true))))))) true) (block_18_return_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_2))))


(declare-fun |block_20_return_ghost_owner_57_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_20_return_ghost_owner_57_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_2) (and (= _50_2 expr_56_0) (and (=> true (and (>= expr_56_0 0) (<= expr_56_0 1461501637330902918203684832716283019655932542975))) (and (= expr_56_0 _owner_14_1) (and (= error_1 error_0) (and (= expr_53_0 true) (and (= _50_1 0) true))))))) true) (block_18_return_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_18_return_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) true) true) (summary_9_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1))))


(declare-fun |block_21_function_owner__59_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(block_21_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_21_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (and (summary_9_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_2 _owner_14_1 state_3 _owner_14_2 _50_1) (and (= state_2 (|state_type| (store (|balances| state_1) this_0 (+ (select (|balances| state_1) this_0) funds_2_0)))) (and (and (>= (+ (select (|balances| state_1) this_0) funds_2_0) 0) (<= (+ (select (|balances| state_1) this_0) funds_2_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= funds_2_0 (|msg.value| tx_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (and (and (and (and (and (= (|msg.value| tx_0) 0) (= (|msg.sig| tx_0) 2376452955)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 0) 141)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 1) 165)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 2) 203)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 3) 91)) (>= (|bytes_tuple_accessor_length| (|msg.data| tx_0)) 4))) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) true) true))))))) true) (summary_10_function_owner__59_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_3 _owner_14_2 _50_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_1 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (interface_4_Ownable_74_0 this_0 abi_0 crypto_0 state_0 _owner_14_0) true) (and (summary_10_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (= error_0 0))) (interface_4_Ownable_74_0 this_0 abi_0 crypto_0 state_1 _owner_14_1))))


(declare-fun |block_22_function__transferOwnership__73_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int ) Bool)
(declare-fun |block_23__transferOwnership_72_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(block_22_function__transferOwnership__73_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1 oldOwner_65_1)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_6_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_22_function__transferOwnership__73_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1 oldOwner_65_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) (and true (= newOwner_61_1 newOwner_61_0))) true)) true) (block_23__transferOwnership_72_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1 oldOwner_65_1))))


(declare-fun |block_24_return_function__transferOwnership__73_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_23__transferOwnership_72_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1 oldOwner_65_1) (and (= _owner_14_2 expr_70_1) (and (=> true (and (>= expr_70_1 0) (<= expr_70_1 1461501637330902918203684832716283019655932542975))) (and (= expr_70_1 expr_69_0) (and (=> true (and (>= expr_68_0 0) (<= expr_68_0 1461501637330902918203684832716283019655932542975))) (and (= expr_68_0 _owner_14_1) (and (=> true (and (>= expr_69_0 0) (<= expr_69_0 1461501637330902918203684832716283019655932542975))) (and (= expr_69_0 newOwner_61_1) (and (= oldOwner_65_2 expr_66_0) (and (=> true (and (>= expr_66_0 0) (<= expr_66_0 1461501637330902918203684832716283019655932542975))) (and (= expr_66_0 _owner_14_1) (and (and (>= newOwner_61_1 0) (<= newOwner_61_1 1461501637330902918203684832716283019655932542975)) (and (= oldOwner_65_1 0) true))))))))))))) true) (block_24_return_function__transferOwnership__73_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_2 newOwner_61_1 oldOwner_65_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_24_return_function__transferOwnership__73_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1 oldOwner_65_1) true) true) (summary_11_function__transferOwnership__73_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_1 _owner_14_1 newOwner_61_1))))


(declare-fun |block_25_constructor_47_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |block_26__46_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(block_25_constructor_47_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_25_constructor_47_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) (and true (= initialOwner_24_1 initialOwner_24_0))) true)) true) (block_26__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(declare-fun |block_27_return_constructor_47_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |block_28_if_header__41_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |block_29_if_true__40_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |block_30__46_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_26__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (and (>= initialOwner_24_1 0) (<= initialOwner_24_1 1461501637330902918203684832716283019655932542975)) true)) true) (block_28_if_header__41_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_28_if_header__41_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (= expr_32_1 (= expr_27_0 expr_31_1)) (and (=> true (and (>= expr_31_1 0) (<= expr_31_1 1461501637330902918203684832716283019655932542975))) (and (= expr_31_1 expr_30_0) (and (=> true true) (and (= expr_30_0 0) (and (=> true (and (>= expr_27_0 0) (<= expr_27_0 1461501637330902918203684832716283019655932542975))) (and (= expr_27_0 initialOwner_24_1) true)))))))) expr_32_1) (block_29_if_true__40_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_28_if_header__41_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (= expr_32_1 (= expr_27_0 expr_31_1)) (and (=> true (and (>= expr_31_1 0) (<= expr_31_1 1461501637330902918203684832716283019655932542975))) (and (= expr_31_1 expr_30_0) (and (=> true true) (and (= expr_30_0 0) (and (=> true (and (>= expr_27_0 0) (<= expr_27_0 1461501637330902918203684832716283019655932542975))) (and (= expr_27_0 initialOwner_24_1) true)))))))) (not expr_32_1)) (block_30__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_29_if_true__40_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (=> true (and (>= expr_37_1 0) (<= expr_37_1 1461501637330902918203684832716283019655932542975))) (and (= expr_37_1 expr_36_0) (and (=> true true) (and (= expr_36_0 0) true))))) true) (block_30__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(declare-fun |summary_31_function__transferOwnership__73_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (summary_11_function__transferOwnership__73_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_2 _owner_14_2 newOwner_61_2) (summary_31_function__transferOwnership__73_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 newOwner_61_0 state_2 _owner_14_2 newOwner_61_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_30__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (summary_31_function__transferOwnership__73_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 _owner_14_1 expr_43_0 state_2 _owner_14_2 newOwner_61_2) (and (=> true (and (>= expr_43_0 0) (<= expr_43_0 1461501637330902918203684832716283019655932542975))) (and (= expr_43_0 initialOwner_24_1) true)))) (> error_1 0)) (summary_8_constructor_47_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_2 _owner_14_2 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_30__46_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (= error_1 0) (and (summary_31_function__transferOwnership__73_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 _owner_14_1 expr_43_0 state_2 _owner_14_2 newOwner_61_2) (and (=> true (and (>= expr_43_0 0) (<= expr_43_0 1461501637330902918203684832716283019655932542975))) (and (= expr_43_0 initialOwner_24_1) true))))) true) (block_27_return_constructor_47_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_2 _owner_14_2 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (block_27_return_constructor_47_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) true) true) (summary_8_constructor_47_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(declare-fun |contract_initializer_32_Ownable_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(declare-fun |contract_initializer_entry_33_Ownable_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) (and true (= initialOwner_24_1 initialOwner_24_0))) (contract_initializer_entry_33_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(declare-fun |contract_initializer_after_init_34_Ownable_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (contract_initializer_entry_33_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) true) true) (contract_initializer_after_init_34_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (contract_initializer_after_init_34_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (summary_8_constructor_47_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 _owner_14_1 initialOwner_24_1 state_2 _owner_14_2 initialOwner_24_2) true)) (> error_1 0)) (contract_initializer_32_Ownable_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_2 _owner_14_2 initialOwner_24_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (contract_initializer_after_init_34_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_1) (and (= error_1 0) (and (summary_8_constructor_47_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 _owner_14_1 initialOwner_24_1 state_2 _owner_14_2 initialOwner_24_2) true))) true) (contract_initializer_32_Ownable_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_2 _owner_14_2 initialOwner_24_2))))


(declare-fun |contract_initializer_35_Context_10_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(declare-fun |contract_initializer_entry_36_Context_10_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (= state_2 state_0) (= error_1 0)) true) (contract_initializer_entry_36_Context_10_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(declare-fun |contract_initializer_after_init_37_Context_10_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (contract_initializer_entry_36_Context_10_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (contract_initializer_after_init_37_Context_10_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (contract_initializer_after_init_37_Context_10_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (contract_initializer_35_Context_10_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |implicit_constructor_entry_38_Ownable_74_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int ) Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= _owner_14_1 _owner_14_0))) (and true (= initialOwner_24_2 initialOwner_24_0))) (and true (= _owner_14_1 0))) (>= (select (|balances| state_1) this_0) (|msg.value| tx_0))) (implicit_constructor_entry_38_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (implicit_constructor_entry_38_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_2) (and (contract_initializer_35_Context_10_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true)) (> error_1 0)) (summary_constructor_6_Ownable_74_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_2 _owner_14_1 initialOwner_24_2))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (initialOwner_24_3 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (implicit_constructor_entry_38_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_2) (and (contract_initializer_32_Ownable_74_0 error_2 this_0 abi_0 crypto_0 tx_0 state_2 _owner_14_1 initialOwner_24_2 state_3 _owner_14_2 initialOwner_24_3) (and (= error_1 0) (and (contract_initializer_35_Context_10_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true)))) (> error_2 0)) (summary_constructor_6_Ownable_74_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_3 _owner_14_2 initialOwner_24_3))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (initialOwner_24_3 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (implicit_constructor_entry_38_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_2) (and (= error_2 0) (and (contract_initializer_32_Ownable_74_0 error_2 this_0 abi_0 crypto_0 tx_0 state_2 _owner_14_1 initialOwner_24_2 state_3 _owner_14_2 initialOwner_24_3) (and (= error_1 0) (and (contract_initializer_35_Context_10_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true))))) true) (summary_constructor_6_Ownable_74_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_3 _owner_14_2 initialOwner_24_3))))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (initialOwner_24_3 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (summary_constructor_6_Ownable_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 initialOwner_24_0 state_1 _owner_14_1 initialOwner_24_3) true) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (= (|msg.value| tx_0) 0)) (= error_0 0))) (interface_4_Ownable_74_0 this_0 abi_0 crypto_0 state_1 _owner_14_1))))


(declare-fun |error_target_3_0| () Bool)
(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (initialOwner_24_3 Int) (initialOwner_24_4 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (newOwner_61_3 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (and (and (interface_4_Ownable_74_0 this_0 abi_0 crypto_0 state_0 _owner_14_0) true) (and (summary_10_function_owner__59_74_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 _owner_14_0 state_1 _owner_14_1 _50_1) (= error_0 1))) error_target_3_0)))


(assert
(forall ( (_3_0 Int) (_3_1 Int) (_3_2 Int) (_50_0 Int) (_50_1 Int) (_50_2 Int) (_owner_14_0 Int) (_owner_14_1 Int) (_owner_14_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_27_0 Int) (expr_30_0 Int) (expr_31_1 Int) (expr_32_1 Bool) (expr_36_0 Int) (expr_37_1 Int) (expr_43_0 Int) (expr_44_1 |tuple$$|) (expr_53_0 Bool) (expr_56_0 Int) (expr_66_0 Int) (expr_68_0 Int) (expr_69_0 Int) (expr_6_1 Int) (expr_70_1 Int) (funds_2_0 Int) (initialOwner_24_0 Int) (initialOwner_24_1 Int) (initialOwner_24_2 Int) (initialOwner_24_3 Int) (initialOwner_24_4 Int) (newOwner_61_0 Int) (newOwner_61_1 Int) (newOwner_61_2 Int) (newOwner_61_3 Int) (oldOwner_65_0 Int) (oldOwner_65_1 Int) (oldOwner_65_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> error_target_3_0 false)))
(check-sat)
