//Generated Test by TG
//[[['A8', 'contract', 29, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['get8', 18, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['set8', 28, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x']], [['B8', 'contract', 90, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f8', 89, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_8.sol";

contract constructor_8_Test is Test {
	A8 a80;
	B8 b80;
	A8 a81;
	B8 b81;
	A8 a82;
	B8 b82;
	function setUp() public {
		b80 = new B8();
		b81 = new B8();
		b82 = new B8();
	}
	function test_constructor_8_0() public {
		vm.prank(0x3EEFc82d6558097Ef00000000000000000000000);
		b80.set8( 0); //set8__28("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_8_1() public {
		vm.prank(0x39424CCcB4657c3eB00000000000000000000000);
		b81.get8(); //get8__18("address(this).balance=7719", 0, 0)
	}
	function test_constructor_8_2() public {
		vm.prank(0x44A32A5199425284400000000000000000000000);
		b82.f8(); //f8__89("address(this).balance=21238", 0, 0)
	}
}
