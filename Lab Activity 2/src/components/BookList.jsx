import React from 'react';

function BookList(props) {
    const randomBooks = [
        { title: 'The Catcher in the Rye', author: 'J.D. Salinger' },
        { title: 'To Kill a Mockingbird', author: 'Harper Lee' },
        { title: '1984', author: 'George Orwell' }
    ];

    return (
        <div>
            <h2>3 Books</h2>
            <ul>
                {randomBooks.map((book, index) => (
                    <li key={index}>{`${book.title} by ${book.author}`}</li>
                ))}
            </ul>
        </div>
    );
}

export default BookList;
