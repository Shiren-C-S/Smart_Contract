// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract SimpleStorage {

    uint256 public favouriteNumber;

    struct Player{
        uint256 jerseyNum;
        string playerName;
    }

    Player[] public listofPlayer;

    mapping (string => uint256) public playertoJersey;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favouriteNumber;
    }
    
    function addPlayer(string memory _playername, uint256 _jerseyNum)public {
        listofPlayer.push( Player(_jerseyNum, _playername));
        playertoJersey[_playername]= _jerseyNum;
    }
}
