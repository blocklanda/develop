const LandRegistry = artifacts.require("./LandRegistry.sol");

contract("LandRegistry", accounts => {
  it("should store the land Id 12", async () => {
    const myLandRegistry = await LandRegistry.deployed();

   	const storeID = await myLandRegistry.register(12);

   	console.log(storeID);
  });
});