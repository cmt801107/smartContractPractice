// SPDX-License-Identifier: MIT
pragma solidity ^0.7.4;
pragma experimental ABIEncoderV2;

contract Demo5 {
    struct Course {
        string id;
        string name;
        uint256 duration;
    }

    Course currentCourse;
    function setDefaultCourse() public {
        currentCourse = Course("POOP", "Python OCP", 35);
    }

     function setNewCourse(string memory newId, string memory newName, uint256 newDuration) public {
        currentCourse = Course(newId, newName, newDuration);
    }

    function getCourseId() public view returns(string memory) {
        return currentCourse.id;
    }

    function getCourse() public view returns (Course memory) {
        return currentCourse;
    }
}