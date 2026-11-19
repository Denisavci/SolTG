//Generated Test by TG
//[[['Cwb7', 'contract', 33, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/loops/while_2.sol";

contract while_2_Test is Test {
	Cwb7 cwb70;
	function setUp() public {
		cwb70 = new Cwb7();
	}
	function test_while_2_0() public {
		vm.prank(0x4Ba07B2b48aadb8ed00000000000000000000000);
		cwb70.f( 0); //f__32("address(this).balance=7719", 0, 0, 0)
	}
}
