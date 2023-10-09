import Foundation

/// A type that provides a view into a decoder's storage and is used to hold
/// the encoded properties of a decodable type in a keyed manner.
///
/// Decoders should provide types conforming to `UnkeyedDecodingContainer` for
/// their format.
public protocol KeyedDecodingContainerProtocol {
    associatedtype Key : CodingKey

    /// The path of coding keys taken to get to this point in decoding.
    var codingPath: [CodingKey] { get }

    /// All the keys the `Decoder` has for this container.
    ///
    /// Different keyed containers from the same `Decoder` may return different keys here; it is possible to encode with multiple key types which are not convertible to one another. This should report all keys present which are convertible to the requested type.
    var allKeys: [Key] { get }

    /// Returns a Boolean value indicating whether the decoder contains a value associated with the given key.
    ///
    /// The value associated with `key` may be a null value as appropriate for the data format.
    ///
    /// - parameter key: The key to search for.
    /// - returns: Whether the `Decoder` has an entry for the given key.
    func contains(_ key: Key) -> Bool

    /// Decodes a null value for the given key.
    ///
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: Whether the encountered value was null.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    func decodeNil(forKey key: Key) throws -> Bool

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Int.Type, forKey key: Key) throws -> Int

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Float.Type, forKey key: Key) throws -> Float

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: Double.Type, forKey key: Key) throws -> Double

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode(_ type: String.Type, forKey key: Key) throws -> String

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func decode<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String?

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    func decodeIfPresent<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T?

    /// Returns the data stored for the given key as represented in a container keyed by the given key type.
    ///
    /// - parameter type: The key type to use for the container.
    /// - parameter key: The key that the nested container is associated with.
    /// - returns: A keyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not a keyed container.
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey>

    /// Returns the data stored for the given key as represented in an unkeyed container.
    ///
    /// - parameter key: The key that the nested container is associated with.
    /// - returns: An unkeyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not an unkeyed container.
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer

    /// Returns a `Decoder` instance for decoding `super` from the container associated with the default `super` key.
    ///
    /// Equivalent to calling `superDecoder(forKey:)` with `Key(stringValue: "super", intValue: 0)`.
    ///
    /// - returns: A new `Decoder` to pass to `super.init(from:)`.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the default `super` key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the default `super` key.
    func superDecoder() throws -> Decoder

    /// Returns a `Decoder` instance for decoding `super` from the container associated with the given key.
    ///
    /// - parameter key: The key to decode `super` for.
    /// - returns: A new `Decoder` to pass to `super.init(from:)`.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    func superDecoder(forKey key: Key) throws -> Decoder
}


// Default implementation of decodeIfPresent(_:forKey:) in terms of decode(_:forKey:) and decodeNil(forKey:)
public extension KeyedDecodingContainerProtocol {
    @_inlineable // FIXME(sil-serialize-all)
    
    /// 通过这里的实现，会发现，使用decodeIfPresent可以避免键不存在的情况和值为nil的情况。但是避免不了值类型错误的情况。
    public func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Bool.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Int.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Int8.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Int16.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Int32.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Int64.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(UInt.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(UInt8.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(UInt16.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(UInt32.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(UInt64.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Float.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(Double.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(String.self, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T? {
        guard try self.contains(key) && !self.decodeNil(forKey: key) else { return nil }
        return try self.decode(T.self, forKey: key)
    }
}






// An implementation of _KeyedDecodingContainerBase and _KeyedDecodingContainerBox are given at the bottom of this file.

/// A concrete container that provides a view into an decoder's storage, making
/// the encoded properties of an decodable type accessible by keys.
@_fixed_layout // FIXME(sil-serialize-all)
public struct KeyedDecodingContainer<K : CodingKey> : KeyedDecodingContainerProtocol {
    public typealias Key = K

    /// The container for the concrete decoder. The type is _*Base so that it's generic on the key type.
    @_versioned
    internal var _box: _KeyedDecodingContainerBase<Key>

    /// Creates a new instance with the given container.
    ///
    /// - parameter container: The container to hold.
    @_inlineable // FIXME(sil-serialize-all)
    public init<Container : KeyedDecodingContainerProtocol>(_ container: Container) where Container.Key == Key {
        _box = _KeyedDecodingContainerBox(container)
    }

    /// The path of coding keys taken to get to this point in decoding.
    @_inlineable // FIXME(sil-serialize-all)
    public var codingPath: [CodingKey] {
        return _box.codingPath
    }

    /// All the keys the decoder has for this container.
    ///
    /// Different keyed containers from the same decoder may return different keys here, because it is possible to encode with multiple key types which are not convertible to one another. This should report all keys present which are convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public var allKeys: [Key] {
        return _box.allKeys
    }

    /// Returns a Boolean value indicating whether the decoder contains a value associated with the given key.
    ///
    /// The value associated with the given key may be a null value as appropriate for the data format.
    ///
    /// - parameter key: The key to search for.
    /// - returns: Whether the `Decoder` has an entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func contains(_ key: Key) -> Bool {
        return _box.contains(key)
    }

    /// Decodes a null value for the given key.
    ///
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: Whether the encountered value was null.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeNil(forKey key: Key) throws -> Bool {
        return try _box.decodeNil(forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        return try _box.decode(Bool.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        return try _box.decode(Int.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        return try _box.decode(Int8.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        return try _box.decode(Int16.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        return try _box.decode(Int32.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        return try _box.decode(Int64.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        return try _box.decode(UInt.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        return try _box.decode(UInt8.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        return try _box.decode(UInt16.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        return try _box.decode(UInt32.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        return try _box.decode(UInt64.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        return try _box.decode(Float.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        return try _box.decode(Double.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode(_ type: String.Type, forKey key: Key) throws -> String {
        return try _box.decode(String.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func decode<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T {
        return try _box.decode(T.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool? {
        return try _box.decodeIfPresent(Bool.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int? {
        return try _box.decodeIfPresent(Int.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8? {
        return try _box.decodeIfPresent(Int8.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16? {
        return try _box.decodeIfPresent(Int16.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32? {
        return try _box.decodeIfPresent(Int32.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64? {
        return try _box.decodeIfPresent(Int64.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt? {
        return try _box.decodeIfPresent(UInt.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8? {
        return try _box.decodeIfPresent(UInt8.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16? {
        return try _box.decodeIfPresent(UInt16.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32? {
        return try _box.decodeIfPresent(UInt32.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64? {
        return try _box.decodeIfPresent(UInt64.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float? {
        return try _box.decodeIfPresent(Float.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double? {
        return try _box.decodeIfPresent(Double.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String? {
        return try _box.decodeIfPresent(String.self, forKey: key)
    }

    /// Decodes a value of the given type for the given key, if present.
    ///
    /// This method returns `nil` if the container does not have a value associated with `key`, or if the value is null. The difference between these states can be distinguished with a `contains(_:)` call.
    ///
    /// - parameter type: The type of value to decode.
    /// - parameter key: The key that the decoded value is associated with.
    /// - returns: A decoded value of the requested type, or `nil` if the `Decoder` does not have an entry associated with the given key, or if the value is a null value.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    @_inlineable // FIXME(sil-serialize-all)
    public func decodeIfPresent<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T? {
        return try _box.decodeIfPresent(T.self, forKey: key)
    }

    /// Returns the data stored for the given key as represented in a container keyed by the given key type.
    ///
    /// - parameter type: The key type to use for the container.
    /// - parameter key: The key that the nested container is associated with.
    /// - returns: A keyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not a keyed container.
    @_inlineable // FIXME(sil-serialize-all)
    public func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> {
        return try _box.nestedContainer(keyedBy: NestedKey.self, forKey: key)
    }

    /// Returns the data stored for the given key as represented in an unkeyed container.
    ///
    /// - parameter key: The key that the nested container is associated with.
    /// - returns: An unkeyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not an unkeyed container.
    @_inlineable // FIXME(sil-serialize-all)
    public func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        return try _box.nestedUnkeyedContainer(forKey: key)
    }

    /// Returns a `Decoder` instance for decoding `super` from the container associated with the default `super` key.
    ///
    /// Equivalent to calling `superDecoder(forKey:)` with `Key(stringValue: "super", intValue: 0)`.
    ///
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the default `super` key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the default `super` key.
    @_inlineable // FIXME(sil-serialize-all)
    public func superDecoder() throws -> Decoder {
        return try _box.superDecoder()
    }

    /// Returns a `Decoder` instance for decoding `super` from the container associated with the given key.
    ///
    /// - parameter key: The key to decode `super` for.
    /// - returns: A new `Decoder` to pass to `super.init(from:)`.
    /// - throws: `DecodingError.keyNotFound` if `self` does not have an entry for the given key.
    /// - throws: `DecodingError.valueNotFound` if `self` has a null entry for the given key.
    @_inlineable // FIXME(sil-serialize-all)
    public func superDecoder(forKey key: Key) throws -> Decoder {
        return try _box.superDecoder(forKey: key)
    }
}



@_fixed_layout
@_versioned
internal class _KeyedDecodingContainerBase<Key : CodingKey> {
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init(){}

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    deinit {}

    @_inlineable
    @_versioned
    internal var codingPath: [CodingKey] {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal var allKeys: [Key] {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func contains(_ key: Key) -> Bool {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeNil(forKey key: Key) throws -> Bool {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode(_ type: String.Type, forKey key: Key) throws -> String {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decode<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func decodeIfPresent<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T? {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func superDecoder() throws -> Decoder {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func superDecoder(forKey key: Key) throws -> Decoder {
        fatalError("_KeyedDecodingContainerBase cannot be used directly.")
    }
}

@_fixed_layout
@_versioned
internal final class _KeyedDecodingContainerBox<Concrete : KeyedDecodingContainerProtocol> : _KeyedDecodingContainerBase<Concrete.Key> {
    typealias Key = Concrete.Key

    @_versioned
    internal var concrete: Concrete

    @_inlineable
    @_versioned
    internal init(_ container: Concrete) {
        concrete = container
    }

    @_inlineable
    @_versioned
    override var codingPath: [CodingKey] {
        return concrete.codingPath
    }

    @_inlineable
    @_versioned
    override var allKeys: [Key] {
        return concrete.allKeys
    }

    @_inlineable
    @_versioned
    override internal func contains(_ key: Key) -> Bool {
        return concrete.contains(key)
    }

    @_inlineable
    @_versioned
    override internal func decodeNil(forKey key: Key) throws -> Bool {
        return try concrete.decodeNil(forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        return try concrete.decode(Bool.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        return try concrete.decode(Int.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        return try concrete.decode(Int8.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        return try concrete.decode(Int16.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        return try concrete.decode(Int32.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        return try concrete.decode(Int64.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        return try concrete.decode(UInt.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        return try concrete.decode(UInt8.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        return try concrete.decode(UInt16.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        return try concrete.decode(UInt32.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        return try concrete.decode(UInt64.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        return try concrete.decode(Float.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        return try concrete.decode(Double.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode(_ type: String.Type, forKey key: Key) throws -> String {
        return try concrete.decode(String.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decode<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T {
        return try concrete.decode(T.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Bool.Type, forKey key: Key) throws -> Bool? {
        return try concrete.decodeIfPresent(Bool.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Int.Type, forKey key: Key) throws -> Int? {
        return try concrete.decodeIfPresent(Int.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Int8.Type, forKey key: Key) throws -> Int8? {
        return try concrete.decodeIfPresent(Int8.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Int16.Type, forKey key: Key) throws -> Int16? {
        return try concrete.decodeIfPresent(Int16.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Int32.Type, forKey key: Key) throws -> Int32? {
        return try concrete.decodeIfPresent(Int32.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Int64.Type, forKey key: Key) throws -> Int64? {
        return try concrete.decodeIfPresent(Int64.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: UInt.Type, forKey key: Key) throws -> UInt? {
        return try concrete.decodeIfPresent(UInt.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: UInt8.Type, forKey key: Key) throws -> UInt8? {
        return try concrete.decodeIfPresent(UInt8.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: UInt16.Type, forKey key: Key) throws -> UInt16? {
        return try concrete.decodeIfPresent(UInt16.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: UInt32.Type, forKey key: Key) throws -> UInt32? {
        return try concrete.decodeIfPresent(UInt32.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: UInt64.Type, forKey key: Key) throws -> UInt64? {
        return try concrete.decodeIfPresent(UInt64.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Float.Type, forKey key: Key) throws -> Float? {
        return try concrete.decodeIfPresent(Float.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: Double.Type, forKey key: Key) throws -> Double? {
        return try concrete.decodeIfPresent(Double.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent(_ type: String.Type, forKey key: Key) throws -> String? {
        return try concrete.decodeIfPresent(String.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func decodeIfPresent<T : Decodable>(_ type: T.Type, forKey key: Key) throws -> T? {
        return try concrete.decodeIfPresent(T.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> {
        return try concrete.nestedContainer(keyedBy: NestedKey.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        return try concrete.nestedUnkeyedContainer(forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func superDecoder() throws -> Decoder {
        return try concrete.superDecoder()
    }

    @_inlineable
    @_versioned
    override internal func superDecoder(forKey key: Key) throws -> Decoder {
        return try concrete.superDecoder(forKey: key)
    }
}
