pragma solidity ^0.5.7;

/// Provides basic authorization control
contract Ownable {
    address private origOwner;

    // Define an Event
    event TransferOwnership(address indexed oldOwner, address indexed newOwner);

    /// Assign the contract to an owner
    constructor () public {
        origOwner = msg.sender;
        emit TransferOwnership(address(0), origOwner);
    }

    // Look up the address of the owner
    function _owner() public view returns (address) {
        return origOwner;
    }

    // Check if the calling address is the owner of the contract
    function isOwner() public view returns (bool) {
        return msg.sender == origOwner;
    }

    // Define a modifer that checks to see if msg.sender == owner of the contract
    modifier onlyOwner() {
        require(isOwner(), "This can be called only the contract owner.");
        _;
    }

    // Define a function to renounce ownerhip
    function renounceOwnership() public onlyOwner {
        emit TransferOwnership(origOwner, address(0));
        origOwner = address(0);
    }

    /// Define a public function to transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /// Define an internal function to transfer ownership
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "The address provided is not valid.");
        emit TransferOwnership(origOwner, newOwner);
        origOwner = newOwner;
    }
}
