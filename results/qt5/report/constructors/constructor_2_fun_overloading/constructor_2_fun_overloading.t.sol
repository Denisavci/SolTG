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
		vm.prank(0x1B36B3b50c926cDad00000000000000000000000);
		c20.f2( 100); //f2__55("address(this).balance=12700", 0, 0, 100)
	}
	function test_constructor_2_fun_overloading_1() public {
		vm.prank(0x235A3CadCcDb8aa6700000000000000000000000);
		c21.f2( 0); //f2__55("address(this).balance=8855", 0, 0, 0)
	}
	function test_constructor_2_fun_overloading_2() public {
		vm.prank(0x388821777f9f80d6500000000000000000000000);
		c22.f2( 101); //f2__55("address(this).balance=7719", 0, 0, 101)
	}
	function test_constructor_2_fun_overloading_3() public {
		vm.prank(0x4ea6BE53815368C6C00000000000000000000000);
		c23.f2( 0); //f2__55("address(this).balance=11797", 0, 0, 0)
	}
	function test_constructor_2_fun_overloading_4() public {
		vm.prank(0x45B56323AF393659d00000000000000000000000);
		c24.f2( 0); //f2__55("address(this).balance=7719", 0, 0, 0)
	}
}
