//Generated Test by TG
//[[['Co', 'contract', 59, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x'], ['f', 58, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/overloading.sol";

contract overloading_Test is Test {
	Co co0;
	Co co1;
	Co co2;
	function setUp() public {
		co0 = new Co();
		co1 = new Co();
		co2 = new Co();
	}
	function test_overloading_0() public {
		vm.prank(0x2c7Bde1bfF0d11CCF00000000000000000000000);
		co0.f( 1); //f__30("address(this).balance=7719", 0, 0, 1)
	}
	function test_overloading_1() public {
		vm.prank(0x1b0F0d6F3794d1e9f00000000000000000000000);
		co1.f( 0); //f__30("address(this).balance=7719", 0, 0, 0)
	}
	function test_overloading_2() public {
		vm.prank(0x1A9e8BD7a72cEb54c00000000000000000000000);
		co2.f( 1); //f__30("address(this).balance=21238", 0, 0, 1)
	}
}
