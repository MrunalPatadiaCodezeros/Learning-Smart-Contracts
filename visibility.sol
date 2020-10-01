pragma solidity ^0.5.11;

/** 
 * @title Visibility
 * @dev Implements public,private,internal,external visibility key words for function and variables 
 * With Child Contract
 */
contract Base{
    // public variable self call 
    // stack variable bacuse it's declare outside of function and it's can't be external
    string public sampleVariable = "Data"; 
    
    // Private Function Access only in Current Contract
    // Also it's not Display in Output
    /** 
     * @dev Private Function Access only in Current Contract.
     * @return String Value for check  
    */
    function privateFunc() private pure returns (string memory){
        return "Private function called";
    }
    
    /** 
     * @dev Public Function can call by Child Function and external function 
     * @return call Provate Function  
    */
    function publicFunc() public pure returns (string memory){
        return privateFunc();
    }
    
    /**
     *@dev internal function Which can use in side Current and Child Both but not show in outout
     *@return String
    */
    function internalFunc() internal pure returns (string memory){
        return "Internal Function Call";
    }
    
    function publicSecondFunc() public pure returns (string memory){
        return "publicSecond Function Call";
    }
    
    // external function can't access in side same or Child function only From other Function and account access It.
    function externalFunc() external pure returns (string memory){
        return "external Function Call";
    }
    
}

/** 
 * @title Child
 * @dev Child function is extract data and Function from parent function (Base).
 */
contract Child is Base {
    
    /**
     * @dev testPrivateFunc is function want to access Provate function of Base Contract 
     * @return error bacause Child function not have Access to private function of Base 
    */
    function testPrivateFunc() public pure returns (string memory){
        // return
         return publicFunc(); // Via public function of Base we can get private function data
        // returns privateFunc()
    }
    
    function testInternalFunc() public pure returns (string memory){
        return internalFunc();
    }
}