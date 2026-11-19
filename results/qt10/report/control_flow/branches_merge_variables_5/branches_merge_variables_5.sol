// src/regression/control_flow/branches_merge_variables_5.sol
// Variable is reset in both branches
contract Cb7 {
    function f(uint x) public pure {
        uint a = 2;
        if (x > 10) {
            a = 3;
        } else {
            a = 3;
        }
        assert(a == 3);
    }
}
// ====
// SMTEngine: all
// ----
