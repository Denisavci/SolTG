//Generated Test by TG
//[[['Cb2', 'contract', 67, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 66, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_inside_modifiers_1.sol";

contract branches_inside_modifiers_1_Test is Test {
	Cb2 cb20;
	function setUp() public {
		cb20 = new Cb2();
	}
	function test_branches_inside_modifiers_1_0() public {
		vm.prank(0x13A37e131ee711DBa00000000000000000000000);
		cb20.g(); //g__66("address(this).balance=7719", 0, 0)
	}
}
