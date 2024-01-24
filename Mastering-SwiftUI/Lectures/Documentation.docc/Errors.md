# Errors
We have find and give solution to some common error while coding in swiftUI to save time in future


# Static method 'buildExpression' requires that 'MyItem' conform to 'View'


```swift
import SwiftUI
///  Extracting Subview
struct Lec_SubView: View {
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)            
            HStack{
                MyItem(title: "Apples", count: 2, color: .red)
                //Error in above line
            }            
        }
    }
}

#Preview {
    Lec_SubView()
}


struct MyItem {    
    let title: String
    let count: Int
    let color: Color    
    var body: some View{
        VStack{
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

```
### Reason
We use `MyItem` as function but we create `MyItem` as a struct to pass a view and we didn't mention about view in line
``` swift
struct MyItem {...}
```
### Solution
Add view to struct
``` swift
struct MyItem: View {...}
```


## Missing Binding

``` swift
import SwiftUI

struct Lec_Binding: View {
    
    @State var backgroundColor: Color = Color.green
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
            
            ButtonView()

        }
    }
}

#Preview {
    Lec_Binding()
}
/// ButtonView is subview of "Lec Binding"
struct ButtonView: View {
    var body: some View {
        
        Button(action: {
            backgroundColor = Color.orange
        }, label: {
            Text("Button")
                .foregroundStyle(Color.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(15)
        })
    }
}
```
### Reason
We have error in `struct ButtonView: View {...}` as "Cannot find 'backgroundColor' in scope"

"backgroundColor" is declared in above parent struct "Lec_SubView"

## Solution
add Binding property in "ButtonView" struct
``` swift
@Binding var backgroundColor: Color
```
And Obviously we need to update the code above in this example

In ZStack{...}
```swift
ButtonView(backgroundColor: $backgroundColor)
```
