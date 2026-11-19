//Generated Test by TG
//[[['C4', 'contract', 91, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 90, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/constructors/constructor_4.sol";

contract constructor_4_Test is Test {
	C4 c40;
	C4 c41;
	C4 c42;
	C4 c43;
	function setUp() public {
		c40 = new C4();
		c41 = new C4();
		c42 = new C4();
		c43 = new C4();
	}
	function test_constructor_4_0() public {
		vm.prank(0x43e4cec05746Bee9300000000000000000000000);
		c40.f( 0); //f__90("address(this).balance=7719", 0, 0, 0)
	}
	function test_constructor_4_1() public {
		vm.prank(0x1fFEF8344B2Ba587B00000000000000000000000);
		c41.f( 6); //f__90("address(this).balance=7719", 0, 0, 6)
	}
	function test_constructor_4_2() public {
		vm.prank(0x207935e415F6000dD00000000000000000000000);
		c42.f( 991); //f__90("address(this).balance=7719", 0, 0, 991)
	}
	function test_constructor_4_3() public {
		vm.prank(0x50660e01A0DBA26D000000000000000000000000);
		c43.f( 0); //f__90("address(this).balance=7719", 0, 0, 0)
		vm.prank(0x1461369E22Cf89d3b00000000000000000000000);
		c43.f( 0); //f__90("address(this).balance=21238", 0, 0, 0)
	}
}
