contract Csi1 {

	function f(uint256 a) public pure {
		assert(simple_if(a) == 1); 
	}

	function simple_if(uint256 a) internal pure returns (uint256) {
		if (a == 0) {
			return 0;
		}
		return 1;
	}
}
