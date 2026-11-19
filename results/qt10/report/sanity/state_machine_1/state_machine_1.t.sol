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
		vm.prank(0x3104054D43a58678300000000000000000000000);
		csma0.i(); //i__60("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_1() public {
		vm.prank(0x1E1789a208afa4e5100000000000000000000000);
		csma1.j(); //j__50("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_2() public {
		vm.prank(0x120bF5856CC1C2B8400000000000000000000000);
		csma2.h(); //h__38("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_3() public {
		vm.prank(0x1D2e2bF6925cC6fc100000000000000000000000);
		csma3.g(); //g__26("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_4() public {
		vm.prank(0x1299367253563786000000000000000000000000);
		csma4.f(); //f__14("address(this).balance=7719", 0, 0)
	}
	function test_state_machine_1_5() public {
		vm.prank(0x47d478B353271b74800000000000000000000000);
		csma5.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x38c9108Fb44fd50d700000000000000000000000);
		csma5.g(); //g__26("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_6() public {
		vm.prank(0x43b1a18164495757700000000000000000000000);
		csma6.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x35FB920BAeaeDc16900000000000000000000000);
		csma6.f(); //f__14("address(this).balance=21238", 0, 0)
	}
	function test_state_machine_1_7() public {
		vm.prank(0x1020C4E8C5226AE0E00000000000000000000000);
		csma7.f(); //f__14("address(this).balance=7719", 0, 0)
		vm.prank(0x19C8101e9Cb96855400000000000000000000000);
		csma7.g(); //g__26("address(this).balance=21238", 0, 0)
		vm.prank(0x3180625Dc44770e4300000000000000000000000);
		csma7.h(); //h__38("address(this).balance=2437", 0, 0)
	}
}
