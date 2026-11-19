contract Csi {
	function f(uint256 a, uint256 b) public pure returns (uint256) {
		if (a == 0) {
			return 0;
		}
		assert(a!=0);
		return b / a; 
	}
}
