//Generated Test by TG
//[[['Cb1', 'contract', 56, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_assert_condition_2.sol";

contract branches_assert_condition_2_Test is Test {
	Cb1 cb10;
	Cb1 cb11;
	Cb1 cb12;
	function setUp() public {
		cb10 = new Cb1();
		cb11 = new Cb1();
		cb12 = new Cb1();
	}
	function test_branches_assert_condition_2_0() public {
		vm.prank(0x2F4157355f6d7ba2300000000000000000000000);
		cb10.f( 11); //f__55("address(this).balance=7719", 0, 0, 11)
	}
	function test_branches_assert_condition_2_1() public {
		vm.prank(0x48f1C57141311363600000000000000000000000);
		cb11.f( 3); //f__55("address(this).balance=7719", 0, 0, 3)
	}
	function test_branches_assert_condition_2_2() public {
		vm.prank(0x26d6d53B0fF4a066F00000000000000000000000);
		cb12.f( 0); //f__55("address(this).balance=7719", 0, 0, 0)
	}
}
