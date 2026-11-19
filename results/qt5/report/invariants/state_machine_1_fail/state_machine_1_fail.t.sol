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
		vm.prank(0x1139C36B05E58cA0000000000000000000000000);
		csm10.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_1() public {
		vm.prank(0x3a99045E49396Ff9400000000000000000000000);
		csm11.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_2() public {
		vm.prank(0x10AD3ddbC243844EF00000000000000000000000);
		csm12.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_3() public {
		vm.prank(0x1df4405915e8F3e2000000000000000000000000);
		csm13.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_4() public {
		vm.prank(0x43eB260cC374D63aE00000000000000000000000);
		csm14.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_5() public {
		vm.prank(0x509824574AC7C569100000000000000000000000);
		csm15.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x538461956358d6C4400000000000000000000000);
		csm15.j(); //j__50("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_6() public {
		vm.prank(0x2CD4F6312918fB79600000000000000000000000);
		csm16.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x3781cc0653B20BD4700000000000000000000000);
		csm16.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_7() public {
		vm.prank(0x2f0C3c04360F6b08E00000000000000000000000);
		csm17.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0xC10f8DAd39fB5d80000000000000000000000000);
		csm17.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_8() public {
		vm.prank(0xFD8B697aE3E76d65000000000000000000000000);
		csm18.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x40f0d0946C41Ca99800000000000000000000000);
		csm18.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0x1B37B96369C5F7E0b00000000000000000000000);
		csm18.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
