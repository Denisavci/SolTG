contract Csi2 {

	uint[] a;

	constructor () {
		a.push();
		a.push();
	}

	function check() public {
		require(a.length >= 2);
		require(a[1] == 0);
		conditional_store();
		assert(a[1] == 1); 
		assert(a[1] == 0); 
	}

	function conditional_store() internal {
		if (a[1] == 0) {
			return;
		}
		a[1] = 1;
	}
}
