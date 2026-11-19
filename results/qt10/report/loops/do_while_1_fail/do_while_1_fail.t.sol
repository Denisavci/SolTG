//Generated Test by TG
//[[['Cdw1', 'contract', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 29, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/loops/do_while_1_fail.sol";

contract do_while_1_fail_Test is Test {
	Cdw1 cdw10;
	Cdw1 cdw11;
	function setUp() public {
		cdw10 = new Cdw1();
		cdw11 = new Cdw1();
	}
	function test_do_while_1_fail_0() public {
		vm.prank(0x35c8EB74FfbC130D200000000000000000000000);
		cdw10.f( 9); //f__29("address(this).balance=7719", 0, 0, 9)
	}
	function test_do_while_1_fail_1() public {
		vm.prank(0x11bAdBCA17b97236400000000000000000000000);
		cdw11.f( 8); //f__29("address(this).balance=7719", 0, 0, 8)
	}
}
