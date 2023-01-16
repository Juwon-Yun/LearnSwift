import UIKit

/*
 Queue example
 
 https://developer.apple.com/swift/blog/?id=7
 https://www.swift.org/blog/swift-algorithms/
 https://www.kodeco.com/18517868-swift-algorithms-getting-started#toc-anchor-001
*/

// Queue_Sources.Queue<String>
var queueOfNmae = Queue(["j", "u", "w", "o", "n"])

queueOfNmae.enqueue("y")

// ["j", "u", "w", "o", "n", "y"]
print(queueOfNmae.array)

// Optional("j")
print(queueOfNmae.dequeue())

// Optional("u")
print(queueOfNmae.front)

// false
print(queueOfNmae.isEmpty)
