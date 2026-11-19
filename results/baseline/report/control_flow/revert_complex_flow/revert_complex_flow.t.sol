//Generated Test by TG
//[[['Cr5', 'contract', 40, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 39, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'bool', 'b', 'uint', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/revert_complex_flow.sol";

contract revert_complex_flow_Test is Test {
	Cr5 cr50;
	function setUp() public {
		cr50 = new Cr5();
	}
	function test_revert_complex_flow_0() public {
		vm.prank(0x47cdb2876499667b000000000000000000000000);
		cr50.f( false, 0); //f__39("address(this).balance=7719", 0, 0, false, 0)
	}
}
