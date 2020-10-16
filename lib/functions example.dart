///These are notes and sample code to help understand functions.
///
/// Dart has 2 basic function types:
///                         - Void functions; are functions that have no return, and use less memory.
///                         - Var functions; functions that can return a value or object that can be assigned to a variable.
///
/// When defining a function the notation is as follows:
/*
Theoretical notation:

  ReturnType functionName(parametersToTakeIn) {Thefunctionitself}

Real Example notation:

  String quoteTemplate(quote){
    print('$quote')
    };
 */

/// Variables can be initialized inside the parameters of a function like so,
/// however only use this when you want the function to return something:
/// FYI this is an example of a Var (variable) type function, it returns a string
/*
String randomQuote(String quote){
    quote = 'some random text'
    return('$quote')
    };
 */
/// All the above function does is store 'some random text' into the randomQuote string variable.



///  We can also use functions to return a command (print), like so:
///  FYI EVEN CLASSES AND WIDGETS CAN BE RETURNED
/*
Var randomQuote(String quote){
    quote = 'some random text'
    return(print('$quote'))
    };
 */

/// If we write a Var function, and its only operation is to return as data type,
/// much like the function above, there is a short hand way of writing it:
/*
Var randomQuote(String quote) => print('$quote')
 */

/// to use the above functions, we'd call them like so:
/*
randomQuote('print this');
 */