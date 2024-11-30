// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    struct Racket {
        string id;
        string model;
        uint cost;
    }

    mapping(string => Racket) private store;
    mapping(address => string[]) private myRackets;

    constructor(address owner) ERC20("Degen", "DGN") Ownable(owner) {
        store["yonex"] = Racket("yonex", "Yonex Astrox 77 Pro", 210);
        store["rsl"] = Racket("rsl", "RSL Magnum M8", 75);
        store["victor"] = Racket("victor", "Victor DriveX KT I", 130);
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }
    
    function mint(address _to, uint _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function burn(uint _amount) external {
        require(balanceOf(msg.sender) >= _amount, "You do not have enough tokens to burn.");
        _burn(msg.sender, _amount);
    }

    function transfer(address _to, uint _amount) public override returns (bool) {
        _transfer(msg.sender, _to, _amount);

        return true;
    }

    function checkBalance() external view returns (uint) {
        return this.balanceOf(msg.sender);
    }

    function showStore() public view returns (Racket[] memory) {
        Racket[] memory rckt = new Racket[](3);
        rckt[0] = store["yonex"];
        rckt[1] = store["rsl"];
        rckt[2] = store["victor"];
        return rckt;
    }

    function redeem(string memory racketID) public {
        Racket memory rckt = store[racketID];

        require(bytes(rckt.id).length != 0, "Racket does not exist.");
        require(balanceOf(msg.sender) >= rckt.cost, "Insufficient Balance.");

        _burn(msg.sender, rckt.cost);
        myRackets[msg.sender].push(racketID);
    }

    function getMyRackets() public view returns (string[] memory) {
        return myRackets[msg.sender];
    }

}