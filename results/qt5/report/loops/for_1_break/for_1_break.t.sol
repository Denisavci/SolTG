//Generated Test by TG
//[[['Cfb1', 'contract', 37, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x', 'bool', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/loops/for_1_break.sol";

contract for_1_break_Test is Test {
	Cfb1 cfb10;
	Cfb1 cfb11;
	function setUp() public {
		cfb10 = new Cfb1();
		cfb11 = new Cfb1();
	}
	function test_for_1_break_0() public {
		vm.prank(0x3b26F006a17dcDc2100000000000000000000000);
		cfb10.f( 0, false); //f__36("address(this).balance=7719", 0, 0, 0, false)
	}
	function test_for_1_break_1() public {
		vm.prank(0x3722286A050f2B07E00000000000000000000000);
		cfb11.f( 9, true); //f__36("address(this).balance=7719", 0, 0, 9, true)
	}
}
