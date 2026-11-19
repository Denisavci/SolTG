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
		vm.prank(0x68CeeFBF6e7d0DC5000000000000000000000000);
		csm10.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_1() public {
		vm.prank(0x121d5F84029dA334D00000000000000000000000);
		csm11.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_2() public {
		vm.prank(0x795aF5cb0eafd04C000000000000000000000000);
		csm12.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_3() public {
		vm.prank(0x1cd6aaBB8d9023Be200000000000000000000000);
		csm13.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_4() public {
		vm.prank(0x3dF0Ba400A17B400e00000000000000000000000);
		csm14.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_fail_5() public {
		vm.prank(0x16a684b30B4aAaf7b00000000000000000000000);
		csm15.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x43a1eCB34fEFCFA9B00000000000000000000000);
		csm15.j(); //j__50("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_6() public {
		vm.prank(0x1296230fCCc1d303500000000000000000000000);
		csm16.j(); //j__50("address(this).balance=7719", 0, 0)
		vm.prank(0x38bDBd44D5c6302E600000000000000000000000);
		csm16.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_7() public {
		vm.prank(0x10f3bce147C541E3800000000000000000000000);
		csm17.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x4eC1b491155f83C9100000000000000000000000);
		csm17.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_fail_8() public {
		vm.prank(0x2523b7535cE854C1400000000000000000000000);
		csm18.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x51c7284131beFdbb500000000000000000000000);
		csm18.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0xB9a1D620DEd77892000000000000000000000000);
		csm18.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
