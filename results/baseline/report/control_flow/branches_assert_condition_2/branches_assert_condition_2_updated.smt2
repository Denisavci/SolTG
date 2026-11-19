(set-logic HORN)

(declare-datatypes ((|state_type| 0)) (((|state_type| (|balances| (Array Int Int))))))
(declare-datatypes ((|bytes_tuple| 0)) (((|bytes_tuple| (|bytes_tuple_accessor_array| (Array Int Int)) (|bytes_tuple_accessor_length| Int)))))
(declare-datatypes ((|tx_type| 0)) (((|tx_type| (|block.basefee| Int) (|block.chainid| Int) (|block.coinbase| Int) (|block.difficulty| Int) (|block.gaslimit| Int) (|block.number| Int) (|block.timestamp| Int) (|blockhash| (Array Int Int)) (|msg.data| |bytes_tuple|) (|msg.sender| Int) (|msg.sig| Int) (|msg.value| Int) (|tx.gasprice| Int) (|tx.origin| Int)))))
(declare-datatypes ((|ecrecover_input_type| 0)) (((|ecrecover_input_type| (|hash| Int) (|v| Int) (|r| Int) (|s| Int)))))
(declare-datatypes ((|crypto_type| 0)) (((|crypto_type| (|ecrecover| (Array |ecrecover_input_type| Int)) (|keccak256| (Array |bytes_tuple| Int)) (|ripemd160| (Array |bytes_tuple| Int)) (|sha256| (Array |bytes_tuple| Int))))))
(declare-datatypes ((|abi_type| 0)) (((|abi_type|))))
(declare-fun |interface_0_Cb1_56_0| (Int |abi_type| |crypto_type| |state_type| ) Bool)
(declare-fun |nondet_interface_1_Cb1_56_0| (Int Int |abi_type| |crypto_type| |state_type| |state_type| ) Bool)
(declare-fun |summary_constructor_2_Cb1_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (state_0 |state_type|) (this_0 Int) (tx_0 |tx_type|))
(=> (= error_0 0) (nondet_interface_1_Cb1_56_0 error_0 this_0 abi_0 crypto_0 state_0 state_0))))


(declare-fun |summary_3_constructor_4_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(declare-fun |summary_4_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |summary_5_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (nondet_interface_1_Cb1_56_0 error_0 this_0 abi_0 crypto_0 state_0 state_1) true) (and (= error_0 0) (summary_5_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 x_6_0 state_2 x_6_1 _9_1))) (nondet_interface_1_Cb1_56_0 error_1 this_0 abi_0 crypto_0 state_0 state_2))))


(declare-fun |block_6_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_7_f_54_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(block_6_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1)))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_6_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) true) (and true (= x_6_1 x_6_0))) true)) true) (block_7_f_54_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(declare-fun |block_8_return_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_9_if_header_f_53_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_10_if_true_f_22_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_11_if_false_f_52_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_12_f_54_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_7_f_54_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= _9_1 false) (and (and (>= x_6_1 0) (<= x_6_1 115792089237316195423570985008687907853269984665640564039457584007913129639935)) true))) true) (block_9_if_header_f_53_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_9_if_header_f_53_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_13_1 (> expr_11_0 expr_12_0)) (and (=> true true) (and (= expr_12_0 10) (and (=> true (and (>= expr_11_0 0) (<= expr_11_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_11_0 x_6_1) true)))))) expr_13_1) (block_10_if_true_f_22_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_9_if_header_f_53_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_13_1 (> expr_11_0 expr_12_0)) (and (=> true true) (and (= expr_12_0 10) (and (=> true (and (>= expr_11_0 0) (<= expr_11_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_11_0 x_6_1) true)))))) (not expr_13_1)) (block_11_if_false_f_52_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(declare-fun |block_13_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_10_if_true_f_22_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_17_1 (> expr_15_0 expr_16_0)) (and (=> true true) (and (= expr_16_0 9) (and (=> true (and (>= expr_15_0 0) (<= expr_15_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_15_0 x_6_1) true)))))) (and (not expr_17_1) (= error_1 1))) (block_13_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (block_13_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (summary_4_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_10_if_true_f_22_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= _9_2 expr_20_0) (and (= expr_20_0 true) (and (= error_1 error_0) (and (= expr_17_1 (> expr_15_0 expr_16_0)) (and (=> true true) (and (= expr_16_0 9) (and (=> true (and (>= expr_15_0 0) (<= expr_15_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_15_0 x_6_1) true))))))))) true) (block_8_return_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(declare-fun |block_14_return_ghost_f_21_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_14_return_ghost_f_21_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2) (and (= _9_2 expr_20_0) (and (= expr_20_0 true) (and (= error_1 error_0) (and (= expr_17_1 (> expr_15_0 expr_16_0)) (and (=> true true) (and (= expr_16_0 9) (and (=> true (and (>= expr_15_0 0) (<= expr_15_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_15_0 x_6_1) true))))))))) true) (block_12_f_54_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(declare-fun |block_15_if_header_f_52_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_16_if_true_f_38_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_17_if_false_f_51_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(declare-fun |block_18_f_54_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_11_if_false_f_52_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) true) true) (block_15_if_header_f_52_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_15_if_header_f_52_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_25_1 (> expr_23_0 expr_24_0)) (and (=> true true) (and (= expr_24_0 2) (and (=> true (and (>= expr_23_0 0) (<= expr_23_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_23_0 x_6_1) true)))))) expr_25_1) (block_16_if_true_f_38_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_15_if_header_f_52_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_25_1 (> expr_23_0 expr_24_0)) (and (=> true true) (and (= expr_24_0 2) (and (=> true (and (>= expr_23_0 0) (<= expr_23_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_23_0 x_6_1) true)))))) (not expr_25_1)) (block_17_if_false_f_51_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(declare-fun |block_19_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_16_if_true_f_38_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_33_0 (and expr_29_1 expr_32_1)) (and (= expr_32_1 (> expr_30_0 expr_31_0)) (and (=> (and true expr_29_1) true) (and (= expr_31_0 2) (and (=> (and true expr_29_1) (and (>= expr_30_0 0) (<= expr_30_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_30_0 x_6_1) (and (= expr_29_1 (<= expr_27_0 expr_28_0)) (and (=> true true) (and (= expr_28_0 10) (and (=> true (and (>= expr_27_0 0) (<= expr_27_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_27_0 x_6_1) true)))))))))))) (and (not expr_33_0) (= error_1 2))) (block_19_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (block_19_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (summary_4_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_16_if_true_f_38_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= _9_2 expr_36_0) (and (= expr_36_0 false) (and (= error_1 error_0) (and (= expr_33_0 (and expr_29_1 expr_32_1)) (and (= expr_32_1 (> expr_30_0 expr_31_0)) (and (=> (and true expr_29_1) true) (and (= expr_31_0 2) (and (=> (and true expr_29_1) (and (>= expr_30_0 0) (<= expr_30_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_30_0 x_6_1) (and (= expr_29_1 (<= expr_27_0 expr_28_0)) (and (=> true true) (and (= expr_28_0 10) (and (=> true (and (>= expr_27_0 0) (<= expr_27_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_27_0 x_6_1) true))))))))))))))) true) (block_8_return_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(declare-fun |block_20_return_ghost_f_37_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_20_return_ghost_f_37_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2) (and (= _9_2 expr_36_0) (and (= expr_36_0 false) (and (= error_1 error_0) (and (= expr_33_0 (and expr_29_1 expr_32_1)) (and (= expr_32_1 (> expr_30_0 expr_31_0)) (and (=> (and true expr_29_1) true) (and (= expr_31_0 2) (and (=> (and true expr_29_1) (and (>= expr_30_0 0) (<= expr_30_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_30_0 x_6_1) (and (= expr_29_1 (<= expr_27_0 expr_28_0)) (and (=> true true) (and (= expr_28_0 10) (and (=> true (and (>= expr_27_0 0) (<= expr_27_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_27_0 x_6_1) true))))))))))))))) true) (block_18_f_54_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(declare-fun |block_21_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_17_if_false_f_51_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= expr_46_0 (and expr_42_1 expr_45_1)) (and (= expr_45_1 (<= expr_43_0 expr_44_0)) (and (=> (and true expr_42_1) true) (and (= expr_44_0 2) (and (=> (and true expr_42_1) (and (>= expr_43_0 0) (<= expr_43_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_43_0 x_6_1) (and (= expr_42_1 (<= expr_40_0 expr_41_0)) (and (=> true (and (>= expr_41_0 0) (<= expr_41_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_41_0 x_6_1) (and (=> true true) (and (= expr_40_0 0) true)))))))))))) (and (not expr_46_0) (= error_1 3))) (block_21_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (block_21_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (summary_4_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_17_if_false_f_51_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (= _9_2 expr_49_0) (and (= expr_49_0 true) (and (= error_1 error_0) (and (= expr_46_0 (and expr_42_1 expr_45_1)) (and (= expr_45_1 (<= expr_43_0 expr_44_0)) (and (=> (and true expr_42_1) true) (and (= expr_44_0 2) (and (=> (and true expr_42_1) (and (>= expr_43_0 0) (<= expr_43_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_43_0 x_6_1) (and (= expr_42_1 (<= expr_40_0 expr_41_0)) (and (=> true (and (>= expr_41_0 0) (<= expr_41_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_41_0 x_6_1) (and (=> true true) (and (= expr_40_0 0) true))))))))))))))) true) (block_8_return_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(declare-fun |block_22_return_ghost_f_50_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_22_return_ghost_f_50_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2) (and (= _9_2 expr_49_0) (and (= expr_49_0 true) (and (= error_1 error_0) (and (= expr_46_0 (and expr_42_1 expr_45_1)) (and (= expr_45_1 (<= expr_43_0 expr_44_0)) (and (=> (and true expr_42_1) true) (and (= expr_44_0 2) (and (=> (and true expr_42_1) (and (>= expr_43_0 0) (<= expr_43_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_43_0 x_6_1) (and (= expr_42_1 (<= expr_40_0 expr_41_0)) (and (=> true (and (>= expr_41_0 0) (<= expr_41_0 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (= expr_41_0 x_6_1) (and (=> true true) (and (= expr_40_0 0) true))))))))))))))) true) (block_18_f_54_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_2))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_18_f_54_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) true) true) (block_12_f_54_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_12_f_54_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) true) true) (block_8_return_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(=> (and (and (block_8_return_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) true) true) (summary_4_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1))))


(declare-fun |block_23_function_f__55_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| Int |state_type| Int Bool ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int))
(block_23_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1)))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (block_23_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (and (summary_4_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_2 x_6_1 state_3 x_6_2 _9_1) (and (= state_2 (|state_type| (store (|balances| state_1) this_0 (+ (select (|balances| state_1) this_0) funds_4_0)))) (and (and (>= (+ (select (|balances| state_1) this_0) funds_4_0) 0) (<= (+ (select (|balances| state_1) this_0) funds_4_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= funds_4_0 (|msg.value| tx_0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (and (and (and (and (and (= (|msg.value| tx_0) 0) (= (|msg.sig| tx_0) 3017696395)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 0) 179)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 1) 222)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 2) 100)) (= (select (|bytes_tuple_accessor_array| (|msg.data| tx_0)) 3) 139)) (>= (|bytes_tuple_accessor_length| (|msg.data| tx_0)) 4))) (and (and (and (and (= state_1 state_0) (= error_0 0)) true) (and true (= x_6_1 x_6_0))) true))))))) true) (summary_5_function_f__55_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_3 x_6_2 _9_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (interface_0_Cb1_56_0 this_0 abi_0 crypto_0 state_0) true) (and (summary_5_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (= error_0 0))) (interface_0_Cb1_56_0 this_0 abi_0 crypto_0 state_1))))


(declare-fun |block_24_constructor_4_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(declare-fun |block_25__3_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(block_24_constructor_4_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1)))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (block_24_constructor_4_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (and (and (and (= state_1 state_0) (= error_0 0)) true) true) true)) true) (block_25__3_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |block_26_return_constructor_4_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (block_25__3_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (block_26_return_constructor_4_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (block_26_return_constructor_4_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (summary_3_constructor_4_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |contract_initializer_27_Cb1_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(declare-fun |contract_initializer_entry_28_Cb1_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (and (= state_1 state_0) (= error_0 0)) true) true) (contract_initializer_entry_28_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(declare-fun |contract_initializer_after_init_29_Cb1_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (contract_initializer_entry_28_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) true) (contract_initializer_after_init_29_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (contract_initializer_after_init_29_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (summary_3_constructor_4_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true)) (> error_1 0)) (contract_initializer_27_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (contract_initializer_after_init_29_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (= error_1 0) (and (summary_3_constructor_4_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true))) true) (contract_initializer_27_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(declare-fun |implicit_constructor_entry_30_Cb1_56_0| (Int Int |abi_type| |crypto_type| |tx_type| |state_type| |state_type| ) Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (and (and (and (= state_2 state_0) (= error_1 0)) true) true) true) (>= (select (|balances| state_2) this_0) (|msg.value| tx_0))) (implicit_constructor_entry_30_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (implicit_constructor_entry_30_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (contract_initializer_27_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true)) (> error_1 0)) (summary_constructor_2_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (implicit_constructor_entry_30_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) (and (= error_1 0) (and (contract_initializer_27_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_1 state_2) true))) true) (summary_constructor_2_Cb1_56_0 error_1 this_0 abi_0 crypto_0 tx_0 state_0 state_2))))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (summary_constructor_2_Cb1_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 state_1) true) (and (and (and (and (and (and (and (and (and (and (and (and (and (>= (|block.basefee| tx_0) 0) (<= (|block.basefee| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935)) (and (>= (|block.chainid| tx_0) 0) (<= (|block.chainid| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.coinbase| tx_0) 0) (<= (|block.coinbase| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|block.difficulty| tx_0) 0) (<= (|block.difficulty| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.gaslimit| tx_0) 0) (<= (|block.gaslimit| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.number| tx_0) 0) (<= (|block.number| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|block.timestamp| tx_0) 0) (<= (|block.timestamp| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|msg.sender| tx_0) 0) (<= (|msg.sender| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|msg.value| tx_0) 0) (<= (|msg.value| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (and (>= (|tx.origin| tx_0) 0) (<= (|tx.origin| tx_0) 1461501637330902918203684832716283019655932542975))) (and (>= (|tx.gasprice| tx_0) 0) (<= (|tx.gasprice| tx_0) 115792089237316195423570985008687907853269984665640564039457584007913129639935))) (= (|msg.value| tx_0) 0)) (= error_0 0))) (interface_0_Cb1_56_0 this_0 abi_0 crypto_0 state_1))))


(declare-fun |error_target_5_0| () Bool)
(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> (and (and (interface_0_Cb1_56_0 this_0 abi_0 crypto_0 state_0) true) (and (summary_5_function_f__55_56_0 error_0 this_0 abi_0 crypto_0 tx_0 state_0 x_6_0 state_1 x_6_1 _9_1) (= error_0 1))) error_target_5_0)))


(assert
(forall ( (_9_0 Bool) (_9_1 Bool) (_9_2 Bool) (abi_0 |abi_type|) (crypto_0 |crypto_type|) (error_0 Int) (error_1 Int) (expr_11_0 Int) (expr_12_0 Int) (expr_13_1 Bool) (expr_15_0 Int) (expr_16_0 Int) (expr_17_1 Bool) (expr_20_0 Bool) (expr_23_0 Int) (expr_24_0 Int) (expr_25_1 Bool) (expr_27_0 Int) (expr_28_0 Int) (expr_29_1 Bool) (expr_30_0 Int) (expr_31_0 Int) (expr_32_1 Bool) (expr_33_0 Bool) (expr_36_0 Bool) (expr_40_0 Int) (expr_41_0 Int) (expr_42_1 Bool) (expr_43_0 Int) (expr_44_0 Int) (expr_45_1 Bool) (expr_46_0 Bool) (expr_49_0 Bool) (funds_4_0 Int) (state_0 |state_type|) (state_1 |state_type|) (state_2 |state_type|) (state_3 |state_type|) (this_0 Int) (tx_0 |tx_type|) (x_6_0 Int) (x_6_1 Int) (x_6_2 Int))
(=> error_target_5_0 false)))
(check-sat)
