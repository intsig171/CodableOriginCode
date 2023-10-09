import Foundation



/// A type that can decode values from a native format into in-memory representations.
public protocol Decoder {
    /// The path of coding keys taken to get to this point in decoding.
    var codingPath: [CodingKey] { get }

    /// Any contextual information set by the user for decoding.
    var userInfo: [CodingUserInfoKey : Any] { get }

    /// Returns the data stored in this decoder as represented in a container keyed by the given key type.
    ///
    /// - parameter type: The key type to use for the container.
    /// - returns: A keyed decoding container view into this decoder.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not a keyed container.
    func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key>

    /// Returns the data stored in this decoder as represented in a container appropriate for holding values with no keys.
    ///
    /// - returns: An unkeyed container view into this decoder.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not an unkeyed container.
    func unkeyedContainer() throws -> UnkeyedDecodingContainer

    /// Returns the data stored in this decoder as represented in a container appropriate for holding a single primitive value.
    ///
    /// - returns: A single value container view into this decoder.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not a single value container.
    func singleValueContainer() throws -> SingleValueDecodingContainer
}
