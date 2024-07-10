import Cocoa

var shoppingList = ["milk", "cereal", "sour cream", "milk", "eggs", "bread", "cereal" ]

print(shoppingList.count)

var shoppingListUniqueValue = Set(shoppingList)

print(shoppingListUniqueValue.count)
