// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {
    enum Vote {
        NOT_CAST,
        YES,
        NO
    }

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;
    mapping(uint => mapping(address => Vote)) public votes;

    function newProposal(address _target, bytes calldata _data) external {
        proposals.push(Proposal(_target, _data, 0, 0));
    }

    function castVote(uint _id, bool _vote) external {
        if (hasVoted(_id, msg.sender)) {
            reduceVote(_id, votes[_id][msg.sender]);
        }
        if (_vote) {
            proposals[_id].yesCount++;
            votes[_id][msg.sender] = Vote.YES;
        } else {
            proposals[_id].noCount++;
            votes[_id][msg.sender] = Vote.NO;
        }
    }

    function hasVoted(uint _id, address _addr) private view returns (bool) {
        return votes[_id][_addr] != Vote.NOT_CAST;
    }

    function reduceVote(uint _id, Vote _vote) private {
        if (_vote == Vote.YES) {
            proposals[_id].yesCount--;
        } else {
            proposals[_id].noCount--;
        }
    }
}
