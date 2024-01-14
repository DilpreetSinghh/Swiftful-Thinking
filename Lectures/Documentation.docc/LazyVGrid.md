#  Lazy V Grid

We use grid instead of combination of `Vstack` and `Hstack`

@Metadata{
    @CallToAction(
        purpose: link,
        url: "https://github.com/DilpreetSinghh"
    )
    @PageKind(sampleCode)
}


# Overview

### fixed
@TabNavigator{
    @Tab("Code"){
        ```swift
            import SwiftUI

            struct LecLazyVGrid: View {

            let columns: [GridItem] = [
                GridItem(.fixed(50), spacing: nil, alignment: nil),
                GridItem(.fixed(50), spacing: nil, alignment: nil),
                GridItem(.fixed(100), spacing: nil, alignment: nil),
                GridItem(.fixed(50), spacing: nil, alignment: nil),
                GridItem(.fixed(50), spacing: nil, alignment: nil)
            ]


            var body: some View {
                LazyVGrid(columns: columns, content: {
                    ForEach(0..<50){ index in
                        Rectangle()
                            .frame(height: 50)
                    }
                    
                })
            }
        }

        #Preview {
            LecLazyVGrid()
        }
    ```
    }
    
    @Tab("Preview"){
        ![Fixed Grid preview](LazyVGrid_code_one_preview)
    }
}

This Code only should used for Those app where only one screen size is possible. But this is not pragrmatic situation.
So what we should do instead?
We should adopt another approach, a better approach.

### flexible

@TabNavigator{
    @Tab("Code"){
    ```swift
    struct LecLazyVGrid: View {
        
        let columns: [GridItem] = [
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil),
            GridItem(.flexible(), spacing: nil, alignment: nil)
        ]
        
        
        var body: some View {
            LazyVGrid(columns: columns, content: {
                ForEach(0..<50){ index in
                    Rectangle()
                        .frame(height: 50)
                }
            })
        }
    }
```
    }
    @Tab("Preview"){
        ![Flexible Grid Preview](LazyVGrid_code_one_preview)
    }
}


This code will give flexiblity to multiple screen sizes (plus, pro max and non plus model iPhones)
But what about iPad and macOS?

### adaptive

@TabNavigator{
    @Tab("Code"){
        ```swift
        struct LecLazyVGrid: View {
            
            let columns: [GridItem] = [
                GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
                GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
            ]
            
            
            var body: some View {
                LazyVGrid(columns: columns, content: {
                    ForEach(0..<50){ index in
                        Rectangle()
                            .frame(height: 50)
                    }
                })
            }
        }
    ```
    }
    @Tab("Preview"){
        ![Adaptive Grid Preview](LazyVGrid_code_adaptive_preview)
    }
}


## Making Section over Content while scrolling

We need to change `pinnedViews: []`

```swift
pinnedViews: [.sectionHeaders],
```



## How I make This

@Video(poster: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdeveloper.apple.com%2Fdocumentation%2Fxcode%2Fadding-supplemental-content-to-a-documentation-catalog&psig=AOvVaw3g2yFKQC2rq3FHvn4JzwNh&ust=1705236961048000&source=images&cd=vfe&opi=89978449&ved=0CBMQjRxqFwoTCJiww_C02oMDFQAAAAAdAAAAABAD", source: "https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/cmaf.m3u8", alt: "This is the official video by Apple, available on website")




