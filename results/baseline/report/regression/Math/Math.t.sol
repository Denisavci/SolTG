//Generated Test by TG
//[[['Math', 'contract', 132, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['max', 32, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b'], ['min', 64, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b'], ['average', 107, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b'], ['ceilDiv', 131, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a', 'uint256', 'b']]]
import "forge-std/Test.sol";
import "../src/regression/Math.sol";

contract Math_Test is Test {
	Math math0;
	Math math1;
	Math math2;
	Math math3;
	Math math4;
	Math math5;
	function setUp() public {
		math0 = new Math();
		math1 = new Math();
		math2 = new Math();
		math3 = new Math();
		math4 = new Math();
		math5 = new Math();
	}
	function test_Math_0() public {
		vm.prank(0x2a9A513059af09F1800000000000000000000000);
		math0.ceilDiv( 0, 0); //ceilDiv__131("address(this).balance=0", 0, 0, 0, 0)
	}
	function test_Math_1() public {
		vm.prank(0x1B717F4ADd2bd9b5000000000000000000000000);
		math1.average( 0, 0); //average__107("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_2() public {
		vm.prank(0xcc68BD9ba7AC00ef000000000000000000000000);
		math2.min( 0, 1); //min__64("address(this).balance=7719", 0, 0, 0, 1)
	}
	function test_Math_3() public {
		vm.prank(0x11096E958A394fd8700000000000000000000000);
		math3.min( 0, 0); //min__64("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_4() public {
		vm.prank(0xF509fDe58C17C847000000000000000000000000);
		math4.max( 0, 0); //max__32("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_5() public {
		vm.prank(0x44D787117a4b1aA6f00000000000000000000000);
		math5.max( 0, 1); //max__32("address(this).balance=7719", 0, 0, 0, 1)
	}
}
