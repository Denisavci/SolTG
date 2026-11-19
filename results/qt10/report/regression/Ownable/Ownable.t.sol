//Generated Test by TG
//[[['Ownable', 'contract', 75, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender', 'address', 'initialOwner'], ['owner', 60, 'state_type', 'state', 'uint', 'msg.value', 'address', 'msg.sender']]]
import "forge-std/Test.sol";
import "../src/regression/Ownable.sol";

contract Ownable_Test is Test {
	Ownable ownable0;
	function setUp() public {
		ownable0 = new Ownable(0x1000000000000000000000000000000000000000);
	}
	function test_Ownable_0() public {
		vm.prank(0x33e12764e53D7aCe500000000000000000000000);
		ownable0.owner(); //owner__60("address(this).balance=21238", 0, 0)
	}
}
