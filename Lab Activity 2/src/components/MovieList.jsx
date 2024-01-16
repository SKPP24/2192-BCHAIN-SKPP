import React, { Component } from 'react';

class MovieList extends Component {
    constructor(props) {
        super(props);

        // Initial movie list
        this.state = {
            movies: ["Movie 1", "Movie 2", "Movie N"]
        };
    }

    render() {
        return (
            <div>
                <h2>Movie List</h2>
                <ul>
                    {this.state.movies.map((movie, index) => (
                        <li key={index}>{movie}</li>
                    ))}
                </ul>
            </div>
        );
    }
}

export default MovieList;
