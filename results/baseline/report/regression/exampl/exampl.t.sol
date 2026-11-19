//Generated Test by TG
//[[['A', 'contract', 36, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['set', 13, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'j'], ['f', 35, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'x']]]
import "forge-std/Test.sol";
import "../src/regression/exampl.sol";

contract exampl_Test is Test {
	A a0;
	A a1;
	A a2;
	function setUp() public {
		a0 = new A();
		a1 = new A();
		a2 = new A();
	}
	function test_exampl_0() public {
		vm.prank(0x375063a2E878ebD4600000000000000000000000);
		a0.f( 1); //f__35("address(this).balance=7719", 0, 0, 1)
	}
	function test_exampl_1() public {
		vm.prank(0x3CC7883f39051faA400000000000000000000000);
		a1.f( 0); //f__35("address(this).balance=7719", 0, 0, 0)
	}
	function test_exampl_2() public {
		vm.prank(0x3787b0fbeE0A1f99300000000000000000000000);
		a2.set( 0); //set__13("address(this).balance=7719", 0, 0, 0)
	}
}
