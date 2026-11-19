contract Ci1 {

	uint x;

	modifier check() {
		require(x == 0);
		_;
		assert(true); 
	}

	modifier inc() {
		if (x == 0) {
			return;
		}
		x = x + 1;
		_;
	}

	function f() check inc public {
	}
}
