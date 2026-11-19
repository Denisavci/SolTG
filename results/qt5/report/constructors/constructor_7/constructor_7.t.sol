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
		vm.prank(0x7D3521590c18DF16000000000000000000000000);
		b70.f7(); //f7__36("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_1() public {
		vm.prank(0x201012dB361BB501e00000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=7719", 0, 0)
		vm.prank(0x3e9c9f8CC8702c63400000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=21238", 0, 0)
	}
	function test_constructor_7_2() public {
		vm.prank(0x4822E36d087c04DBC00000000000000000000000);
		b72.g7(); //g7__104("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_3() public {
		vm.prank(0x2C347B98C737D48f000000000000000000000000);
		b73.f7( 0); //f7__86("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_7_4() public {
		vm.prank(0x498F8A6c245D0755d00000000000000000000000);
		b74.f7( ); //f7__86("address(this).balance=7719", 0, 0, )
	}
	function test_constructor_7_5() public {
		vm.prank(0x23E85bcf5Dfaa576b00000000000000000000000);
		b75.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x2b4eC5201f75654be00000000000000000000000);
		b75.f7( 0); //f7__86("address(this).balance=21238", 0, 0, 0)
	}
	function test_constructor_7_6() public {
		vm.prank(0x1b8284691db521d4000000000000000000000000);
		b76.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x23D39Ea22Ee6c328300000000000000000000000);
		b76.f7( ); //f7__86("address(this).balance=21238", 0, 0, )
	}
}
