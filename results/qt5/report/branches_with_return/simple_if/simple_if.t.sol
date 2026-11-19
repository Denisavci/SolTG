//Generated Test by TG
//[[['Csi', 'contract', 28, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 27, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if.sol";

contract simple_if_Test is Test {
	Csi csi0;
	Csi csi1;
	function setUp() public {
		csi0 = new Csi();
		csi1 = new Csi();
	}
	function test_simple_if_0() public {
		vm.prank(0x55E8d6A1039Ee0b2000000000000000000000000);
		csi0.f( 0, 0); //f__27("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_simple_if_1() public {
		vm.prank(0x8763a982f5bEA991000000000000000000000000);
		csi1.f( 1, 0); //f__27("address(this).balance=0", 0, 0, 1, 0)
	}
}
