

contract A{
  uint a;
  function set(uint j) public {a = j;}
  function f(uint x) public returns (bool){
    if (a < x) {
      assert(true);
      return true;
    } else {
      return false;
    }
  }
}
