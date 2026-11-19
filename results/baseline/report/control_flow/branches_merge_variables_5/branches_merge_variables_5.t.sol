//Generated Test by TG
//[[['Cb7', 'contract', 31, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_merge_variables_5.sol";

contract branches_merge_variables_5_Test is Test {
	Cb7 cb70;
	Cb7 cb71;
	function setUp() public {
		cb70 = new Cb7();
		cb71 = new Cb7();
	}
	function test_branches_merge_variables_5_0() public {
		vm.prank(0x12B4AfBDB5e45Fe5e00000000000000000000000);
		cb70.f( 11); //f__30("address(this).balance=7719", 0, 0, 11)
	}
	function test_branches_merge_variables_5_1() public {
		vm.prank(0x22Bdc204e484AdC7C00000000000000000000000);
		cb71.f( 0); //f__30("address(this).balance=7719", 0, 0, 0)
	}
}
