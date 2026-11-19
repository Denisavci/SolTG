//Generated Test by TG
//[[['Cfc3', 'contract', 108, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f1', 30, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a'], ['f2', 54, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a'], ['f3', 71, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a'], ['f4', 88, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a'], ['f5', 107, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'uint256', 'a']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/many_fun.sol";

contract many_fun_Test is Test {
	Cfc3 cfc30;
	Cfc3 cfc31;
	Cfc3 cfc32;
	Cfc3 cfc33;
	Cfc3 cfc34;
	Cfc3 cfc35;
	Cfc3 cfc36;
	Cfc3 cfc37;
	Cfc3 cfc38;
	Cfc3 cfc39;
	function setUp() public {
		cfc30 = new Cfc3();
		cfc31 = new Cfc3();
		cfc32 = new Cfc3();
		cfc33 = new Cfc3();
		cfc34 = new Cfc3();
		cfc35 = new Cfc3();
		cfc36 = new Cfc3();
		cfc37 = new Cfc3();
		cfc38 = new Cfc3();
		cfc39 = new Cfc3();
	}
	function test_many_fun_0() public {
		vm.prank(0x282A3410d575CF99A00000000000000000000000);
		cfc30.f5( 1); //f5__107("address(this).balance=8855", 0, 0, 1)
	}
	function test_many_fun_1() public {
		vm.prank(0x49448579D7Afe01Da00000000000000000000000);
		cfc31.f5( 0); //f5__107("address(this).balance=21238", 0, 0, 0)
	}
	function test_many_fun_2() public {
		vm.prank(0x30B222dd9FdE1CEC100000000000000000000000);
		cfc32.f4( 0); //f4__88("address(this).balance=7719", 0, 0, 0)
	}
	function test_many_fun_3() public {
		vm.prank(0x35260d9A2276d56D200000000000000000000000);
		cfc33.f4( 1); //f4__88("address(this).balance=21238", 0, 0, 1)
	}
	function test_many_fun_4() public {
		vm.prank(0x5153AbFFcF2c0442D00000000000000000000000);
		cfc34.f3( 1); //f3__71("address(this).balance=7719", 0, 0, 1)
	}
	function test_many_fun_5() public {
		vm.prank(0x2d5F9684D3a13d0B500000000000000000000000);
		cfc35.f3( 0); //f3__71("address(this).balance=21238", 0, 0, 0)
	}
	function test_many_fun_6() public {
		vm.prank(0x2026c750A2961955600000000000000000000000);
		cfc36.f2( 0); //f2__54("address(this).balance=7719", 0, 0, 0)
	}
	function test_many_fun_7() public {
		vm.prank(0x14F42dc1D9FbDA13F00000000000000000000000);
		cfc37.f2( 10); //f2__54("address(this).balance=7719", 0, 0, 10)
	}
	function test_many_fun_8() public {
		vm.prank(0x22820b39fF72B841000000000000000000000000);
		cfc38.f1( 0); //f1__30("address(this).balance=7719", 0, 0, 0)
	}
	function test_many_fun_9() public {
		vm.prank(0x369B5226C5074F0b700000000000000000000000);
		cfc39.f1( 5); //f1__30("address(this).balance=7719", 0, 0, 5)
	}
}
