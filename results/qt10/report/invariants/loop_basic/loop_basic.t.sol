//Generated Test by TG
//[[['Simplelb', 'contract', 29, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 28, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/invariants/loop_basic.sol";

contract loop_basic_Test is Test {
	Simplelb simplelb0;
	function setUp() public {
		simplelb0 = new Simplelb();
	}
	function test_loop_basic_0() public {
		vm.prank(0x3e8f6ed6Fb96727B700000000000000000000000);
		simplelb0.f( 1); //f__28("address(this).balance=7719", 0, 0, 1)
	}
}
