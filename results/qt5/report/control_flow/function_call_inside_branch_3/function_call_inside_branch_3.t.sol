//Generated Test by TG
//[[['Cc3', 'contract', 57, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 56, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_branch_3.sol";

contract function_call_inside_branch_3_Test is Test {
	Cc3 cc30;
	Cc3 cc31;
	function setUp() public {
		cc30 = new Cc3();
		cc31 = new Cc3();
	}
	function test_function_call_inside_branch_3_0() public {
		vm.prank(0x275C6772e6219496300000000000000000000000);
		cc30.g(); //g__56("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_branch_3_1() public {
		vm.prank(0x171b9BD3E8502Ac9D00000000000000000000000);
		cc31.f(); //f__38("address(this).balance=7719", 0, 0)
	}
}
