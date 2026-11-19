// src/regression/control_flow/function_call_inside_else_branch.sol
contract Cc5
{
	function f() public pure {
		if (true) {
		} else {
			address a = g();
			assert(a == address(0));
		}
	}
	function g() public pure returns (address) {
		address x;
		x = address(0);
		return x;
	}
}
// ====
// SMTEngine: all
// ----
