//Generated Test by TG
//[[['Cb3', 'contract', 70, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 69, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_inside_modifiers_2.sol";

contract branches_inside_modifiers_2_Test is Test {
	Cb3 cb30;
	function setUp() public {
		cb30 = new Cb3();
	}
	function test_branches_inside_modifiers_2_0() public {
		vm.prank(0x3Bc86f26f00F962A800000000000000000000000);
		cb30.g(); //g__69("address(this).balance=10450", 0, 0)
	}
}
