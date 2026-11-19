(set-logic HORN)

(declare-datatypes ((|state_type| 0)) (((|state_type| (|balances| (Array Int Int))))))
(declare-datatypes ((|bytes_tuple| 0)) (((|bytes_tuple| (|bytes_tuple_accessor_array| (Array Int Int)) (|bytes_tuple_accessor_length| Int)))))
(declare-datatypes ((|tx_type| 0)) (((|tx_type| (|block.basefee| Int) (|block.chainid| Int) (|block.coinbase| Int) (|block.difficulty| Int) (|block.gaslimit| Int) (|block.number| Int) (|block.timestamp| Int) (|blockhash| (Array Int Int)) (|msg.data| |bytes_tuple|) (|msg.sender| Int) (|msg.sig| Int) (|msg.value| Int) (|tx.gasprice| Int) (|tx.origin| Int)))))
(declare-datatypes ((|ecrecover_input_type| 0)) (((|ecrecover_input_type| (|hash| Int) (|v| Int) (|r| Int) (|s| Int)))))
(declare-datatypes ((|crypto_type| 0)) (((|crypto_type| (|ecrecover| (Array |ecrecover_input_type| Int)) (|keccak256| (Array |bytes_tuple| Int)) (|ripemd160| (Array |bytes_tuple| Int)) (|sha256| (Array |bytes_tuple| Int))))))
(declare-datatypes ((|abi_type| 0)) (((|abi_type|))))
(declare-fun |interface_0_Cfc2_53_0| (Int |abi_type| |crypto_type| |state_type| ) Bool)
(declare-fun |nondet_interface_1_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |state_type| |state_type| ) Bool)
(declare-fun |summary_constructor_2_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (state_0 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (= error_0 0) (nondet_interface_1_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 state_0 state_0))))


(declare-fun |summary_3_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int ) Bool)
(declare-fun |summary_4_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_1 Int))
(=> (and (and (nondet_interface_1_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 state_0 state_1) true) (and (= error_0 0) (summary_4_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 y_2_0 z_4_0 state_2 y_2_1 z_4_1 zz_7_1))) (nondet_interface_1_Cfc2_53_0 error_1 this_0 abi_0 crypto_0 state_0 state_2))))


(declare-fun |block_5_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_6_loop_if_51_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(block_5_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1)))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_5_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) true) (and (and true (= y_2_1 y_2_0)) (= z_4_1 z_4_0))) true)) true) (block_6_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(declare-fun |block_7_return_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_8_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_6_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_16_1 (>= expr_14_0 expr_15_0)) (and (=> true true) (and (= expr_15_0 0) (and (=> true (and (>= expr_14_0 0) (<= expr_14_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_14_0 x_10_2) (and (= x_10_2 expr_11_0) (and (=> true true) (and (= expr_11_0 0) (and (= zz_7_1 0) (and (and (>= z_4_1 0) (<= z_4_1 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (and (>= y_2_1 0) (<= y_2_1 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (= x_10_1 0) true))))))))))))) (and (not expr_16_1) (= error_1 1))) (block_8_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_2))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (block_8_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_2) (summary_3_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1))))


(declare-fun |block_9_while_header_loop_if_48_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_10_while_body_loop_if_47_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_11_loop_if_51_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_6_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= error_1 error_0) (and (= expr_16_1 (>= expr_14_0 expr_15_0)) (and (=> true true) (and (= expr_15_0 0) (and (=> true (and (>= expr_14_0 0) (<= expr_14_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_14_0 x_10_2) (and (= x_10_2 expr_11_0) (and (=> true true) (and (= expr_11_0 0) (and (= zz_7_1 0) (and (and (>= z_4_1 0) (<= z_4_1 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (and (>= y_2_1 0) (<= y_2_1 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (= x_10_1 0) true)))))))))))))) true) (block_9_while_header_loop_if_48_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_2))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_9_while_header_loop_if_48_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_19_0 true) true)) expr_19_0) (block_10_while_body_loop_if_47_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_9_while_header_loop_if_48_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_19_0 true) true)) (not expr_19_0)) (block_11_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(declare-fun |block_12_if_header_loop_if_32_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_13_if_true_loop_if_31_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_14_loop_if_51_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_10_while_body_loop_if_47_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= x_10_2 expr_24_1) (and (=> true (and (>= expr_24_1 0) (<= expr_24_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_24_1 expr_23_1) (and (=> true (and (>= expr_20_0 0) (<= expr_20_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_20_0 x_10_1) (and (=> true (and (>= expr_23_1 0) (<= expr_23_1 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_23_1 (+ expr_21_0 expr_22_0)) (and (=> true true) (and (= expr_22_0 1) (and (=> true (and (>= expr_21_0 0) (<= expr_21_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_21_0 x_10_1) true)))))))))))) true) (block_12_if_header_loop_if_32_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_2))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_12_if_header_loop_if_32_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_28_1 (> expr_26_0 expr_27_0)) (and (=> true true) (and (= expr_27_0 2) (and (=> true (and (>= expr_26_0 0) (<= expr_26_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_26_0 x_10_1) true)))))) expr_28_1) (block_13_if_true_loop_if_31_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int))
(=> (and (and (block_12_if_header_loop_if_32_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_28_1 (> expr_26_0 expr_27_0)) (and (=> true true) (and (= expr_27_0 2) (and (=> true (and (>= expr_26_0 0) (<= expr_26_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_26_0 x_10_1) true)))))) (not expr_28_1)) (block_14_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_13_if_true_loop_if_31_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= zz_7_2 expr_29_0) (and (=> true true) (and (= expr_29_0 1) true)))) true) (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_15_return_ghost_loop_if_30_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_15_return_ghost_loop_if_30_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1) (and (= zz_7_2 expr_29_0) (and (=> true true) (and (= expr_29_0 1) true)))) true) (block_14_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_16_if_header_loop_if_39_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_17_if_true_loop_if_38_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_18_loop_if_51_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_14_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) true) true) (block_16_if_header_loop_if_39_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_16_if_header_loop_if_39_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_35_1 (> expr_33_0 expr_34_0)) (and (=> true true) (and (= expr_34_0 10) (and (=> true (and (>= expr_33_0 0) (<= expr_33_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_33_0 y_2_1) true)))))) expr_35_1) (block_17_if_true_loop_if_38_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_16_if_header_loop_if_39_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_35_1 (> expr_33_0 expr_34_0)) (and (=> true true) (and (= expr_34_0 10) (and (=> true (and (>= expr_33_0 0) (<= expr_33_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_33_0 y_2_1) true)))))) (not expr_35_1)) (block_18_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_17_if_true_loop_if_38_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= zz_7_2 expr_36_0) (and (=> true true) (and (= expr_36_0 2) true)))) true) (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_19_return_ghost_loop_if_37_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_19_return_ghost_loop_if_37_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1) (and (= zz_7_2 expr_36_0) (and (=> true true) (and (= expr_36_0 2) true)))) true) (block_18_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_20_if_header_loop_if_46_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_21_if_true_loop_if_45_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(declare-fun |block_22_loop_if_51_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_18_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) true) true) (block_20_if_header_loop_if_46_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_20_if_header_loop_if_46_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_42_1 (> expr_40_0 expr_41_0)) (and (=> true true) (and (= expr_41_0 10) (and (=> true (and (>= expr_40_0 0) (<= expr_40_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_40_0 z_4_1) true)))))) expr_42_1) (block_21_if_true_loop_if_45_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_20_if_header_loop_if_46_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= expr_42_1 (> expr_40_0 expr_41_0)) (and (=> true true) (and (= expr_41_0 10) (and (=> true (and (>= expr_40_0 0) (<= expr_40_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_40_0 z_4_1) true)))))) (not expr_42_1)) (block_22_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_21_if_true_loop_if_45_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= zz_7_2 expr_43_0) (and (=> true true) (and (= expr_43_0 3) true)))) true) (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_23_return_ghost_loop_if_44_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_23_return_ghost_loop_if_44_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1) (and (= zz_7_2 expr_43_0) (and (=> true true) (and (= expr_43_0 3) true)))) true) (block_22_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_22_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) true) true) (block_9_while_header_loop_if_48_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_11_loop_if_51_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (= zz_7_2 expr_49_0) (and (=> true true) (and (= expr_49_0 2) true)))) true) (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(declare-fun |block_24_return_ghost_loop_if_50_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_24_return_ghost_loop_if_50_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1) (and (= zz_7_2 expr_49_0) (and (=> true true) (and (= expr_49_0 2) true)))) true) (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_2 x_10_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_7_return_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) true) true) (summary_3_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1))))


(declare-fun |block_25_function_loop_if__52_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int Int |state_type| Int Int Int Int ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (z_4_0 Int) (z_4_1 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(block_25_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1)))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (block_25_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1 x_10_1) (and (summary_3_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_2 y_2_1 z_4_1 state_3 y_2_2 z_4_2 zz_7_1) (and (= state_2 (|state_type| (store (|balances| state_1) this_0 (+ (select (|balances| state_1) this_0) funds_2_0)))) (and (and (>= (+ (select (|balances| state_1) this_0) funds_2_0) 0) (<= (+ (select (|balances| state_1) this_0) funds_2_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= funds_2_0 (|msg.value| tx_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (and (and (and (and (and (= (|msg.value| tx_0) 0) (= (|msg.sig| tx_0) 947655851)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 0) 56)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 1) 124)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 2) 20)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 3) 171)) (>= (|bytes_tuple_accessor_length| (|msg.data| tx_0)) 4))) (and (and (and (and (= state_1 state_0) (= error_0 0)) true) (and (and true (= y_2_1 y_2_0)) (= z_4_1 z_4_0))) true))))))) true) (summary_4_function_loop_if__52_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_3 y_2_2 z_4_2 zz_7_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (interface_0_Cfc2_53_0 this_0 abi_0 crypto_0 state_0) true) (and (summary_4_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1) (= error_0 0))) (interface_0_Cfc2_53_0 this_0 abi_0 crypto_0 state_1))))


(declare-fun |contract_initializer_26_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(declare-fun |contract_initializer_entry_27_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (= state_1 state_0) (= error_0 0)) true) (contract_initializer_entry_27_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |contract_initializer_after_init_28_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (contract_initializer_entry_27_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (contract_initializer_after_init_28_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (contract_initializer_after_init_28_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (contract_initializer_26_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |implicit_constructor_entry_29_Cfc2_53_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (and (and (= state_1 state_0) (= error_0 0)) true) true) (>= (select (|balances| state_1) this_0) (|msg.value| tx_0))) (implicit_constructor_entry_29_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (implicit_constructor_entry_29_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (contract_initializer_26_Cfc2_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true)) (> error_1 0)) (summary_constructor_2_Cfc2_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (implicit_constructor_entry_29_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (= error_1 0) (and (contract_initializer_26_Cfc2_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true))) true) (summary_constructor_2_Cfc2_53_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (summary_constructor_2_Cfc2_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (= (|msg.value| tx_0) 0)) (= error_0 0))) (interface_0_Cfc2_53_0 this_0 abi_0 crypto_0 state_1))))


(declare-fun |error_target_3_0| () Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> (and (and (interface_0_Cfc2_53_0 this_0 abi_0 crypto_0 state_0) true) (and (summary_4_function_loop_if__52_53_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 y_2_0 z_4_0 state_1 y_2_1 z_4_1 zz_7_1) (= error_0 1))) error_target_3_0)))


(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_14_0 Int) (expr_15_0 Int) (expr_16_1 Bool) (expr_19_0 Bool) (expr_20_0 Int) (expr_21_0 Int) (expr_22_0 Int) (expr_23_1 Int) (expr_24_1 Int) (expr_26_0 Int) (expr_27_0 Int) (expr_28_1 Bool) (expr_29_0 Int) (expr_33_0 Int) (expr_34_0 Int) (expr_35_1 Bool) (expr_36_0 Int) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_49_0 Int) (funds_2_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_10_0 Int) (x_10_1 Int) (x_10_2 Int) (y_2_0 Int) (y_2_1 Int) (y_2_2 Int) (z_4_0 Int) (z_4_1 Int) (z_4_2 Int) (zz_7_0 Int) (zz_7_1 Int) (zz_7_2 Int))
(=> error_target_3_0 false)))
(check-sat)
