contract Ci2 {

	uint x;

	function reset_if_overflow() internal postinc {
		if (x < 10)
			return;
		x = 0;
	}

	modifier postinc() {
		if (x == 0) {
			x = x + 1;
		}
		_;
		x = x + 1;
	}

	function f() public {
		if (x == 0) {
			reset_if_overflow();
			return;
		}
		if (x < 10) {
			uint oldx = x;
			reset_if_overflow();
			return;
		}
		reset_if_overflow();
		assert(x == 1); 
	}

	function set(uint _x) public {
		x = _x;
        assert(true);
	}
}
