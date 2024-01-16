import React from 'react';
import './App.css'
import BookList from './components/BookList';
import TodoList from './components/TodoList';
import MovieList from './components/MovieList';

function App() {
    return (
        <div>
            <h1>Lab Activity 2: Components Activity</h1>
            <TodoList />
            <MovieList />
            <BookList />
        </div>
    );
}

export default App;

