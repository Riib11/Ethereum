pragma solidity ^0.4.0;

contract Casino {

    address owner;
    uint winning_number;
    mapping(address=>Player) players;

    function Casino(uint _winning_number) public {
        winning_number = _winning_number
        owner = msg.sender;
    }

    function run_game(Player player, ) public returns bool {
        return false;
    }

    struct Player {
        string name;
        uint balance;
    }

    function new_player(string _name, uint _balance) public {
        Player storage player = players[msg.sender];
        player.name = _name;
        player.balance = _balance;
    }

    function get_name() public return uint {
        return players[msg.sender].name
    }

    function get_balance() public return uint {
        return players[msg.sender].balance
    }

    function set_balance(uint _balance) public {
        Player storage player = players[msg.sender];
        player.balance = _balance
    }

}