//Generated Test by TG
//[[['Cr1', 'contract', 83, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['add', 35, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'uint', 'y'], ['f', 82, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/return_1.sol";

contract return_1_Test is Test {
	Cr1 cr10;
	Cr1 cr11;
	Cr1 cr12;
	Cr1 cr13;
	function setUp() public {
		cr10 = new Cr1();
		cr11 = new Cr1();
		cr12 = new Cr1();
		cr13 = new Cr1();
	}
	function test_return_1_0() public {
		vm.prank(0x85209823B809e7c0000000000000000000000000);
		cr10.add( 0, 0); //add__35("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_return_1_1() public {
		vm.prank(0x1ED0fe7bc734348Ec00000000000000000000000);
		cr11.add( 0, 1); //add__35("address(this).balance=7719", 0, 0, 0, 1)
	}
	function test_return_1_2() public {
		vm.prank(0x452b26152ae6B967D00000000000000000000000);
		cr12.add( 0, 2); //add__35("address(this).balance=7719", 0, 0, 0, 2)
	}
	function test_return_1_3() public {
		vm.prank(0x3151d2a1309f584A600000000000000000000000);
		cr13.add( 0, 3); //add__35("address(this).balance=21238", 0, 0, 0, 3)
	}
}
