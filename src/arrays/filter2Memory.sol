// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function filterEven(uint[] calldata x) external pure returns(uint[] memory){
        uint count = 0;
        for(uint i=0; i<x.length;i++){
            if(x[i] % 2 == 0) count++;
        }

        uint[] memory result = new uint[](count);
        uint idx = 0;
        for(uint i=0;i<x.length;i++){
            if(x[i] % 2 == 0){
                result[idx] = x[i];
                idx++;
            }
        }

        return result;
    }
}
