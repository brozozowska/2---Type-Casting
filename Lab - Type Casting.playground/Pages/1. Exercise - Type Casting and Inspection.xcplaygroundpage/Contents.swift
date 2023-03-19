/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var nonHomogenousCollection: [Any] = [3.14, 0.333, 10, 2023, "Happy new year!", true, false]
print(nonHomogenousCollection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for item in nonHomogenousCollection {
    if let integers = item as? Int {
        print("The integer has a value of \(integers)")
    } else if let doubles = item as? Double {
        print("The double has a value of \(doubles)")
    } else if let strings = item as? String {
        print("The string has a value of \(strings)")
    }else if let booleans = item as? Bool {
        print("The boolean has a value \(booleans)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var nonHomogenousDict: [String: Any] = ["First key": 0.123, "Second key": "2.234", "Third key": 19, "Fourth key": true, "Fifth key": false, "Sixth key": "Just string value"]
//print(nonHomogenousDict["Second key"])
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (item, value) in nonHomogenousDict {
    if let value = nonHomogenousDict[item] as? Int {
        total = total + Double(value)
    } else if let value = nonHomogenousDict[item] as? Double {
        total = total + value
    } else if let value = nonHomogenousDict[item] as? String {
        total = total + 1
    } else if let value = nonHomogenousDict[item] as? Bool {
        if value == true {
            total = total + 2
        } else {
            total = total - 3
        }
    }
}

print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (item, value) in nonHomogenousDict {
    if let value = nonHomogenousDict[item] as? Int {
        total2 = total2 + Double(value)
    } else if let value = nonHomogenousDict[item] as? Double {
        total2 = total2 + value
    } else if let value = nonHomogenousDict[item] as? String {
        if let unwrappedValue = Double(value) {
            total2 = total2 + unwrappedValue
        }
    }
}

print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
