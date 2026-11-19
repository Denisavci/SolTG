//Generated Test by TG
//[[['Cc4', 'contract', 68, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 56, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['h', 67, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_branch_4.sol";

contract function_call_inside_branch_4_Test is Test {
	Cc4 cc40;
	Cc4 cc41;
	Cc4 cc42;
	function setUp() public {
		cc40 = new Cc4();
		cc41 = new Cc4();
		cc42 = new Cc4();
	}
	function test_function_call_inside_branch_4_0() public {
		vm.prank(0x35D10B3D130f8334C00000000000000000000000);
		cc40.h(); //h__67("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_branch_4_1() public {
		vm.prank(0x2998880CA0c80785000000000000000000000000);
		cc41.g(); //g__56("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_branch_4_2() public {
		vm.prank(0x1a4e069101BEd8Bd300000000000000000000000);
		cc42.f(); //f__38("address(this).balance=7719", 0, 0)
	}
}
