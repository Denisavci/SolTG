//Generated Test by TG
//[[['Cc1', 'contract', 40, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 21, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 39, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_branch.sol";

contract function_call_inside_branch_Test is Test {
	Cc1 cc10;
	Cc1 cc11;
	function setUp() public {
		cc10 = new Cc1();
		cc11 = new Cc1();
	}
	function test_function_call_inside_branch_0() public {
		vm.prank(0x1Ab0F14a574aC419800000000000000000000000);
		cc10.g(); //g__39("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_branch_1() public {
		vm.prank(0x54002368F00e3833a00000000000000000000000);
		cc11.f(); //f__21("address(this).balance=7719", 0, 0)
	}
}
