pragma solidity ^0.4.26;

contract structure{
    // declare structure
    // C.R.U.D
    // Array of Structure
    // Mapping of Structure
    
    // struct User {
    //     address addr;
    //     uint score;
    //     string name;
    // }
    
    struct Person {
        string name;
        uint funds;
    }
    
    mapping(address => Person) people;
    
    // User[] users;
    
    // function testStruct(string calldata _name) view external returns (memory){
    //     User memory user1 = User(msg.sender, 0, _name);
    //     User memory user2 = User({name:_name,score:0,addr:msg.sender});
    //     user1.score = 20;
    //     delete user2;
    //     users.push(user1);
    //     // return user1.addr;
    //     return users[0];
    // }
    
    function getBryn() view public returns (Person)
    {
        return Person({ name: "Bryn", funds: 123 });
    }
}
