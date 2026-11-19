//Generated Test by TG
//[[['A9', 'contract', 23, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['inc9', 22, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']], [['B9', 'contract', 54, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 53, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_9.sol";

contract constructor_9_Test is Test {
	A9 a90;
	B9 b90;
	A9 a91;
	B9 b91;
	function setUp() public {
		b90 = new B9();
		b91 = new B9();
	}
	function test_constructor_9_0() public {
		vm.prank(0x1717147B46aDcE0F200000000000000000000000);
		b90.inc9(); //inc9__22("address(this).balance=7719", 0, 0)
	}
	function test_constructor_9_1() public {
		vm.prank(0x2f6bD39099149F93400000000000000000000000);
		b91.f(); //f__53("address(this).balance=21238", 0, 0)
	}
}
