//Generated Test by TG
//[[['Csi2', 'contract', 39, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['simple_if_2', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/simple_if_2.sol";

contract simple_if_2_Test is Test {
	Csi2 csi20;
	Csi2 csi21;
	Csi2 csi22;
	function setUp() public {
		csi20 = new Csi2();
		csi21 = new Csi2();
		csi22 = new Csi2();
	}
	function test_simple_if_2_0() public {
		vm.prank(0x6B5fDAbeca4d34f2000000000000000000000000);
		csi20.simple_if_2( 1); //simple_if_2__38("address(this).balance=7719", 0, 0, 1)
	}
	function test_simple_if_2_1() public {
		vm.prank(0x55723D3C9940cFdE300000000000000000000000);
		csi21.simple_if_2( 0); //simple_if_2__38("address(this).balance=7719", 0, 0, 0)
	}
	function test_simple_if_2_2() public {
		vm.prank(0x2F96B944719f2414900000000000000000000000);
		csi22.simple_if_2( 5); //simple_if_2__38("address(this).balance=7719", 0, 0, 5)
	}
}
