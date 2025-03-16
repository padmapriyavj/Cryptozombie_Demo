// KittyContract.sol
pragma solidity ^0.4.25;

contract KittyContract {
    struct Kitty {
        uint256 genes;
    }

    Kitty[] public kitties;

    // Constructor to pre-create 3 kitties with hardcoded DNA values
    constructor() public {
        kitties.push(Kitty(1)); 
        kitties.push(Kitty(2)); 
        kitties.push(Kitty(3)); 
    }

    // Function to get kitty details by ID
    function getKitty(uint256 _id) external view returns (
        bool isGestating,
        bool isReady,
        uint256 cooldownIndex,
        uint256 nextActionAt,
        uint256 siringWithId,
        uint256 birthTime,
        uint256 matronId,
        uint256 sireId,
        uint256 generation,
        uint256 genes
    ) {
        require(_id < kitties.length, "Kitty does not exist");
        Kitty storage kitty = kitties[_id];
        return (
            false, // isGestating
            true,  // isReady
            0,     // cooldownIndex
            0,     // nextActionAt
            0,     // siringWithId
            0,     // birthTime
            0,     // matronId
            0,     // sireId
            0,     // generation
            kitty.genes // genes
        );
    }
}