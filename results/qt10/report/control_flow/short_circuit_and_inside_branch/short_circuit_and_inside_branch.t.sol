//Generated Test by TG
//[[['cs3', 'contract', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 49, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/short_circuit_and_inside_branch.sol";

contract short_circuit_and_inside_branch_Test is Test {
	cs3 cs30;
	function setUp() public {
		cs30 = new cs3();
	}
	function test_short_circuit_and_inside_branch_0() public {
		vm.prank(0xD3dC7aA859Bc2d80000000000000000000000000);
		cs30.g(); //g__49("address(this).balance=7719", 0, 0)
	}
}
