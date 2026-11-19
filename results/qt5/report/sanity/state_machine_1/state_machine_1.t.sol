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
		vm.prank(0x4C3d7dEd317DBADA000000000000000000000000);
		csma0.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_1() public {
		vm.prank(0x5190Ef2dA303baa3B00000000000000000000000);
		csma1.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_2() public {
		vm.prank(0x4CE3B7D8aEfB67baf00000000000000000000000);
		csma2.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_3() public {
		vm.prank(0xaDd65B520F59b050000000000000000000000000);
		csma3.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_4() public {
		vm.prank(0x1d6834F34260cE41000000000000000000000000);
		csma4.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_5() public {
		vm.prank(0xD14aD4EDd00C4cCb000000000000000000000000);
		csma5.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x34131A54472BE1D0000000000000000000000000);
		csma5.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_6() public {
		vm.prank(0x1D39da475Ede9F08500000000000000000000000);
		csma6.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x14a5a3421fC8Ff1f800000000000000000000000);
		csma6.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_7() public {
		vm.prank(0x1B173f78f0D4B3B1500000000000000000000000);
		csma7.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x22cb6a51e98954eCE00000000000000000000000);
		csma7.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0x206F30c2DEd3Fd83500000000000000000000000);
		csma7.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
