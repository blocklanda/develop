pragma solidity ^0.4.24;

contract LandRegistry {
  address[16] public landOwners;

//Register a land
function register(uint landId) public returns (uint) {
  require(landId >= 0 && landId <=100);
  landOwners[landId] = msg.sender;
  return landId;
}

// Retrieving the land owners
function getLandOwners() public view returns (address[16]) {
  return landOwners;
}
}
