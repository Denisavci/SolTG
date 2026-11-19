// src/regression/loops/do_while_1_false_positives.sol
contract Cdw2
{
	function f(uint x) public pure {
		require(x < 100);
		do {
			x = x + 1;
		} while (x < 1000);
		assert(x > 0);
	}
}
// ====
// SMTEngine: all
// SMTSolvers: z3
// ----
