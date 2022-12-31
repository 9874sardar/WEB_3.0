//SPDX-License-Identifier: UNLICENSED 
// above part is the the license which we got from on hover the pragma was giving error

pragma solidity ^0.8.0;

//in solidity we write user define function as "contract"
contract Transactions {
    uint256 transactionCount;
    //simple transaction variable

    event Transfer(address from, address receiver, uint amount,string message, uint timestamp,string keyword);
    //address , string , uint is just a type (like int , float in other languge) in solidity

    //its a type of object where we will define what type of data the object will have
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    //array
    TransferStruct[] transactions;

    //since it is a class we need to add a visibility in it. Like C++ access specifiers
    function addToBlockChain(address payable receiver,uint amount,string memory message,string memory keyword) public {
        transactionCount += 1;
        // msg will be getting / storing the data whnever contract will get called
        transactions.push(TransferStruct(msg.sender, receiver,amount, message, block.timestamp, keyword ));
    
        emit Transfer(msg.sender, receiver,amount, message, block.timestamp, keyword);
    }
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    function getTransactionCount() public view returns (uint256){
        return transactionCount;
    }
}