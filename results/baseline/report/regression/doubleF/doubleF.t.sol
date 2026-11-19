//Generated Test by TG
//[[['doubleF', 'contract', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 10, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 29, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/doubleF.sol";

contract doubleF_Test is Test {
	doubleF doublef0;
	doubleF doublef1;
	doubleF doublef2;
	function setUp() public {
		doublef0 = new doubleF();
		doublef1 = new doubleF();
		doublef2 = new doubleF();
	}
	function test_doubleF_0() public {
		vm.prank(0xdCa419eCD57c2890000000000000000000000000);
		doublef0.g(); //g__29("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_1() public {
		vm.prank(0x17C2e309c95Cc7fd700000000000000000000000);
		doublef1.f(); //f__10("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_2() public {
		vm.prank(0x1C42B5366b6eb560900000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=7719", 0, 0)
		vm.prank(0x10f5bBC126FDbcAd800000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=21238", 0, 0)
		vm.prank(0x6b9f3e5967211A89000000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=2437", 0, 0)
		vm.prank(0x24a1D9f1Eaf0A999E00000000000000000000000);
		doublef2.g(); //g__29("address(this).balance=8855", 0, 0)
	}
}
