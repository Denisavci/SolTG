//Generated Test by TG
//[[['A7', 'contract', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f7', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']], [['B7', 'contract', 105, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f7', 86, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_y'], ['g7', 104, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_7.sol";

contract constructor_7_Test is Test {
	A7 a70;
	B7 b70;
	A7 a71;
	B7 b71;
	A7 a72;
	B7 b72;
	A7 a73;
	B7 b73;
	A7 a74;
	B7 b74;
	A7 a75;
	B7 b75;
	A7 a76;
	B7 b76;
	function setUp() public {
		b70 = new B7();
		b71 = new B7();
		b72 = new B7();
		b73 = new B7();
		b74 = new B7();
		b75 = new B7();
		b76 = new B7();
	}
	function test_constructor_7_0() public {
		vm.prank(0xd303239B19Cf3A70000000000000000000000000);
		b70.f7(); //f7__36("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_1() public {
		vm.prank(0x23e79C1a93F97835500000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=7719", 0, 0)
		vm.prank(0x305d9B12f90276dA100000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=21238", 0, 0)
	}
	function test_constructor_7_2() public {
		vm.prank(0x7d8b46f879D44A09000000000000000000000000);
		b72.g7(); //g7__104("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_3() public {
		vm.prank(0x566e5aFA66cDd3bc300000000000000000000000);
		b73.f7( 0); //f7__86("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_7_4() public {
		vm.prank(0x2CC88a956168E43DD00000000000000000000000);
		b74.f7( ); //f7__86("address(this).balance=7719", 0, 0, )
	}
	function test_constructor_7_5() public {
		vm.prank(0x1D04224da35e8AE3C00000000000000000000000);
		b75.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x3150B9D31EFe08F5b00000000000000000000000);
		b75.f7( 0); //f7__86("address(this).balance=21238", 0, 0, 0)
	}
	function test_constructor_7_6() public {
		vm.prank(0x15b24C5a18AD99e5D00000000000000000000000);
		b76.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x111C5C1c4f2234D3400000000000000000000000);
		b76.f7( ); //f7__86("address(this).balance=21238", 0, 0, )
	}
}
