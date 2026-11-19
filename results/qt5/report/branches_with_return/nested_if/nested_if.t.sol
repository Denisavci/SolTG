//Generated Test by TG
//[[['Cn', 'contract', 63, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/nested_if.sol";

contract nested_if_Test is Test {
	Cn cn0;
	function setUp() public {
		cn0 = new Cn();
	}
	function test_nested_if_0() public {
		vm.prank(0x502790b4D206373CA00000000000000000000000);
		cn0.f( 0, 0); //f__26("address(this).balance=8855", 0, 0, 0, 0)
	}
}
