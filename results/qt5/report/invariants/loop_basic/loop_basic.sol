// src/regression/invariants/loop_basic.sol
contract Simplelb {
	function f(uint x) public pure {
		uint y;
		require(x > 0);
		while (y < x)
			++y;
		assert(y == x);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
