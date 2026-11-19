//Generated Test by TG
//[[['C5', 'contract', 89, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'a', 'uint', 'b'], ['f5', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x'], ['g5', 88, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x', 'uint', '_y']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_5.sol";

contract constructor_5_Test is Test {
	C5 c50;
	C5 c51;
	C5 c52;
	C5 c53;
	C5 c54;
	function setUp() public {
		c50 = new C5( 0, 1);
		c51 = new C5( 0, 1);
		c52 = new C5( 0, 1);
		c53 = new C5( 1, 2);
		c54 = new C5( 0, 3);
	}
	function test_constructor_5_0() public {
		vm.prank(0x88719E1041A8a15B000000000000000000000000);
		c50.g5( 100, 99); //g5__88("address(this).balance=12700", 0, 0, 100, 99)
	}
	function test_constructor_5_1() public {
		vm.prank(0x315eF094eDD38f1aA00000000000000000000000);
		c51.g5( 0, 100); //g5__88("address(this).balance=8855", 0, 0, 0, 100)
	}
	function test_constructor_5_2() public {
		vm.prank(0x290cC0e48DE5A04Af00000000000000000000000);
		c52.g5( 101, 0); //g5__88("address(this).balance=7719", 0, 0, 101, 0)
	}
	function test_constructor_5_3() public {
		vm.prank(0x473A2503f53b7947800000000000000000000000);
		c53.f5( 0); //f5__55("address(this).balance=11797", 0, 0, 0)
	}
	function test_constructor_5_4() public {
		vm.prank(0x5136A8c506c98Ee7d00000000000000000000000);
		c54.f5( 0); //f5__55("address(this).balance=7719", 0, 0, 0)
	}
}
