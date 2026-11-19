//Generated Test by TG
//[[['Csi7', 'contract', 41, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 40, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/triple_nested_if.sol";

contract triple_nested_if_Test is Test {
	Csi7 csi70;
	function setUp() public {
		csi70 = new Csi7();
	}
	function test_triple_nested_if_0() public {
		vm.prank(0x53a90ddE43C2290D800000000000000000000000);
		csi70.f(); //f__40("address(this).balance=7719", 0, 0)
	}
}
