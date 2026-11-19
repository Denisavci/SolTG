//Generated Test by TG
//[[['C2', 'contract', 89, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'a', 'uint', 'b'], ['f2', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x'], ['f2', 88, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x', 'uint', '_y']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_2_fun_overloading.sol";

contract constructor_2_fun_overloading_Test is Test {
	C2 c20;
	C2 c21;
	C2 c22;
	C2 c23;
	C2 c24;
	function setUp() public {
		c20 = new C2( 0, 1);
		c21 = new C2( 0, 1);
		c22 = new C2( 0, 1);
		c23 = new C2( 1, 2);
		c24 = new C2( 0, 3);
	}
	function test_constructor_2_fun_overloading_0() public {
		vm.prank(0x538508d17dF546A3000000000000000000000000);
		c20.f2( 100); //f2__55("address(this).balance=12700", 0, 0, 100)
	}
	function test_constructor_2_fun_overloading_1() public {
		vm.prank(0x2e42D39f59039163000000000000000000000000);
		c21.f2( 0); //f2__55("address(this).balance=8855", 0, 0, 0)
	}
	function test_constructor_2_fun_overloading_2() public {
		vm.prank(0x2559f87fBA8cef25D00000000000000000000000);
		c22.f2( 101); //f2__55("address(this).balance=7719", 0, 0, 101)
	}
	function test_constructor_2_fun_overloading_3() public {
		vm.prank(0x41d2115ea0D76a35E00000000000000000000000);
		c23.f2( 0); //f2__55("address(this).balance=11797", 0, 0, 0)
	}
	function test_constructor_2_fun_overloading_4() public {
		vm.prank(0xbae166d3b527a7F0000000000000000000000000);
		c24.f2( 0); //f2__55("address(this).balance=7719", 0, 0, 0)
	}
}
