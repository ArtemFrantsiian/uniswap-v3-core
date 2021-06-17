// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

contract PriceMathTest {
    function sqrt(uint256 x) external pure returns (uint256) {
        return PriceMath.sqrt(x);
    }

    function getGasCostOfSqrt(uint x) external pure returns (uint256) {
        uint256 gasBefore = gasleft();
        PriceMath.sqrt(x);
        return gasBefore - gasleft();
    }

    function getSqrtRatioAtPrice(address token0, address token1, uint256 price) external pure returns (uint160) {
        return PriceMath.getSqrtRatioAtPrice(token0, token1, price);
    }

    function getGasCostOfGetSqrtRatioAtPrice(address token0, address token1, uint256 price) external pure returns (uint256) {
        uint256 gasBefore = gasleft();
        PriceMath.getSqrtRatioAtPrice(token0, token1, price);
        return gasBefore - gasleft();
    }

    function getPriceAtSqrtRatio(address token0, address token1, uint160 sqrtPriceX96) external pure returns (uint256) {
        return PriceMath.getPriceAtSqrtRatio(token0, token1, sqrtPriceX96);
    }

    function getGasCostOfGetPriceAtSqrtRatio(address token0, address token1, uint160 sqrtPriceX96) external pure returns (uint256) {
        uint256 gasBefore = gasleft();
        PriceMath.getPriceAtSqrtRatio(token0, token1, sqrtPriceX96);
        return gasBefore - gasleft();
    }
}
