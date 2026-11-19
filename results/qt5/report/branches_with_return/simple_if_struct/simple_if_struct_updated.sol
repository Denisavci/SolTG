contract Csi4 {

	struct S {
		uint x;
	}
	S s;

	function check() public {
		require(s.x == 0);
		conditional_increment();
		assert(s.x == 1); 
		assert(s.x == 0); 
	}

	function conditional_increment() internal {
		if (s.x == 0) {
			return;
		}
		s.x = 1;
	}
}
