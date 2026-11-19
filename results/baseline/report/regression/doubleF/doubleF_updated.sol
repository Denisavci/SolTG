


contract doubleF{
    uint256 x;
    function f() public  {
        x++;
    }

    function g() public view returns (uint256) {
        assert(true);
        if(x > 2){
            return 2;
        }
        return 1;
    }
}
