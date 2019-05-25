# iOSPurchases

```iOSPurchases``` help you manage with Apple Subscriptions with your own server. Replacing SwiftyStoreKit.

### Prerequisites

- iOS 10.0+

### Installing

### CocoaPods

`iOSPurchases` is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```
pod 'iOSPurchases'
```

## Getting Started

##### Code 
#### App Delegate - 

```swift
import iOSPurchases
```

in application didFinishLaunchingWithOptions
```swift
        Purchase.shared.start(key: "YOUR_KEY_IS_HERE", shouldAddStorePayment: { (payment) -> (Bool) in
          return true
        })
        Purchase.shared.serverUrlString = "YOUR SERVER URL HERE"
```
in application will terminate 
```swift
        Purchase.shared.applicationWillTerminate
```


#### Subscribe to notifications, where needed
```swift
  Purchase.optionsLoadedNotification
  Purchase.restoreSuccessfulNotification
  Purchase.purchaseSuccessfulNotification
  Purchase.filedNotification
  Purchase.restoreFailed
  Purchase.optionsFailedToLoad
```

#### Whenever you want to load your options -- just give list of identifiers
```swift
Purchase.shared.load(inAppOptions: ["GIVE","HERE","LIST","OF","INAPP","IDENTIFIERS"])
```
#### When options loaded, you will recieve a Purchase.optionsLoadedNotification. Then just use
```swift
Purchase.shared.options
``` 

#### When user tried to purchase something - use 
```swift
  Purchase.shared.purchase(option: InAppOption)
```

#### Restore 
```swift
  Purchase.shared.restore(needVerifyInstantly: Bool = false, verifyingCompletion: ((Response?, Error?) -> ())? = nil)
  
  Response Structure
  
  public struct Response: Decodable {
    public let isSubscribed: Bool
    public let dateEnd: Int64?
    public let serverDate: Int64?
    
    public var date: Date {
        return Date(timeIntervalSince1970: Double(dateEnd ?? 0))
    }
    
    public var server: Date {
        return Date(timeIntervalSince1970: Double(serverDate ?? 0))
    }
    
    init(data: Data) throws {
        self = try JSONDecoder().decode(Response.self, from: data)
    }
}
```

#### Check that user is subscribed or verify subscription 
```swift
    Purchase.shared.isSubscribed(completion: @escaping (Bool, Error?) -> ())
    Purchase.shared.verify(completion: ((Response?, Error?) -> ())? = nil)
```

## What need to improve
* custom Response struct
* ...

## License

`iOSPurchases` is released under the MIT license.
See [LICENSE.md](./LICENSE) for details.
