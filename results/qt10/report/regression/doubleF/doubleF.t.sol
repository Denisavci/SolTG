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
		vm.prank(0x507713A3d9E544DB000000000000000000000000);
		doublef0.g(); //g__29("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_1() public {
		vm.prank(0xF3Bbc4E74b65CA4c000000000000000000000000);
		doublef1.f(); //f__10("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_2() public {
		vm.prank(0xCb03150cA27B97b9000000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=7719", 0, 0)
		vm.prank(0x442C7C13D45ED139900000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=21238", 0, 0)
		vm.prank(0x8229060812d6CB43000000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=2437", 0, 0)
		vm.prank(0x46BEE177fB928B66F00000000000000000000000);
		doublef2.g(); //g__29("address(this).balance=8855", 0, 0)
	}
}
