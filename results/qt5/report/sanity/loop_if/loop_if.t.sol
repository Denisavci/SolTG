//Generated Test by TG
//[[['Cfc2', 'contract', 53, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['loop_if', 52, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'y', 'uint256', 'z']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/loop_if.sol";

contract loop_if_Test is Test {
	Cfc2 cfc20;
	Cfc2 cfc21;
	function setUp() public {
		cfc20 = new Cfc2();
		cfc21 = new Cfc2();
	}
	function test_loop_if_0() public {
		vm.prank(0x53518eD4637fD72F700000000000000000000000);
		cfc20.loop_if( 11, 0); //loop_if__52("address(this).balance=7719", 0, 0, 11, 0)
	}
	function test_loop_if_1() public {
		vm.prank(0x1cE7FF09f08e198D300000000000000000000000);
		cfc21.loop_if( 0, 11); //loop_if__52("address(this).balance=7719", 0, 0, 0, 11)
	}
}
