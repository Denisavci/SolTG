//Generated Test by TG
//[[['Ci1', 'contract', 41, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 40, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/branches_in_modifiers.sol";

contract branches_in_modifiers_Test is Test {
	Ci1 ci10;
	function setUp() public {
		ci10 = new Ci1();
	}
	function test_branches_in_modifiers_0() public {
		vm.prank(0x126839790Aa24F47400000000000000000000000);
		ci10.f(); //f__40("address(this).balance=7719", 0, 0)
	}
}
