//Generated Test by TG
//[[['Csc', 'contract', 63, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['call_1', 34, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['call_2', 62, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/seq_calls.sol";

contract seq_calls_Test is Test {
	Csc csc0;
	Csc csc1;
	Csc csc2;
	Csc csc3;
	Csc csc4;
	function setUp() public {
		csc0 = new Csc();
		csc1 = new Csc();
		csc2 = new Csc();
		csc3 = new Csc();
		csc4 = new Csc();
	}
	function test_seq_calls_0() public {
		vm.prank(0x96B4d51873feE052000000000000000000000000);
		csc0.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_1() public {
		vm.prank(0x677b9b286fF14279000000000000000000000000);
		csc1.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_2() public {
		vm.prank(0xF49626C2eefAC01e000000000000000000000000);
		csc2.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
		vm.prank(0x488181DD7dbA1733a00000000000000000000000);
		csc2.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_3() public {
		vm.prank(0x3cf2c19289AFa657900000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x47f1B258B11FF6fdD00000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_4() public {
		vm.prank(0x4Bb86c31195F7F47F00000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x3ad2eb4e1b851ab2c00000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
		vm.prank(0x4047517936E7Cec6000000000000000000000000);
		csc4.call_2(); //call_2__62("address(this).balance=2437", 0, 0)
	}
}
