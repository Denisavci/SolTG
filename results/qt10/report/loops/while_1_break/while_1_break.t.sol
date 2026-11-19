//Generated Test by TG
//[[['Cwb2', 'contract', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1_break.sol";

contract while_1_break_Test is Test {
	Cwb2 cwb20;
	Cwb2 cwb21;
	function setUp() public {
		cwb20 = new Cwb2();
		cwb21 = new Cwb2();
	}
	function test_while_1_break_0() public {
		vm.prank(0x4e93ab0C93cc34a1d00000000000000000000000);
		cwb20.f( 0, false); //f__36("address(this).balance=7719", 0, 0, 0, false)
	}
	function test_while_1_break_1() public {
		vm.prank(0x3956712418596b97100000000000000000000000);
		cwb21.f( 9, true); //f__36("address(this).balance=7719", 0, 0, 9, true)
	}
}
