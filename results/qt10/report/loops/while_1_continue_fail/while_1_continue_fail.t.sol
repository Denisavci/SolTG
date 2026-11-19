//Generated Test by TG
//[[['Cwb5', 'contract', 42, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 41, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_1_continue_fail.sol";

contract while_1_continue_fail_Test is Test {
	Cwb5 cwb50;
	Cwb5 cwb51;
	Cwb5 cwb52;
	function setUp() public {
		cwb50 = new Cwb5();
		cwb51 = new Cwb5();
		cwb52 = new Cwb5();
	}
	function test_while_1_continue_fail_0() public {
		vm.prank(0x1b6e37EEe020b930000000000000000000000000);
		cwb50.f( 10, false); //f__41("address(this).balance=7719", 0, 0, 10, false)
	}
	function test_while_1_continue_fail_1() public {
		vm.prank(0x14E476a58ade2c55d00000000000000000000000);
		cwb51.f( 0, true); //f__41("address(this).balance=7719", 0, 0, 0, true)
	}
	function test_while_1_continue_fail_2() public {
		vm.prank(0x1Ca415a19470628df00000000000000000000000);
		cwb52.f( 0, false); //f__41("address(this).balance=7719", 0, 0, 0, false)
	}
}
