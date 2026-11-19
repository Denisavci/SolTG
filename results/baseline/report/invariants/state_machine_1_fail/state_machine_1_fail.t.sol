//Generated Test by TG
//[[['Csm1', 'contract', 61, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 14, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['h', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['j', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['i', 60, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/invariants/state_machine_1_fail.sol";

contract state_machine_1_fail_Test is Test {
	Csm1 csm10;
	Csm1 csm11;
	Csm1 csm12;
	Csm1 csm13;
	Csm1 csm14;
	Csm1 csm15;
	Csm1 csm16;
	Csm1 csm17;
	Csm1 csm18;
	function setUp() public {
		csm10 = new Csm1();
		csm11 = new Csm1();
		csm12 = new Csm1();
		csm13 = new Csm1();
		csm14 = new Csm1();
		csm15 = new Csm1();
		csm16 = new Csm1();
		csm17 = new Csm1();
		csm18 = new Csm1();
	}
	function test_state_machine_1_fail_0() public {
		vm.prank(0x2bF004a09BB4a930e00000000000000000000000);
		csm10.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_1() public {
		vm.prank(0x84205E0564027470000000000000000000000000);
		csm11.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_2() public {
		vm.prank(0x878Fe93409053012000000000000000000000000);
		csm12.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_3() public {
		vm.prank(0x3DA64B4E7b85447F600000000000000000000000);
		csm13.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_4() public {
		vm.prank(0x17fC3A0947BecEDBc00000000000000000000000);
		csm14.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_5() public {
		vm.prank(0x38D78BCe9A0A1cB9300000000000000000000000);
		csm15.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x72AF34Dc695b0Fd1000000000000000000000000);
		csm15.j(); //j__50("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_6() public {
		vm.prank(0x67b0143b0168b407000000000000000000000000);
		csm16.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x51F54075B938C28D100000000000000000000000);
		csm16.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_7() public {
		vm.prank(0x1844045e5A303722900000000000000000000000);
		csm17.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x7821D5c81f554a95000000000000000000000000);
		csm17.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_8() public {
		vm.prank(0x134d7a706B3f9D0f100000000000000000000000);
		csm18.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x279D04307Fb85c1a800000000000000000000000);
		csm18.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0x21EEF54b6bEad188D00000000000000000000000);
		csm18.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
