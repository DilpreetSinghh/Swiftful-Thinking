import Foundation

/*
    
    // Object Oriented Programming
 
    During hte life the app, we create and destroy objects
 
    Create = Initialize (init) = Allocate (add to memory)
    Destroy = Deinitialize (deinit) = Deallocating (removing from memory)
 
    Automatic Referece Counting (ARC)
    A live count of the number of object in memory
 
    The more objects in memory, the slower the app performs
    We want to keep ARC count as low as possible
    We want to create objects only when we need them
    Destroy them as soon as we no longer need them
 
    for example:
    if an app has 2 screens and user is moving from screen 1 to screen 2.
    We only want to screen 2 WHEN we need it
    (ie. when the user clicks a button to segue to screen 2).
    When we get to screen 2, we may want to deallocate screen 1.
 
    
     Advanced info here:
     https://www.youtube.com/watch?v=-JLenSTKEcA&themeRefresh=1
 
 
// There are 2 types of Memory
    Stack & Heap

    Only objects in heaps are counted towards ARC

    Objects in the Stack
    String, Bool, Int, most basic types
    New: Struct, Enum

    Objects in Heap
    Fuctions
    New: Class, Actors
 
 
     iphone is a "muti-threaded environment"
     There are mutiple "threads" or "engines" running simultaneously
     Each Thread has a Stack
     But there is only one heap for all threads
 
    Therefore:
     Stack is faster, lower memory footprint, preferable
     heap is slower, higher memory footprint, risk of threading issue
 
 
 // Value vs Reference Types
 
    Objects in the Stack are "Value" types
     When we edit a value type, we create a copy of it with new data.
 
    Objects in the Heap are "Reference" Types
     When we edit a Reference type, we edit the object that we are referencing.
     This "reference" is called "pointer" because it "points" to an object in the Heap(memory)
  
 */


struct MyFirstObject{  //Value Types
    let title: String = "Hello World!"
}

class MySecondObject{  // Reference Types
    let title: String = "Hello World!"
}

/*
Class vs Struct
    Imagine a school and in the school there are classrooms.
    Within each class, there are quizzes.
    During the day, the teacher will hand out many different quizzes to different classes.


    "school" = App
    "classroom" = Class
    "quiz" = Struct

    In this example, we have a classroom and there are many actions that occur inside the classroom.
    In code, we create a class and can perform actions within the class.

    In this example, there are many different types of quizzes.
    The teacher hands out the quizzes and the students take the quizzes and return them to the teacher.
    In code, we create many structs and pass them around out app with ease.

Note:
    This metaphor is NOT perfect :)
    Technical a "quiz" can be a class, etc.

    We want to use a class for things like:
    "Manager" "DataService" "Service" "Factory" "ViewModel"
    Objects that we create and want to perform actions inside.

    We want to use a struct for things like:
    Data models
    Objects that we create and pass around our app.

 */

