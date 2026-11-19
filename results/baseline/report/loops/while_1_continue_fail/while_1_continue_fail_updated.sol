contract Cwb5
{
	function f(uint x, bool b) public pure {
		require(x < 100);
		while (x < 10) {
			if (b) {
				x = 15;
				continue;
				x = 200;
			}
			x = 20;

		}
		assert(x >= 17);
	}
}
