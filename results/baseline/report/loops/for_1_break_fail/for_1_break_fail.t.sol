//Generated Test by TG
//[[['Cfb2', 'contract', 27, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/for_1_break_fail.sol";

contract for_1_break_fail_Test is Test {
	Cfb2 cfb20;
	Cfb2 cfb21;
	Cfb2 cfb22;
	function setUp() public {
		cfb20 = new Cfb2();
		cfb21 = new Cfb2();
		cfb22 = new Cfb2();
	}
	function test_for_1_break_fail_0() public {
		vm.prank(0x37ad60807Cfe3D81e00000000000000000000000);
		cfb20.f( 10, false); //f__26("address(this).balance=7719", 0, 0, 10, false)
	}
	function test_for_1_break_fail_1() public {
		vm.prank(0x1455476DD7eF5a3b300000000000000000000000);
		cfb21.f( 0, false); //f__26("address(this).balance=7719", 0, 0, 0, false)
	}
	function test_for_1_break_fail_2() public {
		vm.prank(0x3Fa07a37F50c38b0300000000000000000000000);
		cfb22.f( 9, true); //f__26("address(this).balance=7719", 0, 0, 9, true)
	}
}
