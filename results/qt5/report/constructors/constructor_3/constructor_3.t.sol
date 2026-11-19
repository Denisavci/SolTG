//Generated Test by TG
//[[['A3', 'contract', 27, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'a'], ['f3', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']], [['B3', 'contract', 94, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'b'], ['f3', 75, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g3', 93, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_3.sol";

contract constructor_3_Test is Test {
	A3 a30;
	B3 b30;
	A3 a31;
	B3 b31;
	A3 a32;
	B3 b32;
	A3 a33;
	B3 b33;
	A3 a34;
	B3 b34;
	function setUp() public {
		b30 = new B3( 0);
		b31 = new B3( 0);
		b32 = new B3( 0);
		b33 = new B3( 4);
		b34 = new B3( 8);
	}
	function test_constructor_3_0() public {
		vm.prank(0x8cBCa16bdbdC1628000000000000000000000000);
		b30.f3(); //f3__26("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_1() public {
		vm.prank(0x2a38Ae3FD257facd400000000000000000000000);
		b31.g3(); //g3__93("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_2() public {
		vm.prank(0x28dF3B7fcB52a344c00000000000000000000000);
		b32.f3(); //f3__75("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_3() public {
		vm.prank(0x1736e81e2476032D600000000000000000000000);
		b33.f3(); //f3__75("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_4() public {
		vm.prank(0x3d28F1FFd779C75bf00000000000000000000000);
		b34.f3(); //f3__75("address(this).balance=7719", 0, 0)
	}
}
