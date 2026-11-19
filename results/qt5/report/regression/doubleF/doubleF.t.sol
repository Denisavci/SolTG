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
		vm.prank(0x33EAe04187638730200000000000000000000000);
		doublef0.g(); //g__29("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_1() public {
		vm.prank(0x54073DdD00835fe2800000000000000000000000);
		doublef1.f(); //f__10("address(this).balance=7719", 0, 0)
	}
	function test_doubleF_2() public {
		vm.prank(0xfC8Da40a7d110615000000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=7719", 0, 0)
		vm.prank(0x43227f0a1f5E7B6c400000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=21238", 0, 0)
		vm.prank(0x3eD7f98d12ea943c900000000000000000000000);
		doublef2.f(); //f__10("address(this).balance=2437", 0, 0)
		vm.prank(0x4f6138cd6d758b6b700000000000000000000000);
		doublef2.g(); //g__29("address(this).balance=8855", 0, 0)
	}
}
