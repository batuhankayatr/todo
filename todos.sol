pragma solidity ^0.8.7;

// SPDX-License-Identifier: MIT

contract Todos{
    struct Todo{
        string text;
        bool completed;
    } 

    Todo[] public todos;

    function create(string calldata _text) public{
        todos.push(Todo(_text,false));
    }
    function updateText(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
