//Generated Test by TG
//[[['A3', 'contract', 55, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'a'], ['f3', 54, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/constructor_3_m.sol";

contract constructor_3_m_Test is Test {
	A3 a30;
	A3 a31;
	A3 a32;
	function setUp() public {
		a30 = new A3( 0);
		a31 = new A3( 4);
		a32 = new A3( 6);
	}
	function test_constructor_3_m_0() public {
		vm.prank(0x506c254Ee0854180000000000000000000000000);
		a30.f3(); //f3__54("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_m_1() public {
		vm.prank(0xDe1555Ddc539Eda8000000000000000000000000);
		a31.f3(); //f3__54("address(this).balance=7719", 0, 0)
	}
	function test_constructor_3_m_2() public {
		vm.prank(0x431f41aB2eB23177400000000000000000000000);
		a32.f3(); //f3__54("address(this).balance=7719", 0, 0)
	}
}
