pragma solidity ^0.6.3;

abstract contract BrightID {
    function sponsor(bytes32 context, bytes32 contextid) virtual public;
}
