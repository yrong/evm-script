// SPDX-License-Identifier: GPL-3.0-only
pragma solidity >=0.8.0;

import "./ERC20.sol";

contract ERC20Instance is IERC20 {
    address erc20address = 0xFfFFfFFF1fCACbd218edC0EBA20Fc23000000001;
    IERC20 public erc20 = IERC20(0xFfFFfFFF1fCACbd218edC0EBA20Fc23000000001);

    receive() external payable {
        // React to receiving ether
    }

    // function name() external view override returns (string memory) {
    //     // We nominate our target collator with all the tokens provided
    //     return erc20.name();
    // }

    function name() external view override returns (string memory) {
        (bool success, bytes memory returnData) = erc20address.staticcall(abi.encodeWithSignature("name()"));
        assembly {
            if eq(success, 0) {
                revert(add(returnData, 0x20), returndatasize())
            }
        }

        return abi.decode(returnData, (string));
    }

    function symbol() external view override returns (string memory) {
        // We nominate our target collator with all the tokens provided
        (bool success, bytes memory returnData) = erc20address.staticcall(abi.encodeWithSignature("symbol()"));
        assembly {
            if eq(success, 0) {
                revert(add(returnData, 0x20), returndatasize())
            }
        }

        return abi.decode(returnData, (string));
    }

    function decimals() external view override returns (uint8) {
        // We nominate our target collator with all the tokens provided
        // return erc20.decimals();
        revert();
    }

    function totalSupply() external view override returns (uint256) {
        // We nominate our target collator with all the tokens provided
        // return erc20.totalSupply();
        revert();
    }

    function balanceOf(address who) external view override returns (uint256) {
        // We nominate our target collator with all the tokens provided
        // return erc20.balanceOf(who);
        (bool success, bytes memory returnData) = erc20address.staticcall(
            abi.encodeWithSignature("balanceOf(address)", who)
        );
        assembly {
            if eq(success, 0) {
                revert(add(returnData, 0x20), returndatasize())
            }
        }

        return abi.decode(returnData, (uint256));
    }

    function allowance(address owner, address spender)
        external
        view
        override
        returns (uint256)
    {
        // return erc20.allowance(owner, spender);
        revert();
    }

    function transfer(address to, uint256 value)
        external
        override
        returns (bool)
    {
        // return erc20.transfer(to, value);
        (bool success, bytes memory returnData) = erc20address.call(
            abi.encodeWithSignature("transfer(address,uint256)", to, value)
        );
        assembly {
            if eq(success, 0) {
                revert(add(returnData, 0x20), returndatasize())
            }
        }
    }

    function transfer_delegate(address to, uint256 value)
        external
        returns (bool)
    {
        // (bool result, bytes memory data) = erc20address.delegatecall(
        //     abi.encodeWithSignature("transfer(address,uint256)", to, value)
        // );
        // return result;
        revert();
    }

    function approve(address spender, uint256 value)
        external
        override
        returns (bool)
    {
        // return erc20.approve(spender, value);
        revert();
    }

    function approve_delegate(address spender, uint256 value)
        external
        returns (bool)
    {
        // (bool result, bytes memory data) = erc20address.delegatecall(
        //     abi.encodeWithSignature("approve(address,uint256)", spender, value)
        // );
        // return result;
        revert();
    }

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external override returns (bool) {
        // return erc20.transferFrom(from, to, value);
        revert();
    }

    function transferFrom_delegate(
        address from,
        address to,
        uint256 value
    ) external returns (bool) {
        // (bool result, bytes memory data) = erc20address.delegatecall(
        //     abi.encodeWithSignature(
        //         "transferFrom(address,address,uint256)",
        //         from,
        //         to,
        //         value
        //     )
        // );
        // return result;
        revert();
    }
}
