//Generated Test by TG
//[[['Cfc1', 'contract', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 54, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/few_calls.sol";

contract few_calls_Test is Test {
	Cfc1 cfc10;
	function setUp() public {
		cfc10 = new Cfc1();
	}
	function test_few_calls_0() public {
		vm.prank(0x11cCF2775927638Bb00000000000000000000000);
		cfc10.f(); //f__54("address(this).balance=7719", 0, 0)
	}
}
