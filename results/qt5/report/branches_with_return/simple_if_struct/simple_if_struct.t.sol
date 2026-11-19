//Generated Test by TG
//[[['Csi4', 'contract', 52, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['check', 34, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if_struct.sol";

contract simple_if_struct_Test is Test {
	Csi4 csi40;
	function setUp() public {
		csi40 = new Csi4();
	}
	function test_simple_if_struct_0() public {
		vm.prank(0x1ec6598Fa989beE0c00000000000000000000000);
		csi40.check(); //check__34("address(this).balance=2437", 0, 0)
	}
}
