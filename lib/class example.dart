
///These are notes and sample code to help understand classes.
///Remember a class is just a blueprint for and object, which helps us in object oriented programming.
///For simplicity and organization classes can be stored in their own library files and be imported into other projects.
///
/// FYI, Classes can also inherit from author classes through "extends"
///
/// Basic Syntax:
/*
class className {
  fields;
  getters/setters
  constructor
  methods/functions
 }
*/
///
///
///
///
///
/// EXAMPLE #1 - Fundamentals of Classes
/// In the below example we will create a "Quote" object which will contain some text, and an author.

/*
class Quote {
  // Lets start with some class variables...
  String text;
  String author;
*/

/// Next we will create a CONSTRUCTOR which will build our class functions for us...
///Note: how these variables have the same names but are not the same,
///The Constructor variables that have been initialised in the parameter "()" section of the "Quote" constructor function,
///The Constructor function is setting (equating) the variables passed to it variables as class variables (this.text, and this.author). This is always done through a constructor.
 /*
  Quote(String text, String author) { // <--- This is the constructor function!!!
    this.text = text;
    this.author = author;
  }
}
*/

/// The following is a simple example of how we can use the Quote object defined above...
/*
Quote myquote = Quote('this is my quote for this example', 'The Great Matthew Gallo');
*/

/// ====================================================================================================================================


/// EXAMPLE #2 - Named Parameters
/// Here is sample code that uses the same code as Example #1 however builds upon it using named parameters (aka widget properties).
/// Some advantages of named parameters are: -order does not matter,
///                                          - it uses indexing, sort of like a dictionary to help us pass parameters to classes.
///                                          - it simplifies the constructor grammar.
/*
class Quote {
  // Lets start with some class variables...
  String text;
  String author;
 */
  /// All we need to do to use named parameters is use the curly brackets {} in the parameters of the constructor, however there's a better way.
  // Quote({String text, String author}) { // <--- Like so
  //   this.text = text;
  //   this.author = author;

/// All of the commented our code above can be written in short hand like so...
/*
  String text;
  String author;

  Quote({this.text, this.author}) // <--- Like so, so much simpler to get your head around.
}
 */

/// The following is a simple example of how we can use the Quote object defined above, using NAMED PARAMETERS... Notice how it looks like a widget.
/*
Quote myquote = Quote(author: 'The Great Matthew Gallo', text: 'this is my quote for this example');
*/
/// ====================================================================================================================================


/// EXAMPLE #3 - Importing a class
///
/// if we would want to use this class in our "main" all we would need to do is write the following line at the top of the "main" file,
/// As long as it is in the same directory
/*
import 'class example.dart';
*/


/// ====================================================================================================================================


/// EXAMPLE #4 - Using the class as an object.
/// So we defined ths "Quote" object, but how do we use it in our code, below are some examples.
/// Remember the object type is now of class type Quote, no longer a string or wtv...
///
/// --- A Quote can be defined like so :
/*
Quote(author: Matthew Gallo , text: 'this is my first quote for this example');
 */

/// --- A list of quotes can be defined like so : Remember these <> brackets define type --> <Quote>
/// Notice how we use the constructor of the class to "construct" new quote objects.
/*
List<Quote> listOfQuotes = [
  Quote(author: Matthew Gallo , text: 'this is my first quote for this example'),
  Quote(author: Vines Gomez, text: 'this is my second quote for this example'),
  Quote(author: Johnny Twolegs, text: 'this is my third quote for this example'),
 ];
 */
/// --- There is some specific notation when trying to output a variable that refers to a class property in a list,
/// the example below passes the text property of a quote object (quote.text) that is inside the list "listOfQuotes"
/*
List<Quote> listOfQuotes = [
  Quote(author: Matthew Gallo , text: 'this is my first quote for this example'),
  Quote(author: Vines Gomez, text: 'this is my second quote for this example'),
  Quote(author: Johnny Twolegs, text: 'this is my third quote for this example'),
 ];

 print('${quote.text}) // curly brackets must be used when trying to pass a property of an object that is in a list,
                       // '$variable' must be used when writing a variable in a string. AKA Variable wrapper
 */