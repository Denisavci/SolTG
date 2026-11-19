//Generated Test by TG
//[[['Cwb3', 'contract', 33, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1_break_fail.sol";

contract while_1_break_fail_Test is Test {
	Cwb3 cwb30;
	Cwb3 cwb31;
	function setUp() public {
		cwb30 = new Cwb3();
		cwb31 = new Cwb3();
	}
	function test_while_1_break_fail_0() public {
		vm.prank(0x4D696ef540Ed4B9cb00000000000000000000000);
		cwb30.f( 0, false); //f__32("address(this).balance=7719", 0, 0, 0, false)
	}
	function test_while_1_break_fail_1() public {
		vm.prank(0x1Df0d250577E8681700000000000000000000000);
		cwb31.f( 9, true); //f__32("address(this).balance=7719", 0, 0, 9, true)
	}
}
