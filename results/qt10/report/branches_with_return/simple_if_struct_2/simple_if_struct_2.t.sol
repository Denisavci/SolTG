//Generated Test by TG
//[[['Csi5', 'contract', 52, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['check', 34, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if_struct_2.sol";

contract simple_if_struct_2_Test is Test {
	Csi5 csi50;
	function setUp() public {
		csi50 = new Csi5();
	}
	function test_simple_if_struct_2_0() public {
		vm.prank(0x2a7EC94A30dCC43eE00000000000000000000000);
		csi50.check(); //check__34("address(this).balance=7719", 0, 0)
	}
}
