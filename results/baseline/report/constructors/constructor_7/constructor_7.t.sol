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
		vm.prank(0x364FfDfF7b851175B00000000000000000000000);
		b70.f7(); //f7__36("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_1() public {
		vm.prank(0x264C4d97F4122115900000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=7719", 0, 0)
		vm.prank(0x2729628A48642E66100000000000000000000000);
		b71.f7(); //f7__36("address(this).balance=21238", 0, 0)
	}
	function test_constructor_7_2() public {
		vm.prank(0x17f86673FFED4c9Ed00000000000000000000000);
		b72.g7(); //g7__104("address(this).balance=7719", 0, 0)
	}
	function test_constructor_7_3() public {
		vm.prank(0xaD8f28fC69DF3Be7000000000000000000000000);
		b73.f7( 0); //f7__86("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_7_4() public {
		vm.prank(0x29622F1c0A0ff4Bc800000000000000000000000);
		b74.f7( ); //f7__86("address(this).balance=7719", 0, 0, )
	}
	function test_constructor_7_5() public {
		vm.prank(0x3908841e13E1543dA00000000000000000000000);
		b75.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x2fc804D9ec6AC344900000000000000000000000);
		b75.f7( 0); //f7__86("address(this).balance=21238", 0, 0, 0)
	}
	function test_constructor_7_6() public {
		vm.prank(0x2606142D7d316cCd200000000000000000000000);
		b76.g7(); //g7__104("address(this).balance=7719", 0, 0)
		vm.prank(0x1A592C4dEb1E68c6200000000000000000000000);
		b76.f7( ); //f7__86("address(this).balance=21238", 0, 0, )
	}
}
