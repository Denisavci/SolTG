





contract WETH9 {
    string public name     = "Wrapped Ether";
    string public symbol   = "WETH";
    uint8  public decimals = 18;


    mapping (address => uint)                       public  balanceOf;

    function transferFrom(address src, address dst, uint wad)
        public
        returns (bool)
    {
        uint256 MAX_INT = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
        if(balanceOf[src]  > 10){
            balanceOf[src] += 10;
        } else {
            balanceOf[src] += 20;
        }


        balanceOf[src] -= wad;
        balanceOf[dst] += wad;
        assert(true);


        return true;
    }
}
