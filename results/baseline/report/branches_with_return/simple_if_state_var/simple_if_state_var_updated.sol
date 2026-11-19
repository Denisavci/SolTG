contract Csi3 {

	uint x;

	function check() public {
		require(x == 0);
		conditional_increment();
		assert(x == 1); 
		assert(x == 0); 
	}

	function conditional_increment() internal {
		if (x == 0) {
			return;
		}
		x = 1;
	}
}
