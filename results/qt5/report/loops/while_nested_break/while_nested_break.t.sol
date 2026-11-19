//Generated Test by TG
//[[['Cwb9', 'contract', 78, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 77, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y', 'bool', 'b', 'bool', 'c']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_nested_break.sol";

contract while_nested_break_Test is Test {
	Cwb9 cwb90;
	Cwb9 cwb91;
	Cwb9 cwb92;
	function setUp() public {
		cwb90 = new Cwb9();
		cwb91 = new Cwb9();
		cwb92 = new Cwb9();
	}
	function test_while_nested_break_0() public {
		vm.prank(0x93D8df82BD9881fb000000000000000000000000);
		cwb90.f( 9, 0, true, false); //f__77("address(this).balance=7719", 0, 0, 9, 0, true, false)
	}
	function test_while_nested_break_1() public {
		vm.prank(0x35D65148eCf994FC200000000000000000000000);
		cwb91.f( 0, 0, false, false); //f__77("address(this).balance=7719", 0, 0, 0, 0, false, false)
	}
	function test_while_nested_break_2() public {
		vm.prank(0x3594f05E0A42a80aD00000000000000000000000);
		cwb92.f( 0, 9, false, true); //f__77("address(this).balance=7719", 0, 0, 0, 9, false, true)
	}
}
