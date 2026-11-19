//Generated Test by TG
//[[['Csma', 'contract', 61, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['f', 14, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['g', 26, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['h', 38, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['j', 50, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender'], ['i', 60, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/sanity/state_machine_1.sol";

contract state_machine_1_Test is Test {
	Csma csma0;
	Csma csma1;
	Csma csma2;
	Csma csma3;
	Csma csma4;
	Csma csma5;
	Csma csma6;
	Csma csma7;
	function setUp() public {
		csma0 = new Csma();
		csma1 = new Csma();
		csma2 = new Csma();
		csma3 = new Csma();
		csma4 = new Csma();
		csma5 = new Csma();
		csma6 = new Csma();
		csma7 = new Csma();
	}
	function test_state_machine_1_0() public {
		vm.prank(0x3c55E117A1451D16300000000000000000000000);
		csma0.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_1() public {
		vm.prank(0x26d9e8b8701D6EE8d00000000000000000000000);
		csma1.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_2() public {
		vm.prank(0x50DAD437125d2089c00000000000000000000000);
		csma2.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_3() public {
		vm.prank(0x1f198795b362aa44100000000000000000000000);
		csma3.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_4() public {
		vm.prank(0x4c42f078740f2B0f700000000000000000000000);
		csma4.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_5() public {
		vm.prank(0x1Cc1dBaf450416F6800000000000000000000000);
		csma5.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x208e4c5872686E3d100000000000000000000000);
		csma5.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_6() public {
		vm.prank(0x3b5c6B8B95E21164000000000000000000000000);
		csma6.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x40c5260d7f608DcB700000000000000000000000);
		csma6.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_7() public {
		vm.prank(0x245f2aA3EDa03f2Ab00000000000000000000000);
		csma7.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x4D4f4BdF95256E61c00000000000000000000000);
		csma7.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0xFF4d5fd87B62481E000000000000000000000000);
		csma7.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
