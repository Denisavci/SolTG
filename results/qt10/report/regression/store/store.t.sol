//Generated Test by TG
//[[['Storage', 'contract', 51, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['balanceCheck', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['deposit', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/store.sol";

contract store_Test is Test {
	Storage storage0;
	Storage storage1;
	function setUp() public {
		storage0 = new Storage();
		storage1 = new Storage();
	}
	function test_store_0() public {
		vm.prank(0x279dea10dcFDBC33700000000000000000000000);
		storage0.deposit(); //deposit__50("address(this).balance=7719", 0, 0)
	}
	function test_store_1() public {
		vm.prank(0x45191e6E8aF4DB63300000000000000000000000);
		storage1.balanceCheck(); //balanceCheck__32("address(this).balance=7719", 0, 0)
	}
}
