//Generated Test by TG
//[[['WETH9', 'contract', 52, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['withdraw', 51, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'wad']]]
import "forge-std/Test.sol";
import "../src/regression/microWeth.sol";

contract microWeth_Test is Test {
	WETH9 weth90;
	function setUp() public {
		weth90 = new WETH9();
	}
	function test_microWeth_0() public {
		vm.prank(0x2297000000000000000000000000000000000000);
		weth90.withdraw( 0); //withdraw__51("address(this).balance=7719", 0, 8855, 0)
	}
}
