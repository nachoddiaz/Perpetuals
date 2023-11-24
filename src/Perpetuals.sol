// SPDX-License-Identifier: MIT

// Layout of Contract:
// version
// imports
// errors
// interfaces, libraries, contracts
// Type declarations
// State variables
// Events
// Modifiers
// Functions

// Layout of Functions:
// constructor
// receive function (if exists)
// fallback function (if exists)
// external
// public
// internal
// private
// internal & private view & pure functions
// external & public view & pure functions

pragma solidity ^0.8.23;

/*
* @title Perpetuals
* @author Nacho Diaz
*
*
* This contract is designed to allow users to trade perpetuals.
*
* Liquidity porviders add liquidity to the pool and earn fees, olso they can withdraw their liquidity up to the liquidity that is reserved for positions
* Traders can open positions, increase the size of their positions and increase the collateral of their positions
* Theirs position can be liquidated if the price of the collateral asset goes against their position
* Their position can have up to 
*/

    /////////////////////////////////
    //            Imports          //
    /////////////////////////////////



contract Perpetuals {

    /////////////////////////////////
    //            Errors           //
    /////////////////////////////////


    /////////////////////////////////
    //            Events           //
    /////////////////////////////////
    event CollateralDeposited(address user, uint256 amount, address tokenAddress);

    /////////////////////////////////
    //           Modifiers         //
    /////////////////////////////////

    /////////////////////////////////
    //        State Variables      //
    /////////////////////////////////

   mapping(address user => mapping (address token => uint256 amount)) userToLiquidityProvided;

    
    constructor() {}

    /////////////////////////////////////
    //  Liquidity Providers Functions  //
    /////////////////////////////////////

    function depositLiquidity(uint256 amount, address tokenAddress) internal {

        userToLiquidityProvided[msg.sender][tokenAddress] += amount;
        emit CollateralDeposited(msg.sender, amount, tokenAddress);
    }

    function withdrawLiquidity() internal {}

    /////////////////////////////////////
    //        Trader Functions         //
    /////////////////////////////////////

    function openPosition() internal {}

    function IncreaseSizeOfPosition() internal {}

    function IncreaseCollateralOfPosition() internal {}

    /////////////////////////////////////
    //       Auxiliar Functions        //
    /////////////////////////////////////

    function getUsdPrice(address tokenAddress) internal {
        
    }
}
