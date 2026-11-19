

contract Storage {

    uint UNIQUE_STATE_VAR;

    function balanceCheck() public view returns (bool) {
        if(address(this).balance > 1000){
            assert(address(this).balance > 1000);
            return true;
        } else {
            return false;
        }
    }

    function deposit() public payable {
        UNIQUE_STATE_VAR = UNIQUE_STATE_VAR + msg.value;
        assert(UNIQUE_STATE_VAR >= msg.value);
    }

}
