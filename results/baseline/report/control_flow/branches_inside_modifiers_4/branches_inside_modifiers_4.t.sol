//Generated Test by TG
//[[['Cb5', 'contract', 70, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 69, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_inside_modifiers_4.sol";

contract branches_inside_modifiers_4_Test is Test {
	Cb5 cb50;
	function setUp() public {
		cb50 = new Cb5();
	}
	function test_branches_inside_modifiers_4_0() public {
		vm.prank(0x2877F12E0B89699e000000000000000000000000);
		cb50.g(); //g__69("address(this).balance=21238", 0, 0)
	}
}
