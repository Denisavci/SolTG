(set-logic HORN)

(declare-datatypes ((|state_type| 0)) (((|state_type| (|balances| (Array Int Int))))))
(declare-datatypes ((|bytes_tuple| 0)) (((|bytes_tuple| (|bytes_tuple_accessor_array| (Array Int Int)) (|bytes_tuple_accessor_length| Int)))))
(declare-datatypes ((|tx_type| 0)) (((|tx_type| (|block.basefee| Int) (|block.chainid| Int) (|block.coinbase| Int) (|block.difficulty| Int) (|block.gaslimit| Int) (|block.number| Int) (|block.timestamp| Int) (|blockhash| (Array Int Int)) (|msg.data| |bytes_tuple|) (|msg.sender| Int) (|msg.sig| Int) (|msg.value| Int) (|tx.gasprice| Int) (|tx.origin| Int)))))
(declare-datatypes ((|ecrecover_input_type| 0)) (((|ecrecover_input_type| (|hash| Int) (|v| Int) (|r| Int) (|s| Int)))))
(declare-datatypes ((|crypto_type| 0)) (((|crypto_type| (|ecrecover| (Array |ecrecover_input_type| Int)) (|keccak256| (Array |bytes_tuple| Int)) (|ripemd160| (Array |bytes_tuple| Int)) (|sha256| (Array |bytes_tuple| Int))))))
(declare-datatypes ((|abi_type| 0)) (((|abi_type|))))
(declare-fun |interface_0_A9_23_0| (Int |abi_type| |crypto_type| |state_type| Int ) Bool)
(declare-fun |nondet_interface_1_A9_23_0| (Int Int |abi_type| |crypto_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_constructor_2_A9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (state_0 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int))
(=> (= error_0 0) (nondet_interface_1_A9_23_0 error_0 this_0 abi_0 crypto_0 state_0 x_2_0 state_0 x_2_0))))


(declare-fun |summary_3_constructor_10_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_4_function_inc9__22_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |summary_5_function_inc9__22_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_1 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int))
(=> (and (and (nondet_interface_1_A9_23_0 error_0 this_0 abi_0 crypto_0 state_0 x_2_0 state_1 x_2_1) true) (and (= error_0 0) (summary_5_function_inc9__22_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_2_1 state_2 x_2_2 _13_1))) (nondet_interface_1_A9_23_0 error_1 this_0 abi_0 crypto_0 state_0 x_2_0 state_2 x_2_2))))


(declare-fun |interface_6_B9_54_0| (Int |abi_type| |crypto_type| |state_type| Int ) Bool)
(declare-fun |nondet_interface_7_B9_54_0| (Int Int |abi_type| |crypto_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_constructor_8_B9_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_1 Int) (a_26_0 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int))
(=> (= error_1 0) (nondet_interface_7_B9_54_0 error_1 this_0 abi_0 crypto_0 state_0 a_26_0 state_0 a_26_0))))


(declare-fun |summary_9_constructor_37_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_10_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |summary_11_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_1 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int))
(=> (and (and (nondet_interface_7_B9_54_0 error_1 this_0 abi_0 crypto_0 state_0 a_26_0 state_1 a_26_1) true) (and (= error_1 0) (summary_11_function_f__53_54_0 error_2 this_0 abi_0 crypto_0 tx_0 state_1 a_26_1 state_2 a_26_2))) (nondet_interface_7_B9_54_0 error_2 this_0 abi_0 crypto_0 state_0 a_26_0 state_2 a_26_2))))


(declare-fun |block_12_function_inc9__22_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |block_13_inc9_21_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(block_12_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_12_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= x_2_1 x_2_0))) true) true)) true) (block_13_inc9_21_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1))))


(declare-fun |block_14_return_function_inc9__22_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_13_inc9_21_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1) (and (= _13_2 expr_19_0) (and (=> true (and (>= expr_19_0 0) (<= expr_19_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_19_0 x_2_2) (and (= x_2_2 expr_17_1) (and (=> true (and (>= expr_17_1 0) (<= expr_17_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_17_1 expr_16_0) (and (=> true (and (>= expr_15_0 0) (<= expr_15_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_15_0 x_2_1) (and (=> true true) (and (= expr_16_0 1) (and (= _13_1 0) true)))))))))))) true) (block_14_return_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_2 _13_2))))


(declare-fun |block_15_return_ghost_inc9_20_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_15_return_ghost_inc9_20_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_2 _13_2) (and (= _13_2 expr_19_0) (and (=> true (and (>= expr_19_0 0) (<= expr_19_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_19_0 x_2_2) (and (= x_2_2 expr_17_1) (and (=> true (and (>= expr_17_1 0) (<= expr_17_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_17_1 expr_16_0) (and (=> true (and (>= expr_15_0 0) (<= expr_15_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_15_0 x_2_1) (and (=> true true) (and (= expr_16_0 1) (and (= _13_1 0) true)))))))))))) true) (block_14_return_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_2 _13_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_14_return_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1) true) true) (summary_4_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1))))


(declare-fun |block_16_function_inc9__22_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(block_16_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_16_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1) (and (summary_4_function_inc9__22_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_2 x_2_1 state_3 x_2_2 _13_1) (and (= state_2 (|state_type| (store (|balances| state_1) this_0 (+ (select (|balances| state_1) this_0) funds_0_0)))) (and (and (>= (+ (select (|balances| state_1) this_0) funds_0_0) 0) (<= (+ (select (|balances| state_1) this_0) funds_0_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= funds_0_0 (|msg.value| tx_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (and (and (and (and (and (= (|msg.value| tx_0) 0) (= (|msg.sig| tx_0) 3170666789)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 0) 188)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 1) 252)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 2) 137)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 3) 37)) (>= (|bytes_tuple_accessor_length| (|msg.data| tx_0)) 4))) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= x_2_1 x_2_0))) true) true))))))) true) (summary_5_function_inc9__22_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_3 x_2_2 _13_1))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (interface_0_A9_23_0 this_0 abi_0 crypto_0 state_0 x_2_0) true) (and (summary_5_function_inc9__22_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1 _13_1) (= error_0 0))) (interface_0_A9_23_0 this_0 abi_0 crypto_0 state_1 x_2_1))))


(declare-fun |block_17_constructor_10_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |block_18__9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(block_17_constructor_10_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_17_constructor_10_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= x_2_1 x_2_0))) true) true)) true) (block_18__9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1))))


(declare-fun |block_19_return_constructor_10_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_18__9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (= x_2_2 expr_7_1) (and (=> true (and (>= expr_7_1 0) (<= expr_7_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_7_1 expr_6_0) (and (=> true (and (>= expr_5_0 0) (<= expr_5_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_5_0 x_2_1) (and (=> true true) (and (= expr_6_0 0) true)))))))) true) (block_19_return_constructor_10_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (block_19_return_constructor_10_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) true) true) (summary_3_constructor_10_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1))))


(declare-fun |contract_initializer_20_A9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |contract_initializer_entry_21_A9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= x_2_1 x_2_0))) true) (contract_initializer_entry_21_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1))))


(declare-fun |contract_initializer_after_init_22_A9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (contract_initializer_entry_21_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) true) true) (contract_initializer_after_init_22_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (contract_initializer_after_init_22_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (summary_3_constructor_10_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_2_1 state_2 x_2_2) true)) (> error_1 0)) (contract_initializer_20_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_2 x_2_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (contract_initializer_after_init_22_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (= error_1 0) (and (summary_3_constructor_10_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_2_1 state_2 x_2_2) true))) true) (contract_initializer_20_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_2 x_2_2))))


(declare-fun |implicit_constructor_entry_23_A9_23_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (and (and (and (= state_2 state_0) (= error_1 0)) (and true (= x_2_2 x_2_0))) true) (and true (= x_2_2 0))) (>= (select (|balances| state_2) this_0) (|msg.value| tx_0))) (implicit_constructor_entry_23_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_2 x_2_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (implicit_constructor_entry_23_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (contract_initializer_20_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_2_1 state_2 x_2_2) true)) (> error_1 0)) (summary_constructor_2_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_2 x_2_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (implicit_constructor_entry_23_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) (and (= error_1 0) (and (contract_initializer_20_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_2_1 state_2 x_2_2) true))) true) (summary_constructor_2_A9_23_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_2 x_2_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (y_41_1 Int))
(=> (and (and (summary_constructor_2_A9_23_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_2_0 state_1 x_2_1) true) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (= (|msg.value| tx_0) 0)) (= error_0 0))) (interface_0_A9_23_0 this_0 abi_0 crypto_0 state_1 x_2_1))))


(declare-fun |block_24_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |block_25_f_52_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(block_24_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_24_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= a_26_1 a_26_0))) true) true)) true) (block_25_f_52_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1))))


(declare-fun |block_26_return_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(declare-fun |nondet_call_27_0| (Int Int |abi_type| |crypto_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (nondet_interface_7_B9_54_0 error_1 this_0 abi_0 crypto_0 state_1 a_26_1 state_2 a_26_2) (nondet_call_27_0 error_1 this_0 abi_0 crypto_0 state_1 a_26_1 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_25_f_52_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) (and (nondet_call_27_0 error_1 this_0 abi_0 crypto_0 state_1 a_26_1 state_2 a_26_2) (and (=> true true) (and (= expr_42_0 a_26_1) (and (= y_41_1 0) true))))) (> error_1 0)) (summary_10_function_f__53_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(declare-fun |block_28_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_25_f_52_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) (and (= expr_49_1 (= expr_47_0 expr_48_0)) (and (=> true true) (and (= expr_48_0 1) (and (=> true (and (>= expr_47_0 0) (<= expr_47_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_47_0 y_41_2) (and (= y_41_2 expr_44_1) (and (=> true (and (>= expr_44_1 0) (<= expr_44_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_44_1 _13_4) (and (= error_1 0) (and (nondet_call_27_0 error_1 this_0 abi_0 crypto_0 state_1 a_26_1 state_2 a_26_2) (and (=> true true) (and (= expr_42_0 a_26_1) (and (= y_41_1 0) true)))))))))))))) (and (not expr_49_1) (= error_2 1))) (block_28_function_f__53_54_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2 y_41_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (block_28_function_f__53_54_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2 y_41_2) (summary_10_function_f__53_54_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_25_f_52_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) (and (= error_2 error_1) (and (= expr_49_1 (= expr_47_0 expr_48_0)) (and (=> true true) (and (= expr_48_0 1) (and (=> true (and (>= expr_47_0 0) (<= expr_47_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_47_0 y_41_2) (and (= y_41_2 expr_44_1) (and (=> true (and (>= expr_44_1 0) (<= expr_44_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_44_1 _13_4) (and (= error_1 0) (and (nondet_call_27_0 error_1 this_0 abi_0 crypto_0 state_1 a_26_1 state_2 a_26_2) (and (=> true true) (and (= expr_42_0 a_26_1) (and (= y_41_1 0) true))))))))))))))) true) (block_26_return_function_f__53_54_0 error_2 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2 y_41_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_26_return_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) true) true) (summary_10_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1))))


(declare-fun |block_29_function_f__53_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(block_29_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_29_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1 y_41_1) (and (summary_10_function_f__53_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_2 a_26_1 state_3 a_26_2) (and (= state_2 (|state_type| (store (|balances| state_1) this_0 (+ (select (|balances| state_1) this_0) funds_2_0)))) (and (and (>= (+ (select (|balances| state_1) this_0) funds_2_0) 0) (<= (+ (select (|balances| state_1) this_0) funds_2_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= funds_2_0 (|msg.value| tx_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (and (and (and (and (and (= (|msg.value| tx_0) 0) (= (|msg.sig| tx_0) 638722032)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 0) 38)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 1) 18)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 2) 31)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 3) 240)) (>= (|bytes_tuple_accessor_length| (|msg.data| tx_0)) 4))) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= a_26_1 a_26_0))) true) true))))))) true) (summary_11_function_f__53_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_3 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (interface_6_B9_54_0 this_0 abi_0 crypto_0 state_0 a_26_0) true) (and (summary_11_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (= error_0 0))) (interface_6_B9_54_0 this_0 abi_0 crypto_0 state_1 a_26_1))))


(declare-fun |block_30_constructor_37_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |block_31__36_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(block_30_constructor_37_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_30_constructor_37_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= a_26_1 a_26_0))) true) true)) true) (block_31__36_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1))))


(declare-fun |block_32_return_constructor_37_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_31__36_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (= a_26_3 expr_34_1) (and (=> true true) (and (= expr_34_1 expr_33_0) (and (=> true true) (and (= expr_29_0 a_26_2) (and (= state_2 (|state_type| fresh_balances_3_0)) (and (and (>= a_26_2 0) (<= a_26_2 1461501637330902918203684832716283019655932542975)) (and (and (>= x_2_4 0) (<= x_2_4 115792089237316195423570985008687907853269984665640564039457584007913129639935)) true))))))))) true) (block_32_return_constructor_37_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_3))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (block_32_return_constructor_37_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) true) true) (summary_9_constructor_37_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1))))


(declare-fun |contract_initializer_33_B9_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(declare-fun |contract_initializer_entry_34_B9_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (and (= state_1 state_0) (= error_0 0)) (and true (= a_26_1 a_26_0))) true) (contract_initializer_entry_34_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1))))


(declare-fun |contract_initializer_after_init_35_B9_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (contract_initializer_entry_34_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) true) true) (contract_initializer_after_init_35_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (contract_initializer_after_init_35_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (summary_9_constructor_37_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 a_26_1 state_2 a_26_2) true)) (> error_1 0)) (contract_initializer_33_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (contract_initializer_after_init_35_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (= error_1 0) (and (summary_9_constructor_37_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 a_26_1 state_2 a_26_2) true))) true) (contract_initializer_33_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(declare-fun |implicit_constructor_entry_36_B9_54_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int ) Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (and (and (and (= state_2 state_0) (= error_1 0)) (and true (= a_26_2 a_26_0))) true) (and true (= a_26_2 0))) (>= (select (|balances| state_2) this_0) (|msg.value| tx_0))) (implicit_constructor_entry_36_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (implicit_constructor_entry_36_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (contract_initializer_33_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 a_26_1 state_2 a_26_2) true)) (> error_1 0)) (summary_constructor_8_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (implicit_constructor_entry_36_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (and (= error_1 0) (and (contract_initializer_33_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 a_26_1 state_2 a_26_2) true))) true) (summary_constructor_8_B9_54_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_2 a_26_2))))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (summary_constructor_8_B9_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) true) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (= (|msg.value| tx_0) 0)) (= error_0 0))) (interface_6_B9_54_0 this_0 abi_0 crypto_0 state_1 a_26_1))))


(declare-fun |error_target_4_0| () Bool)
(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (_13_5 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (x_2_5 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> (and (and (interface_6_B9_54_0 this_0 abi_0 crypto_0 state_0 a_26_0) true) (and (summary_11_function_f__53_54_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 a_26_0 state_1 a_26_1) (= error_0 1))) error_target_4_0)))


(assert
(forall ( (_13_0 Int) (_13_1 Int) (_13_2 Int) (_13_3 Int) (_13_4 Int) (_13_5 Int) (a_26_0 Int) (a_26_1 Int) (a_26_2 Int) (a_26_3 Int) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (error_2 Int) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Int) (expr_19_0 Int) (expr_29_0 Int) (expr_33_0 Int) (expr_34_1 Int) (expr_42_0 Int) (expr_44_1 Int) (expr_47_0 Int) (expr_48_0 Int) (expr_49_1 Bool) (expr_5_0 Int) (expr_6_0 Int) (expr_7_1 Int) (fresh_balances_3_0 (Array Int Int)) (funds_0_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_2_0 Int) (x_2_1 Int) (x_2_2 Int) (x_2_3 Int) (x_2_4 Int) (x_2_5 Int) (y_41_0 Int) (y_41_1 Int) (y_41_2 Int) (y_41_3 Int))
(=> error_target_4_0 false)))
(check-sat)
