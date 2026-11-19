//Generated Test by TG
//[[['Ci2', 'contract', 88, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 73, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['set', 87, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint', '_x']]]
import "forge-std/Test.sol";
import "../src/regression/control_flow/branches_with_return/branches_in_modifiers_2.sol";

contract branches_in_modifiers_2_Test is Test {
	Ci2 ci20;
	Ci2 ci21;
	Ci2 ci22;
	Ci2 ci23;
	function setUp() public {
		ci20 = new Ci2();
		ci21 = new Ci2();
		ci22 = new Ci2();
		ci23 = new Ci2();
	}
	function test_branches_in_modifiers_2_0() public {
		vm.prank(0x2076A172688DFD3cC00000000000000000000000);
		ci20.set( 0); //set__87("address(this).balance=7719", 0, 0, 0)
	}
	function test_branches_in_modifiers_2_1() public {
		vm.prank(0x27735517589F3381900000000000000000000000);
		ci21.f(); //f__73("address(this).balance=8855", 0, 0)
	}
	function test_branches_in_modifiers_2_2() public {
		vm.prank(0x3b80559d9B05C036C00000000000000000000000);
		ci22.set( 8); //set__87("address(this).balance=11797", 0, 0, 8)
		vm.prank(0x2017c0Dc0f3b119d200000000000000000000000);
		ci22.f(); //f__73("address(this).balance=8365", 0, 0)
	}
	function test_branches_in_modifiers_2_3() public {
		vm.prank(0x1be4DF9029Be1952000000000000000000000000);
		ci23.set( 10); //set__87("address(this).balance=11797", 0, 0, 10)
		vm.prank(0x4b0480A4602E269E200000000000000000000000);
		ci23.f(); //f__73("address(this).balance=8365", 0, 0)
	}
}
