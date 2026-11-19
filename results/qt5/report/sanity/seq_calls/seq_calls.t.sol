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
		vm.prank(0x1e330F2BEcD3dA57A00000000000000000000000);
		csc0.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_1() public {
		vm.prank(0x3be73d923B00C409600000000000000000000000);
		csc1.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_2() public {
		vm.prank(0xdA08F2a280d19669000000000000000000000000);
		csc2.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
		vm.prank(0x4ffad0E895d0a3a1900000000000000000000000);
		csc2.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_3() public {
		vm.prank(0x4fB38223bE82dFC5000000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x185Ea04f944Bb290500000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_4() public {
		vm.prank(0x4BeE7E2bab75E730f00000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x10E63425AfD7575e000000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
		vm.prank(0x23EAC2826f5ecA12e00000000000000000000000);
		csc4.call_2(); //call_2__62("address(this).balance=2437", 0, 0)
	}
}
