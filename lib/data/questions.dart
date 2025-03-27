import 'package:quiz_app/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'Which keyword is used to define a function in Python?',
    [
      'def',
      'func',
      'define',
      'lambda',
    ]
),

QuizQuestion(
    'Which of the following is a dynamically-typed language?',
    [
      'Python',
      'C',
      'Java',
      'Rust',
    ]
),

QuizQuestion(
    'Which operator is used for exponentiation in Python?',
    [
      '**',
      '^',
      '*',
      '//',
    ]
),

QuizQuestion(
    'Which of these languages is commonly used for artificial intelligence and machine learning?',
    [
      'Python',
      'C#',
      'PHP',
      'Swift',
    ]
),
QuizQuestion(
    'What is the primary language used for Android app development?',
    [
      'Kotlin',
      'Java',
      'Swift',
      'Dart',
    ]
),

QuizQuestion(
    'Which data structure follows the Last In, First Out (LIFO) principle?',
    [
      'Stack',
      'Queue',
      'Linked List',
      'Array',
    ]
),

QuizQuestion(
    'What is the time complexity of a binary search in a sorted array?',
    [
      'O(log n)',
      'O(n)',
      'O(n^2)',
      'O(1)',
    ]
),

QuizQuestion(
    'Which of these is a version control system?',
    [
      'Git',
      'Docker',
      'Jenkins',
      'PostgreSQL',
    ]
),

QuizQuestion(
    'What is the output of 3 + "3" in JavaScript?',
    [
      '"33"',
      '6',
      'Error',
      '"6"',
    ]
),

QuizQuestion(
    'Which of the following is NOT a programming paradigm?',
    [
      'Modular Programming',
      'Functional Programming',
      'Object-Oriented Programming',
      'Declarative Programming',
    ]
),

QuizQuestion(
    'Which programming language is mainly used for web development?',
    [
      'JavaScript',
      'C++',
      'Python',
      'Swift',
    ]
),

QuizQuestion(
    'What does SQL stand for?',
    [
      'Structured Query Language',
      'Sequential Query Language',
      'Standard Query Language',
      'Server Query Language',
    ]
),

QuizQuestion(
    'Which of the following sorting algorithms has the best average-case time complexity?',
    [
      'Merge Sort',
      'Bubble Sort',
      'Insertion Sort',
      'Selection Sort',
    ]
),

QuizQuestion(
    'Which HTTP status code represents "Not Found"?',
    [
      '404',
      '500',
      '403',
      '301',
    ]
),

];