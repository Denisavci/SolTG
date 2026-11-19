//Generated Test by TG
//[[['Cwb4', 'contract', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1_continue.sol";

contract while_1_continue_Test is Test {
	Cwb4 cwb40;
	Cwb4 cwb41;
	function setUp() public {
		cwb40 = new Cwb4();
		cwb41 = new Cwb4();
	}
	function test_while_1_continue_0() public {
		vm.prank(0x4689d4Cd2D3CB2AC600000000000000000000000);
		cwb40.f( 0, true); //f__36("address(this).balance=7719", 0, 0, 0, true)
	}
	function test_while_1_continue_1() public {
		vm.prank(0x172e679F1c600238300000000000000000000000);
		cwb41.f( 9, false); //f__36("address(this).balance=7719", 0, 0, 9, false)
	}
}
