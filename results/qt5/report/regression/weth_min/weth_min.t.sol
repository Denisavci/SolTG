//Generated Test by TG
//[[['WETH9', 'contract', 69, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['transferFrom', 68, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'src', 'address', 'dst', 'uint', 'wad']]]
import "forge-std/Test.sol";
import "../src/regression/weth_min.sol";

contract weth_min_Test is Test {
	WETH9 weth90;
	function setUp() public {
		weth90 = new WETH9();
	}
	function test_weth_min_0() public {
		vm.prank(0x5236E1a1dDCbD3E4f00000000000000000000000);
		weth90.transferFrom(0x20AD000000000000000000000000000000000000,0x2e15000000000000000000000000000000000000, 896); //transferFrom__68("address(this).balance=7719", 0, 0, 8365, 11797, 896)
	}
}
