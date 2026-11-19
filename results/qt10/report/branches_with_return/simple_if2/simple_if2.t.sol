//Generated Test by TG
//[[['Csi1', 'contract', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 14, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if2.sol";

contract simple_if2_Test is Test {
	Csi1 csi10;
	function setUp() public {
		csi10 = new Csi1();
	}
	function test_simple_if2_0() public {
		vm.prank(0x1a544a98fF40a969800000000000000000000000);
		csi10.f( 1); //f__14("address(this).balance=8855", 0, 0, 1)
	}
}
