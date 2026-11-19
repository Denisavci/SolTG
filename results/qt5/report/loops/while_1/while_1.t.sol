//Generated Test by TG
//[[['Cwb1', 'contract', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1.sol";

contract while_1_Test is Test {
	Cwb1 cwb10;
	Cwb1 cwb11;
	function setUp() public {
		cwb10 = new Cwb1();
		cwb11 = new Cwb1();
	}
	function test_while_1_0() public {
		vm.prank(0x3046A90d3FA46eD1600000000000000000000000);
		cwb10.f( 10, false); //f__37("address(this).balance=7719", 0, 0, 10, false)
	}
	function test_while_1_1() public {
		vm.prank(0x373F74C33321AF2B000000000000000000000000);
		cwb11.f( 9, true); //f__37("address(this).balance=7719", 0, 0, 9, true)
	}
}
