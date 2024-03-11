# Slider

Important Notes regarding the various implementation of Slider in an application along with code and preview.

## Overview

### Simple Slider
@TabNavigator{
    @Tab("Simple Slider Code"){
        ```swift
        import SwiftUI

        struct Lec_Slider: View {
            
            @State var sliderValueType: Double = 10
            
            var body: some View {
                Text("Slider Value: \(sliderValueType)")
                Slider(value: $sliderValueType)
                    .tint(.green)
            }
        }

        #Preview {
            Lec_Slider()
        }
    ```
    }
    
    @Tab("Simple Slider Preview"){
        ![Simple Slider preview](Slider01_Preview)
    }
}


### Simple Slider with Range
@TabNavigator{
    @Tab("Slider with Range Code"){
        ```swift
        import SwiftUI

        struct Lec_Slider: View {
            
            @State var sliderValueType: Double = 10
            
            var body: some View {
                Text("Slider Value: \(sliderValueType)")
                Slider(value: $sliderValueType, in: 0...100)
                    .tint(.green)
            }
        }

        #Preview {
            Lec_Slider()
        }
    ```
    }
    
    @Tab("Slider with Range Preview"){
        ![Slider with Range preview](Slider02_Preview)
    }
}

### Slider with Steps and Range

@TabNavigator{
    @Tab("Slider with Range and Step Code"){
        ```swift
        import SwiftUI

        struct Lec_Slider: View {
            
            @State var sliderValueType: Double = 10
            
            var body: some View {
                Text("Slider Value: \(sliderValueType)")
                Slider(value: $sliderValueType, in: 0...100, step: 10.0)
                    .tint(.green)
            }
        }

        #Preview {
            Lec_Slider()
        }
    ```
    }
    
    @Tab("Slider with Range and Step Preview"){
        ![Slider with Range and Step preview](Slider03_Preview)
    }
}
