//Generated Test by TG
//[[['Cwb11', 'contract', 73, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 72, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y', 'bool', 'b', 'bool', 'c']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_nested_continue.sol";

contract while_nested_continue_Test is Test {
	Cwb11 cwb110;
	Cwb11 cwb111;
	Cwb11 cwb112;
	function setUp() public {
		cwb110 = new Cwb11();
		cwb111 = new Cwb11();
		cwb112 = new Cwb11();
	}
	function test_while_nested_continue_0() public {
		vm.prank(0x5119E15b9f9AE80be00000000000000000000000);
		cwb110.f( 0, 0, true, false); //f__72("address(this).balance=7719", 0, 0, 0, 0, true, false)
	}
	function test_while_nested_continue_1() public {
		vm.prank(0x2451e5A48f270300e00000000000000000000000);
		cwb111.f( 0, 0, false, false); //f__72("address(this).balance=7719", 0, 0, 0, 0, false, false)
	}
	function test_while_nested_continue_2() public {
		vm.prank(0x540832cbC47850Fcc00000000000000000000000);
		cwb112.f( 0, 0, false, true); //f__72("address(this).balance=7719", 0, 0, 0, 0, false, true)
	}
}
