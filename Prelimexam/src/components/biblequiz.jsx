import React from 'react';

const BibleQuiz = () => {
    const quizData = [
      { question: 'The Bible consists of the Old and New Testaments.', correct: true },
      { question: 'Moses led the Israelites out of Egypt.', correct: true },
      { question: 'The Sermon on the Mount is found in the Book of Luke.', correct: false },
    ];
    return (
        <div>
          <h2>The Bible Quiz</h2>
          {quizData.map((item, index) => (
            <div key={index} className="question-container">
              <p className="question">{item.question}</p>
              {item.correct ? (
                <p className="green">Correct!</p>
              ) : (
                <p className="red">Incorrect!</p>
              )}
            </div>
          ))}
        </div>
      );
  };
  
  export default BibleQuiz;