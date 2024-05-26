//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.0;

contract Pool {
    uint256 k = 10;
    uint256 reserveX = 0;
    uint256 reserveY = 0;

    function addLiquidity(uint256 addX, uint256 addY) public {
        require(addX >= 0 && addY == k * addX, "Invalid input");
        reserveX += addX;
        reserveY += addY;
    }

    function poolState() public view returns (uint256, uint256) {
        return (reserveX, reserveY);
    }

    function swapY(uint256 depositedX) public {
        require(depositedX > 0, "Invalid Input");
        uint256 newX = reserveX + depositedX;
        uint256 newY = k / newX;
        uint256 ySwap = reserveY - newY;
        require(ySwap > 0 && ySwap < reserveY, "Invalid swap");
        reserveX = newX;
        reserveY = newY;
    }

    function swapX(uint256 depositedY) public {
        require(depositedY > 0, "Invalid Input");
        uint256 newY = reserveY + depositedY;
        uint256 newX = k / newY;
        uint256 xSwap = reserveX - newX;
        require(xSwap > 0 && xSwap < reserveX, "Invalid Swap");
        reserveX = newX;
        reserveY = newY; 
    }
}