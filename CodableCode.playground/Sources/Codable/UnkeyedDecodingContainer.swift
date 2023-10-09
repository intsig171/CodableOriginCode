import Foundation

/// A type that provides a view into a decoder's storage and is used to hold
/// the encoded properties of a decodable type sequentially, without keys.
///
/// Decoders should provide types conforming to `UnkeyedDecodingContainer` for
/// their format.
public protocol UnkeyedDecodingContainer {
    /// The path of coding keys taken to get to this point in decoding.
    var codingPath: [CodingKey] { get }

    /// The number of elements contained within this container.
    ///
    /// If the number of elements is unknown, the value is `nil`.
    var count: Int? { get }

    /// A Boolean value indicating whether there are no more elements left to be decoded in the container.
    var isAtEnd: Bool { get }

    /// The current decoding index of the container (i.e. the index of the next element to be decoded.)
    /// Incremented after every successful decode call.
    var currentIndex: Int { get }

    /// Decodes a null value.
    ///
    /// If the value is not null, does not increment currentIndex.
    ///
    /// - returns: Whether the encountered value was null.
    /// - throws: `DecodingError.valueNotFound` if there are no more values to decode.
    mutating func decodeNil() throws -> Bool

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Bool.Type) throws -> Bool

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Int.Type) throws -> Int

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Int8.Type) throws -> Int8

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Int16.Type) throws -> Int16

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Int32.Type) throws -> Int32

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Int64.Type) throws -> Int64

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: UInt.Type) throws -> UInt

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: UInt8.Type) throws -> UInt8

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: UInt16.Type) throws -> UInt16

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: UInt32.Type) throws -> UInt32

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: UInt64.Type) throws -> UInt64

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Float.Type) throws -> Float

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: Double.Type) throws -> Double

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode(_ type: String.Type) throws -> String

    /// Decodes a value of the given type.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A value of the requested type, if present for the given key and convertible to the requested type.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func decode<T : Decodable>(_ type: T.Type) throws -> T

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Bool.Type) throws -> Bool?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int.Type) throws -> Int?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int8.Type) throws -> Int8?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int16.Type) throws -> Int16?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int32.Type) throws -> Int32?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Int64.Type) throws -> Int64?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt.Type) throws -> UInt?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt8.Type) throws -> UInt8?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt16.Type) throws -> UInt16?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt32.Type) throws -> UInt32?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: UInt64.Type) throws -> UInt64?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Float.Type) throws -> Float?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: Double.Type) throws -> Double?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent(_ type: String.Type) throws -> String?

    /// Decodes a value of the given type, if present.
    ///
    /// This method returns `nil` if the container has no elements left to decode, or if the value is null. The difference between these states can be distinguished by checking `isAtEnd`.
    ///
    /// - parameter type: The type of value to decode.
    /// - returns: A decoded value of the requested type, or `nil` if the value is a null value, or if there are no more elements to decode.
    /// - throws: `DecodingError.typeMismatch` if the encountered encoded value is not convertible to the requested type.
    mutating func decodeIfPresent<T : Decodable>(_ type: T.Type) throws -> T?

    /// Decodes a nested container keyed by the given type.
    ///
    /// - parameter type: The key type to use for the container.
    /// - returns: A keyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not a keyed container.
    mutating func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey>

    /// Decodes an unkeyed nested container.
    ///
    /// - returns: An unkeyed decoding container view into `self`.
    /// - throws: `DecodingError.typeMismatch` if the encountered stored value is not an unkeyed container.
    mutating func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer

    /// Decodes a nested container and returns a `Decoder` instance for decoding `super` from that container.
    ///
    /// - returns: A new `Decoder` to pass to `super.init(from:)`.
    /// - throws: `DecodingError.valueNotFound` if the encountered encoded value is null, or of there are no more values to decode.
    mutating func superDecoder() throws -> Decoder
}


// Default implementation of decodeIfPresent(_:) in terms of decode(_:) and decodeNil()
public extension UnkeyedDecodingContainer {
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Bool.Type) throws -> Bool? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Bool.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Int.Type) throws -> Int? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Int.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Int8.Type) throws -> Int8? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Int8.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Int16.Type) throws -> Int16? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Int16.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Int32.Type) throws -> Int32? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Int32.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Int64.Type) throws -> Int64? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Int64.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: UInt.Type) throws -> UInt? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(UInt.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: UInt8.Type) throws -> UInt8? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(UInt8.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: UInt16.Type) throws -> UInt16? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(UInt16.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: UInt32.Type) throws -> UInt32? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(UInt32.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: UInt64.Type) throws -> UInt64? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(UInt64.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Float.Type) throws -> Float? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Float.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: Double.Type) throws -> Double? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(Double.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent(_ type: String.Type) throws -> String? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(String.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func decodeIfPresent<T : Decodable>(_ type: T.Type) throws -> T? {
        guard try !self.isAtEnd && !self.decodeNil() else { return nil }
        return try self.decode(T.self)
    }
}
