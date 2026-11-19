//Generated Test by TG
//[[['Cc2', 'contract', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 54, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/function_call_inside_branch_2.sol";

contract function_call_inside_branch_2_Test is Test {
	Cc2 cc20;
	Cc2 cc21;
	function setUp() public {
		cc20 = new Cc2();
		cc21 = new Cc2();
	}
	function test_function_call_inside_branch_2_0() public {
		vm.prank(0x47BefC07279bEBc6a00000000000000000000000);
		cc20.g(); //g__54("address(this).balance=7719", 0, 0)
	}
	function test_function_call_inside_branch_2_1() public {
		vm.prank(0x38D66f5a8312c37F300000000000000000000000);
		cc21.f(); //f__36("address(this).balance=7719", 0, 0)
	}
}
