//Generated Test by TG
//[[['Csi1', 'contract', 31, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['simple_if', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/simple_if.sol";

contract simple_if_Test is Test {
	Csi1 csi10;
	Csi1 csi11;
	function setUp() public {
		csi10 = new Csi1();
		csi11 = new Csi1();
	}
	function test_simple_if_0() public {
		vm.prank(0x4fF5b3D06111dd6b100000000000000000000000);
		csi10.simple_if( 0); //simple_if__30("address(this).balance=7719", 0, 0, 0)
	}
	function test_simple_if_1() public {
		vm.prank(0x1361B00a392c6273A00000000000000000000000);
		csi11.simple_if( 5); //simple_if__30("address(this).balance=7719", 0, 0, 5)
	}
}
