import Foundation

/*
 Classes are slower
 Classes are stored in the Heap (Memory)
 Objects in the Heap are Reference Types
 Reference Types point to object in memory and update the object in memory
 */


// All the data needed for some Screen
class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool
    
    // Classes have no implicit init, although both init are same
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    // Classes have deinit, unlike structs
    deinit {
        
    }
    
    func hideButton(){
        showButton = false
    }
    
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }
}


/*
 Notice that we are using a `let`, because:
     The object itself is not changing
     The data inside the object is changing
*/
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)

viewModel.hideButton()
viewModel.showButton
