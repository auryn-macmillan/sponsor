pragma solidity ^0.6.4;

contract Sponsor {
 bytes32 public context;

 event sponsor(address sponsee);

 // sponsor any address that calls a function other than sponsorAdd in this contract.
 fallback() external payable {
  sponsorAdd(msg.sender);
 }

 // sponsor any address that sends a transaction to this contract.
 receive() external payable {
   sponsorAdd(msg.sender);
 }

 // sponsor any address provided as a parameter.
 function sponsorAdd(address add) public {
   emit sponsor(add);
 }
}
