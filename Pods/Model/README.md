## Introduction

This Swift Pod provides a set of powerful property wrappers and utilities to simplify working with Codable types and JSON responses. With these property wrappers, you can easily handle scenarios where JSON key types are uncertain, null, or non-existent, and you can also customize your own property wrappers. This README will guide you through the features and usage of this Pod.

## Features

### 1. Handling Uncertain JSON Types

You can make your Codable types more flexible when dealing with uncertain JSON data types. This is especially helpful when the JSON response may contain a key with a different data type or no value at all. Here's how to use it:

- Use `@AnyValueWrapper` and `@DefaultStringEmpty` to handle any JSON value, ensuring you get a String result.
  
  Example:
  ```swift
  struct Item {
      @AnyValueWrapper @DefaultStringEmpty var price: String
  }
  ```
  


### 2. Default Values
- For cases where the key might be null or not exist at all, you can use `@DefaultValueWrapper` in a similar way.

If no value is received for a key using `@DefaultValueWrapper` or `@AnyValueWrapper`, the default value of the nested property wrapper will be used. In the case of `@DefaultStringEmpty`, it will default to an empty string.

### 3. Eliminate Custom Initializers

You won't need to write lengthy custom initializers for your Codable types. The property wrappers handle the decoding process for you.

### 4. Simplify Optional Chaining

You can avoid lengthy optional chaining in your code, thanks to the default values provided by the property wrappers.

### 5. Direct JSON to Native Type Conversion

Avoid manually converting JSON response types into native types every time you use them. The property wrappers handle this conversion for you.

Example:
```swift
struct Item {
    @FullStringToUrl var pictureUrl: String
}
```

Usage:
```swift
let url = item.$pictureUrl
```

### 6. Custom Property Wrappers

You can create your own custom property wrappers for your specific use cases. To do this, confirm your property wrapper with the `CodAbleInitializer` protocol. As an example, you can create a `ShippingPrice` property wrapper for handling shipping-related information.

```swift
@propertyWrapper struct ShippingPrice: CodableInitializer {
    static var defaultValue: Bool = false
    var wrappedValue: Bool
    var projectedValue: String {
        get {
            return wrappedValue ? "Free Shipping" : ""
        }
    }
}
```

## Installation

To use these property wrappers in your Swift project, simply add this Pod to your project using your preferred dependency manager.

```swift
pod 'Model'
```

## Contributions

We encourage you to contribute to this repository by adding your reusable property wrappers and utilities. Your contributions are greatly appreciated!

Thank you for using this Swift Pod. If you have any questions or need assistance, please don't hesitate to reach out. Happy codi
