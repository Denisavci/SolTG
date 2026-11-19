//Generated Test by TG
//[[['Cb6', 'contract', 27, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_merge_variables_3.sol";

contract branches_merge_variables_3_Test is Test {
	Cb6 cb60;
	Cb6 cb61;
	function setUp() public {
		cb60 = new Cb6();
		cb61 = new Cb6();
	}
	function test_branches_merge_variables_3_0() public {
		vm.prank(0x55b96B07635E4287800000000000000000000000);
		cb60.f( 11); //f__26("address(this).balance=7719", 0, 0, 11)
	}
	function test_branches_merge_variables_3_1() public {
		vm.prank(0x3011aD87D37d97C4A00000000000000000000000);
		cb61.f( 0); //f__26("address(this).balance=7719", 0, 0, 0)
	}
}
