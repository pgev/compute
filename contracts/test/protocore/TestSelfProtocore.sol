pragma solidity >=0.5.0 <0.6.0;

// Copyright 2019 OpenST Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import "../../consensus/CoconsensusI.sol";
import "../../protocore/SelfProtocore.sol";

contract TestSelfProtocore is SelfProtocore {

    /* Storage */

    CoconsensusI public coconsensus;

    function setCoconsensus(address _coconsensus) external {
        coconsensus = CoconsensusI(_coconsensus);
    }

    function setGenesisStorage(
        bytes32 _genesisAuxiliaryParentVoteMessageHash,
        bytes32 _genesisAuxiliarySourceTransitionHash,
        bytes32 _genesisAuxiliarySourceBlockHash,
        uint256 _genesisAuxiliarySourceBlockNumber,
        bytes32 _genesisAuxiliaryTargetBlockHash,
        uint256 _genesisAuxiliaryTargetBlockNumber,
        uint256 _genesisAuxiliaryAccumulatedGas
    )
        external
    {
        genesisAuxiliaryParentVoteMessageHash = _genesisAuxiliaryParentVoteMessageHash;
        genesisAuxiliarySourceTransitionHash = _genesisAuxiliarySourceTransitionHash;
        genesisAuxiliarySourceBlockHash = _genesisAuxiliarySourceBlockHash;
        genesisAuxiliarySourceBlockNumber = _genesisAuxiliarySourceBlockNumber;
        genesisAuxiliaryTargetBlockHash = _genesisAuxiliaryTargetBlockHash;
        genesisAuxiliaryTargetBlockNumber = _genesisAuxiliaryTargetBlockNumber;
        genesisAuxiliaryAccumulatedGas = _genesisAuxiliaryAccumulatedGas;
    }

    function getCoconsensus()
		public
		view
		returns (CoconsensusI)
	{
        return coconsensus;
    }
}
