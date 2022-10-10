pragma solidity >=0.5.0;

contract ProjectStorage {
    
    struct Project {
        uint userId;
        string public title;
        string public description;
        uint256 deadline; // look into this
        uint256 fundGoal;
        uint256 fundCurr;
    }

    // struct for State? i.e pending, failed, successful, etc.


    function createProject(uint256 fundGoal, uint256 deadline, string memory title, string memory description) {
        deadline = deadline;
    }

}
