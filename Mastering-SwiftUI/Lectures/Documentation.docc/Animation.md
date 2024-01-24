# Animation

<!--@START_MENU_TOKEN@-->Summary<!--@END_MENU_TOKEN@-->

## Reference Code
Delay is Added in Animation

@TabNavigator{
    @Tab("Code"){
        This code will give a delay of 1 Second in Animation
        ``` swift
        import SwiftUI

        struct Lec_Animation: View {
            
            @State var isAnimated: Bool = false
            @State var rectangleColor: Color
            var body: some View {
                VStack{
                    Button {
                        withAnimation(
                            Animation
                                .default
                                .delay(1.0)){
                            changingColor()
                        }
                    } label: {
                        VStack{
                            Text("Animation Button")
                                .font(.title)
                            Text("Color: \(rectangleColor.description)")
                        }
                    }
                    Spacer()
                    RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                        .fill(rectangleColor)
                        .frame(width: isAnimated ? 100 : 250,
                               height: isAnimated ? 100 : 250)
                        .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    /// rotate the object while animation is happening ( 360 degree)
                        .offset(y: isAnimated ? -100 : -50)
                    /// shifts the location of object
                    
                    Spacer()
                    /// if corner radius of rectangle is (height / 2) and height = width, rectangle will look like circle
                }
            }
            
            func changingColor() {
                isAnimated.toggle()
                rectangleColor = isAnimated ? Color.red : Color.green
            }
        }

        #Preview {
            Lec_Animation(rectangleColor: .red)
        }
        ```
    }
    @Tab("Preview"){
        ![Animation](Animation01)
    }
}

### Adding repetition in Animation

@TabNavigator{
    @Tab("Code"){
        Button {
            withAnimation(
                Animation
                    .default
                    .repeatCount(5, autoreverses: true)){
                changingColor()
            }
        } 
    }
    @Tab("Explanation"){
       This will repeat animation for 5 times
       one in one out = two animation
       
       Animation wasn't performing well due to performance issues
    }
}

@TabNavigator{
    @Tab("Code"){
        Button {
            withAnimation(
                Animation
                    .default
                    .repeatCount(5, autoreverses: false)){
                changingColor()
            }
        } 
    }
    @Tab("Explanation"){
       This will repeat animation for 5 times
       one in one out = one animation
       
       Animation wasn't performing well due to performance issues
    }
}
