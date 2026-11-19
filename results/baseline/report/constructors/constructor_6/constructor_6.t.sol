//Generated Test by TG
//[[['A6', 'contract', 25, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f6', 24, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']], [['B6', 'contract', 89, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f6', 70, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g6', 88, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_6.sol";

contract constructor_6_Test is Test {
	A6 a60;
	B6 b60;
	A6 a61;
	B6 b61;
	A6 a62;
	B6 b62;
	A6 a63;
	B6 b63;
	function setUp() public {
		b60 = new B6();
		b61 = new B6();
		b62 = new B6();
		b63 = new B6();
	}
	function test_constructor_6_0() public {
		vm.prank(0x118831129122b7c0500000000000000000000000);
		b60.f6(); //f6__24("address(this).balance=7719", 0, 0)
	}
	function test_constructor_6_1() public {
		vm.prank(0x3c9FA24614EC89f5600000000000000000000000);
		b61.g6(); //g6__88("address(this).balance=7719", 0, 0)
	}
	function test_constructor_6_2() public {
		vm.prank(0x502493C45f3e9603000000000000000000000000);
		b62.f6(); //f6__70("address(this).balance=7719", 0, 0)
	}
	function test_constructor_6_3() public {
		vm.prank(0x5668ebd331f58847000000000000000000000000);
		b63.g6(); //g6__88("address(this).balance=7719", 0, 0)
		vm.prank(0x2Ed7Ad05646d348ea00000000000000000000000);
		b63.f6(); //f6__70("address(this).balance=21238", 0, 0)
	}
}
