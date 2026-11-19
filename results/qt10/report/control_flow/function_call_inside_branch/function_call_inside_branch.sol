// src/regression/control_flow/function_call_inside_branch.sol
contract Cc1
{
	function f() public pure {
		if (true) {
			address a = g();
			assert(a == address(0));
		}
	}
	function g() public pure returns (address) {
		address a;
		a = address(0);
		return a;
	}
}
// ====
// SMTEngine: all
// ----
