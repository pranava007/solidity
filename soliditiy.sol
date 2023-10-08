// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Helloworld {
    uint256 public num = 1;
    int256 public number = 3;
    bytes public char = "hi";
    string public name = "hari";
    bool public value = true;
    address public addres = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}

//function

contract FunctionDom {
    string name;

    function show() public view returns (string memory) {
        return name;
    }

    function updata(string memory _insert) public {
        name = _insert;
    }
}

//function use the transaction
contract Fund {
    function Funfme() public payable {}

    function Showfund() public view returns (uint256) {
        return address(this).balance;
    }

    function Addresbalaneceof() public view returns (uint256) {
        return address(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2).balance;
    }
}

//user fund add
contract Trancefer {
    uint256 balanceIn;

    function Showadd(uint256 _inser) public payable {
        balanceIn = _inser;
    }

    function getbalace() public view returns (uint256) {
        return balanceIn;
    }
}

//raw trancefer Ether

contract Nonfunction {
    receive() external payable {}

    function fundme() public view returns (uint256) {
        return address(this).balance;
    }
}

//function modifier
contract modifiered {
    receive() external payable {}

    address public Owner;

    constructor() {
        Owner = msg.sender;
    }

    modifier modif() {
        require(msg.sender == Owner, "Not Owner");
        _;
    }

    function fundshow() public view modif returns (uint256) {
        return address(this).balance;
    }
}

//Array

contract Array {
    uint256[] listof;

    function list(uint256 _number) public {
        listof.push(_number);
    }

    function pop() public {
        listof.pop();
    }

    function listlen() public view returns (uint256) {
        return listof.length;
    }

    function show() public view returns (uint256[] memory) {
        return listof;
    }

    function indexnumber(uint256 _index) public {
        delete listof[_index];
    }

    function remove(uint256 _index) public {
        listof[_index] = listof[listof.length - 1];
    }
}

//fixed size array

contract fixed_array {
    uint256[5] public variyable_name = [1, 2, 3, 4, 5];

    function show() public view returns (uint256[5] memory) {
        return variyable_name;
    }

    function update() public {
        variyable_name[3] = 8;
    }
}

//add address for array
contract addaddress {
    address[] add_address;

    function fund() public payable {
        add_address.push(msg.sender);
    }

    function account() public view returns (address[] memory) {
        return add_address;
    }

    function Totalfund() public view returns (uint256) {
        return address(this).balance;
    }
}

//memeory array

contract memoryarray {
    function memarray() public pure returns (uint256[] memory) {
        uint256[] memory arrayname = new uint256[](5);

        arrayname[0] = 4;
        arrayname[1] = 5;
        arrayname[2] = 7;
        arrayname[3] = 8;
        arrayname[4] = 9;

        return arrayname;
    }

    //bytes fixed dynamic
}

//mapping
contract mappingd {
    mapping(address => uint256) name;

    address Owner;

    constructor() {
        Owner = msg.sender;
    }

    function pauget() public payable {
        name[msg.sender] = msg.value;
    }

    function geter() public view returns (uint256) {
        require(Owner == msg.sender, "you are not Onwer");
        return name[msg.sender];
    }
}

//nested mapping

contract nestedmapping {
    mapping(address => mapping(uint256 => uint256)) nest;

    function insert(uint256 _no1, uint256 _no2) public {
        nest[msg.sender][_no1] = _no2;
    }

    function getter(uint256 _no1) public view returns (uint256) {
        return nest[msg.sender][_no1];
    }

    function delte(uint256 _no1) public {
        delete nest[msg.sender][_no1];
    }
}

//struct

contract user {
    struct person {
        string name;
        uint256 age;
    }

    person detail;

    function insert(string memory _name, uint256 _age) public {
        detail = person({name: _name, age: _age});
    }

    function show() public view returns (string memory name, uint256 age) {
        return (detail.name, detail.age);
    }
}

//struct mapping

contract mappstrct {
    struct person {
        string name;
        uint256 age;
    }

    mapping(address => person) detaile;

    function insert(string memory _name, uint256 _age) public {
        detaile[msg.sender] = person({name: _name, age: _age});
    }

    function show() public view returns (person memory) {
        return detaile[msg.sender];
    }
}

//struct array

contract arraystruc {
    struct person {
        string name;
        uint256 age;
    }

    person[] dateil;

    function insert(string memory _name, uint256 _age) public {
        dateil.push(person({name: _name, age: _age}));
    }

    function show() public view returns (person[] memory) {
        return dateil;
    }
}

//call

contract partice {

    event eve(address sent,uint256 amount);
    receive() external payable {
      emit eve(msg.sender,msg.value);
    }
}

contract senderr{

    function callo(address _to) public payable {
        (bool secess, ) = _to.call{value:msg.value}("") ;
        require(secess);
    }
}


//hasing

contract hassing{

    function hasing(string memory A , string memory B)public pure returns(bytes32)  {
       return keccak256(abi.encodePacked(A,B));
    }
}