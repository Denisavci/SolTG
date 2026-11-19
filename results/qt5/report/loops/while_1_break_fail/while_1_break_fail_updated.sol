contract Cwb3
{
	function f(uint x, bool b) public pure {
		require(x < 10);
		while (x < 10) {
			if (b)
				++x;
			else {
				break;
			}
		}
		assert(x >= 10);
	}
}
