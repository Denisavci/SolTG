//Generated Test by TG
//[[['Storage', 'contract', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['balanceCheck', 31, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['set_state_var', 49, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'n']]]
import "forge-std/Test.sol";
import "../src/regression/store_state.sol";

contract store_state_Test is Test {
	Storage storage0;
	Storage storage1;
	Storage storage2;
	function setUp() public {
		storage0 = new Storage();
		storage1 = new Storage();
		storage2 = new Storage();
	}
	function test_store_state_0() public {
		vm.prank(0x9850000000000000000000000000000000000000);
		storage0.set_state_var( 0); //set_state_var__49("address(this).balance=7719", 0, 2437, 0)
	}
	function test_store_state_1() public {
		vm.prank(0x52F6000000000000000000000000000000000000);
		storage1.balanceCheck(); //balanceCheck__31("address(this).balance=7719", 0, 21238)
	}
	function test_store_state_2() public {
		vm.prank(0x9850000000000000000000000000000000000000);
		storage2.balanceCheck(); //balanceCheck__31("address(this).balance=7719", 0, 2437)
	}
}
