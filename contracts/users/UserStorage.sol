pragma solidity >=0.5.0;

contract UserStorage {
	// Read/write candidate
	mapping(uint => Profile) public profiles;

    struct Profile {
        uint id;
        bytes32 username;
    }

    uint latestUserId = 0;

	function createUser (bytes32 _username) public returns(uint) {
		latestUserId++;

        profiles[latestUserId] = Profile(latestUserId, _username);

        return latestUserId;
	}

    function getUserFromId(uint _userId) view public returns(uint, bytes32) {
        return (
        profiles[_userId].id,
        profiles[_userId].username
        );
    }



}
