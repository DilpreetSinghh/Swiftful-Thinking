# Cases
When to use Arrays & Set


## Tuples

```swift
import Foundation

var myTitle1: Int = 23
var myTitle2: Int = 12

func doAddition(value: (title1 : Int, title2: Int)) -> Int{
    return value.title1 + value.title2
}
doAddition(value: (myTitle1, myTitle2))
```
Not Scalable for more titles

## Custom Data Model

```swift
struct TitleModels {
    let title1: Int
    let title2: Int
}

func doAddition2(value: TitleModels) -> Int{
    return value.title1 + value.title2
}
doAddition2(value: TitleModels(title1: 12, title2: 3))
```
Not Scalable for more titles
