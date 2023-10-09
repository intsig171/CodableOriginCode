import Foundation


//===----------------------------------------------------------------------===//
// CodingKey
//===----------------------------------------------------------------------===//

/// A type that can be used as a key for encoding and decoding.
public protocol CodingKey: CustomStringConvertible, CustomDebugStringConvertible {
    /// The string to use in a named collection (e.g. a string-keyed dictionary).
    var stringValue: String { get }

    /// Creates a new instance from the given string.
    ///
    /// If the string passed as `stringValue` does not correspond to any instance of this type, the result is `nil`.
    ///
    /// - parameter stringValue: The string value of the desired key.
    init?(stringValue: String)

    /// The value to use in an integer-indexed collection (e.g. an int-keyed dictionary).
    var intValue: Int? { get }

    /// Creates a new instance from the specified integer.
    ///
    /// If the value passed as `intValue` does not correspond to any instance of this type, the result is `nil`.
    ///
    /// - parameter intValue: The integer value of the desired key.
    init?(intValue: Int)
}

extension CodingKey {
    /// A textual representation of this key.
    @_inlineable // FIXME(sil-serialize-all)
    public var description: String {
        let intValue = self.intValue?.description ?? "nil"
        return "\(type(of: self))(stringValue: \"\(stringValue)\", intValue: \(intValue))"
    }

    /// A textual representation of this key, suitable for debugging.
    @_inlineable // FIXME(sil-serialize-all)
    public var debugDescription: String {
        return description
    }
}
