//Generated Test by TG
//[[['Cb8', 'contract', 31, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_merge_variables_6.sol";

contract branches_merge_variables_6_Test is Test {
	Cb8 cb80;
	Cb8 cb81;
	function setUp() public {
		cb80 = new Cb8();
		cb81 = new Cb8();
	}
	function test_branches_merge_variables_6_0() public {
		vm.prank(0x35b730EcCa78c64aD00000000000000000000000);
		cb80.f( 11); //f__30("address(this).balance=7719", 0, 0, 11)
	}
	function test_branches_merge_variables_6_1() public {
		vm.prank(0x1B5A72e325b1d37Ca00000000000000000000000);
		cb81.f( 0); //f__30("address(this).balance=7719", 0, 0, 0)
	}
}
