//Generated Test by TG
//[[['Cfb3', 'contract', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/for_1_continue.sol";

contract for_1_continue_Test is Test {
	Cfb3 cfb30;
	Cfb3 cfb31;
	function setUp() public {
		cfb30 = new Cfb3();
		cfb31 = new Cfb3();
	}
	function test_for_1_continue_0() public {
		vm.prank(0x38221Dd82ED56b9d800000000000000000000000);
		cfb30.f( 0, true); //f__36("address(this).balance=7719", 0, 0, 0, true)
	}
	function test_for_1_continue_1() public {
		vm.prank(0x2AbE0e355224f08cc00000000000000000000000);
		cfb31.f( 9, false); //f__36("address(this).balance=7719", 0, 0, 9, false)
	}
}
