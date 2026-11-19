//Generated Test by TG
//[[['Cb4', 'contract', 67, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 66, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_inside_modifiers_3.sol";

contract branches_inside_modifiers_3_Test is Test {
	Cb4 cb40;
	function setUp() public {
		cb40 = new Cb4();
	}
	function test_branches_inside_modifiers_3_0() public {
		vm.prank(0xD8c8044A77605c46000000000000000000000000);
		cb40.g(); //g__66("address(this).balance=8855", 0, 0)
	}
}
