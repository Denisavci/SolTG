//Generated Test by TG
//[[['Cc5', 'contract', 41, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 22, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 40, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_else_branch.sol";

contract function_call_inside_else_branch_Test is Test {
	Cc5 cc50;
	Cc5 cc51;
	function setUp() public {
		cc50 = new Cc5();
		cc51 = new Cc5();
	}
	function test_function_call_inside_else_branch_0() public {
		vm.prank(0xa0c5864Ac738E061000000000000000000000000);
		cc50.g(); //g__40("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_else_branch_1() public {
		vm.prank(0x4F224C12f9Bea0ef500000000000000000000000);
		cc51.f(); //f__22("address(this).balance=7719", 0, 0)
	}
}
