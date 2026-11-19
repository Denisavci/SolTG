//Generated Test by TG
//[[['Cwb10', 'contract', 78, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 77, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y', 'bool', 'b', 'bool', 'c']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_nested_break_fail.sol";

contract while_nested_break_fail_Test is Test {
	Cwb10 cwb100;
	Cwb10 cwb101;
	Cwb10 cwb102;
	function setUp() public {
		cwb100 = new Cwb10();
		cwb101 = new Cwb10();
		cwb102 = new Cwb10();
	}
	function test_while_nested_break_fail_0() public {
		vm.prank(0x32E1D508Dd1EB956b00000000000000000000000);
		cwb100.f( 9, 0, true, false); //f__77("address(this).balance=7719", 0, 0, 9, 0, true, false)
	}
	function test_while_nested_break_fail_1() public {
		vm.prank(0x136417356C766650C00000000000000000000000);
		cwb101.f( 0, 0, false, false); //f__77("address(this).balance=7719", 0, 0, 0, 0, false, false)
	}
	function test_while_nested_break_fail_2() public {
		vm.prank(0x153a6Dabf770A4be000000000000000000000000);
		cwb102.f( 0, 9, false, true); //f__77("address(this).balance=7719", 0, 0, 0, 9, false, true)
	}
}
