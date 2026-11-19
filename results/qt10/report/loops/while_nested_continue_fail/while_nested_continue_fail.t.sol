//Generated Test by TG
//[[['Cwb12', 'contract', 73, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 72, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y', 'bool', 'b', 'bool', 'c']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_nested_continue_fail.sol";

contract while_nested_continue_fail_Test is Test {
	Cwb12 cwb120;
	Cwb12 cwb121;
	Cwb12 cwb122;
	function setUp() public {
		cwb120 = new Cwb12();
		cwb121 = new Cwb12();
		cwb122 = new Cwb12();
	}
	function test_while_nested_continue_fail_0() public {
		vm.prank(0x39cb60141D4aEfD3A00000000000000000000000);
		cwb120.f( 0, 0, true, false); //f__72("address(this).balance=7719", 0, 0, 0, 0, true, false)
	}
	function test_while_nested_continue_fail_1() public {
		vm.prank(0x3E333F19Bae39334A00000000000000000000000);
		cwb121.f( 0, 0, false, false); //f__72("address(this).balance=7719", 0, 0, 0, 0, false, false)
	}
	function test_while_nested_continue_fail_2() public {
		vm.prank(0x231d25b2518A2bc2000000000000000000000000);
		cwb122.f( 0, 0, false, true); //f__72("address(this).balance=7719", 0, 0, 0, 0, false, true)
	}
}
