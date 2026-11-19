//Generated Test by TG
//[[['Cwb6', 'contract', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1_infinite.sol";

contract while_1_infinite_Test is Test {
	Cwb6 cwb60;
	Cwb6 cwb61;
	function setUp() public {
		cwb60 = new Cwb6();
		cwb61 = new Cwb6();
	}
	function test_while_1_infinite_0() public {
		vm.prank(0x3F04c32E8d17601e500000000000000000000000);
		cwb60.f( 10, false); //f__37("address(this).balance=7719", 0, 0, 10, false)
	}
	function test_while_1_infinite_1() public {
		vm.prank(0x40FE1cCb95178649e00000000000000000000000);
		cwb61.f( 9, true); //f__37("address(this).balance=7719", 0, 0, 9, true)
	}
}
