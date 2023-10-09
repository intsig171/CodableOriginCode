import Foundation

/// A type that provides a view into an encoder's storage and is used to hold
/// the encoded properties of an encodable type sequentially, without keys.
///
/// Encoders should provide types conforming to `UnkeyedEncodingContainer` for
/// their format.
public protocol UnkeyedEncodingContainer {
    /// The path of coding keys taken to get to this point in encoding.
    var codingPath: [CodingKey] { get }

    /// The number of elements encoded into the container.
    var count: Int { get }

    /// Encodes a null value.
    ///
    /// - throws: `EncodingError.invalidValue` if a null value is invalid in the current context for this format.
    mutating func encodeNil() throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Bool) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int8) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int16) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int32) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int64) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt8) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt16) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt32) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt64) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Float) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Double) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: String) throws

    /// Encodes the given value.
    ///
    /// - parameter value: The value to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode<T : Encodable>(_ value: T) throws

    /// Encodes a reference to the given object only if it is encoded unconditionally elsewhere in the payload (previously, or in the future).
    ///
    /// For encoders which don't support this feature, the default implementation encodes the given object unconditionally.
    ///
    /// For formats which don't support this feature, the default implementation encodes the given object unconditionally.
    ///
    /// - parameter object: The object to encode.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeConditional<T : AnyObject & Encodable>(_ object: T) throws

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Bool

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int8

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int16

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int32

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int64

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt8

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt16

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt32

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt64

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Float

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Double

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == String

    /// Encodes the elements of the given sequence.
    ///
    /// - parameter sequence: The sequences whose contents to encode.
    /// - throws: An error if any of the contained values throws an error.
    mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element : Encodable

    /// Encodes a nested container keyed by the given type and returns it.
    ///
    /// - parameter keyType: The key type to use for the container.
    /// - returns: A new keyed encoding container.
    mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type) -> KeyedEncodingContainer<NestedKey>

    /// Encodes an unkeyed encoding container and returns it.
    ///
    /// - returns: A new unkeyed encoding container.
    mutating func nestedUnkeyedContainer() -> UnkeyedEncodingContainer

    /// Encodes a nested container and returns an `Encoder` instance for encoding `super` into that container.
    ///
    /// - returns: A new encoder to pass to `super.encode(to:)`.
    mutating func superEncoder() -> Encoder
}



// Default implementation of encodeConditional(_:) in terms of encode(_:), and encode(contentsOf:) in terms of encode(_:) loop.
public extension UnkeyedEncodingContainer {
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeConditional<T : AnyObject & Encodable>(_ object: T) throws {
        try self.encode(object)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Bool {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int8 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int16 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int32 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Int64 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt8 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt16 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt32 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == UInt64 {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Float {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == Double {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element == String {
        for element in sequence {
            try self.encode(element)
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Sequence>(contentsOf sequence: T) throws where T.Iterator.Element : Encodable {
        for element in sequence {
            try self.encode(element)
        }
    }
}
