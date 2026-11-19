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
		vm.prank(0x2E51d158A9DE8C8fe00000000000000000000000);
		csc0.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_1() public {
		vm.prank(0x1354c9d6984763fb600000000000000000000000);
		csc1.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
	}
	function test_seq_calls_2() public {
		vm.prank(0x55773d5aF4Bf19F1100000000000000000000000);
		csc2.call_2(); //call_2__62("address(this).balance=7719", 0, 0)
		vm.prank(0x1d529f9c1ca2a0a1500000000000000000000000);
		csc2.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_3() public {
		vm.prank(0x1C51e9204b0626a4400000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x1F0E491Dd95c2940000000000000000000000000);
		csc3.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
	}
	function test_seq_calls_4() public {
		vm.prank(0x322bCb609069B4e3F00000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=7719", 0, 0)
		vm.prank(0x456b24779d34C641500000000000000000000000);
		csc4.call_1(); //call_1__34("address(this).balance=21238", 0, 0)
		vm.prank(0x33210E74a71F0f8CA00000000000000000000000);
		csc4.call_2(); //call_2__62("address(this).balance=2437", 0, 0)
	}
}
