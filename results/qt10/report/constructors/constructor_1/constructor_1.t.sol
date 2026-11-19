//Generated Test by TG
//[[['C1', 'contract', 80, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'b'], ['f1', 57, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x'], ['set_max1', 79, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x', 'uint', '_y']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_1.sol";

contract constructor_1_Test is Test {
	C1 c10;
	C1 c11;
	C1 c12;
	C1 c13;
	function setUp() public {
		c10 = new C1( 1);
		c11 = new C1( 1);
		c12 = new C1( 1);
		c13 = new C1( 1);
	}
	function test_constructor_1_0() public {
		vm.prank(0x494c6B2422235597600000000000000000000000);
		c10.set_max1( 1, 0); //set_max1__79("address(this).balance=7719", 0, 0, 1, 0)
	}
	function test_constructor_1_1() public {
		vm.prank(0x3d35B64e69Bf5bddD00000000000000000000000);
		c11.set_max1( 0, 0); //set_max1__79("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_constructor_1_2() public {
		vm.prank(0x1ACcdC4cA7A98849e00000000000000000000000);
		c12.f1( 0); //f1__57("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_1_3() public {
		vm.prank(0x312a0B2036aE47bb400000000000000000000000);
		c13.set_max1( 3, 0); //set_max1__79("address(this).balance=7719", 0, 0, 3, 0)
		vm.prank(0x200219642Ef13931b00000000000000000000000);
		c13.f1( 0); //f1__57("address(this).balance=21238", 0, 0, 0)
	}
}
