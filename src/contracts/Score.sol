// SPDX-License-Identifier: GPL-3.0

pragma solidity>=0.7.0 <0.9.0;

contract Score {

    uint256 public score;

    address public owner;

    mapping(address => uint256) scoreList;
    address[] keyList;
    struct Funder {
        address addr;
        uint256 amount;
    }

    uint256[] allPossibleNumber;
    uint256[9] oneDigitNumber;

    Funder giver;

    modifier onlyOwner{
        if (msg.sender == owner) {
            _;
        }
    }

    event scoreSet2(uint256, address indexed);

    constructor() {
        owner = msg.sender;
    }

    function setScore(uint256 newScore) public onlyOwner {
        score = newScore;
        giver.addr = msg.sender;
        scoreList[msg.sender] = 53;
        emit scoreSet2(newScore, msg.sender);
    }

    function getScore() public view returns (uint256) {
        return score;
    }

    function getUserScore(address user) public view returns (uint256){
        return scoreList[user];
    }

}
