import React, { Component } from 'react';

class TodoList extends Component {
    constructor(props) {
        super(props);

        // Initial todo list
        this.state = {
            todos: ["Clean Porch", "Wash Car", "Attend BCHAIN Class"]
        };
    }

    render() {
        return (
            <div>
                <h2>Todo List</h2>
                <ul>
                    {this.state.todos.map((todo, index) => (
                        <li key={index}>{todo}</li>
                    ))}
                </ul>
            </div>
        );
    }
}

export default TodoList;
