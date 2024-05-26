# pool

Solidity:
track both token amounts and set an arbitrary ratio
function to add liquidity
functions to swap between the two tokens
function to read the pool state

x, y
x * y = k


Frontend:
UI for adding liquidity
UI(s) for swapping between the two tokens
UI for the pool state


0x95B8776399628CC84AD8C2e4f06576e6CD5a5390 = address


abi = [
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "addX",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "addY",
          "type": "uint256"
        }
      ],
      "name": "addLiquidity",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "poolState",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "depositedY",
          "type": "uint256"
        }
      ],
      "name": "swapX",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "depositedX",
          "type": "uint256"
        }
      ],
      "name": "swapY",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
  ]