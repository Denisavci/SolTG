//Generated Test by TG
//[[['Csi6', 'contract', 68, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['check', 41, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/simple_if_tuple.sol";

contract simple_if_tuple_Test is Test {
	Csi6 csi60;
	function setUp() public {
		csi60 = new Csi6();
	}
	function test_simple_if_tuple_0() public {
		vm.prank(0x127242aD14a3cC13C00000000000000000000000);
		csi60.check(); //check__41("address(this).balance=8855", 0, 0)
	}
}
