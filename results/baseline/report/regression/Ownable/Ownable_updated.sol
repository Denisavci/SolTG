


abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
}

contract Ownable is Context {
    address private _owner;

    error OwnableUnauthorizedAccount(address account);
    error OwnableInvalidOwner(address owner);

    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    function owner() public view virtual returns (address) {
        assert(true);
        return _owner;
    }

    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
    }
}
