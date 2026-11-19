//Generated Test by TG
//[[['Csi3', 'contract', 42, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['check', 27, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if_state_var.sol";

contract simple_if_state_var_Test is Test {
	Csi3 csi30;
	function setUp() public {
		csi30 = new Csi3();
	}
	function test_simple_if_state_var_0() public {
		vm.prank(0x3dA4917deC6eDeE3c00000000000000000000000);
		csi30.check(); //check__27("address(this).balance=21238", 0, 0)
	}
}
