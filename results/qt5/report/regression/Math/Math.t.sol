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
		vm.prank(0x41Ee4aD345E13Ddc900000000000000000000000);
		math0.ceilDiv( 0, 0); //ceilDiv__131("address(this).balance=0", 0, 0, 0, 0)
	}
	function test_Math_1() public {
		vm.prank(0x269bc8C9c99b7704400000000000000000000000);
		math1.average( 0, 0); //average__107("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_2() public {
		vm.prank(0x2fe1438141dC9A6aa00000000000000000000000);
		math2.min( 0, 1); //min__64("address(this).balance=7719", 0, 0, 0, 1)
	}
	function test_Math_3() public {
		vm.prank(0x48b4124A74630320100000000000000000000000);
		math3.min( 0, 0); //min__64("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_4() public {
		vm.prank(0x367Dc8C43b322B2DC00000000000000000000000);
		math4.max( 0, 0); //max__32("address(this).balance=7719", 0, 0, 0, 0)
	}
	function test_Math_5() public {
		vm.prank(0x592db7d0360996bC000000000000000000000000);
		math5.max( 0, 1); //max__32("address(this).balance=7719", 0, 0, 0, 1)
	}
}
