//Generated Test by TG
//[[['WETH9', 'contract', 260, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['deposit', 78, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['withdraw', 115, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'wad'], ['totalSupply', 127, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['approve', 155, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'guy', 'uint', 'wad'], ['transfer', 172, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'dst', 'uint', 'wad'], ['transferFrom', 259, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'src', 'address', 'dst', 'uint', 'wad']]]
import "forge-std/Test.sol";
import "../src/regression/weth.sol";

contract weth_Test is Test {
	WETH9 weth90;
	WETH9 weth91;
	WETH9 weth92;
	WETH9 weth93;
	WETH9 weth94;
	WETH9 weth95;
	WETH9 weth96;
	function setUp() public {
		weth90 = new WETH9();
		weth91 = new WETH9();
		weth92 = new WETH9();
		weth93 = new WETH9();
		weth94 = new WETH9();
		weth95 = new WETH9();
		weth96 = new WETH9();
	}
	function test_weth_0() public {
		vm.prank(0x2e16000000000000000000000000000000000000);
		weth90.transferFrom(0x2e15000000000000000000000000000000000000,0x20AD000000000000000000000000000000000000, 0); //transferFrom__259("address(this).balance=2437", 0, 11798, 11797, 8365, 0)
	}
	function test_weth_1() public {
		vm.prank(0x49309a433F42533D400000000000000000000000);
		weth91.transfer(0x0000000000000000000000000000000000000000, 0); //transfer__172("address(this).balance=5853", 0, 0, 0, 0)
	}
	function test_weth_2() public {
		vm.prank(0x9850000000000000000000000000000000000000);
		weth92.approve(0x52F6000000000000000000000000000000000000, 0); //approve__155("address(this).balance=7719", 0, 2437, 21238, 0)
	}
	function test_weth_3() public {
		vm.prank(0x1404601E656E8A21400000000000000000000000);
		weth93.totalSupply(); //totalSupply__127("address(this).balance=7719", 0, 0)
	}
	function test_weth_4() public {
		vm.prank(0x52F6000000000000000000000000000000000000);
		weth94.withdraw( 0); //withdraw__115("address(this).balance=7719", 0, 21238, 0)
	}
	function test_weth_5() public {
		vm.prank(0x4aA9A7bf54AbE08BF00000000000000000000000);
		weth95.deposit(); //deposit__78("address(this).balance=7719", 0, 0)
	}
	function test_weth_6() public {
		vm.prank(0x9850000000000000000000000000000000000000);
		vm.deal(0x9850000000000000000000000000000000000000,  1000000000000000001 wei );
		weth96.deposit{ value:  1000000000000000001 wei }(); //deposit__78("address(this).balance=7719", 1000000000000000001, 2437)
	}
}
