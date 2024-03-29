import Foundation

public struct Queue<T>{
    public var array = [T]()

    public init(_ r : [T]){
        array = r
    }
    
    public var isEmpty : Bool {
        return array.isEmpty
    }
    
    public var count : Int {
        return array.count
    }
    
    public mutating func enqueue(_ element :  T){
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front : T? {
        return array.first
    }
    
}



