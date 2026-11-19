// src/regression/control_flow/function_call_inside_branch_2.sol
contract Cc2
{
	function f() public pure {
		if (true) {
			address a = g();
			assert(a == address(0));
		}
		else
		{
			address b = g();
			assert(b == address(0));
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
