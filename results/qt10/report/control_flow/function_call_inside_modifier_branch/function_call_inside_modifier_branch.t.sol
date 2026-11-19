//Generated Test by TG
//[[['Cc6', 'contract', 51, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'a'], ['g', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_modifier_branch.sol";

contract function_call_inside_modifier_branch_Test is Test {
	Cc6 cc60;
	Cc6 cc61;
	function setUp() public {
		cc60 = new Cc6();
		cc61 = new Cc6();
	}
	function test_function_call_inside_modifier_branch_0() public {
		vm.prank(0x21e0aaD19cbA5591D00000000000000000000000);
		cc60.g(); //g__50("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_modifier_branch_1() public {
		vm.prank(0x59A2671AEFdF8800000000000000000000000000);
		cc61.f(0x0000000000000000000000000000000000000000); //f__32("address(this).balance=7719", 0, 0, 0)
	}
}
