//Generated Test by TG
//[[['Csi2', 'contract', 74, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['check', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if_array.sol";

contract simple_if_array_Test is Test {
	Csi2 csi20;
	function setUp() public {
		csi20 = new Csi2();
	}
	function test_simple_if_array_0() public {
		vm.prank(0x3703613fa21475C3600000000000000000000000);
		csi20.check(); //check__55("address(this).balance=8855", 0, 0)
	}
}
