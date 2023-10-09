import Foundation

/// A type that provides a view into an encoder's storage and is used to hold
/// the encoded properties of an encodable type in a keyed manner.
///
/// Encoders should provide types conforming to
/// `KeyedEncodingContainerProtocol` for their format.
public protocol KeyedEncodingContainerProtocol {
    associatedtype Key : CodingKey

    /// The path of coding keys taken to get to this point in encoding.
    var codingPath: [CodingKey] { get }

    /// Encodes a null value for the given key.
    ///
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if a null value is invalid in the current context for this format.
    mutating func encodeNil(forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Bool, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int8, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int16, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int32, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Int64, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt8, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt16, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt32, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: UInt64, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Float, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: Double, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode(_ value: String, forKey key: Key) throws

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encode<T : Encodable>(_ value: T, forKey key: Key) throws

    /// Encodes a reference to the given object only if it is encoded unconditionally elsewhere in the payload (previously, or in the future).
    ///
    /// For encoders which don't support this feature, the default implementation encodes the given object unconditionally.
    ///
    /// - parameter object: The object to encode.
    /// - parameter key: The key to associate the object with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeConditional<T : AnyObject & Encodable>(_ object: T, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Bool?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Int?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Int8?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Int16?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Int32?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Int64?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: UInt?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Float?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: Double?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent(_ value: String?, forKey key: Key) throws

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    mutating func encodeIfPresent<T : Encodable>(_ value: T?, forKey key: Key) throws

    /// Stores a keyed encoding container for the given key and returns it.
    ///
    /// - parameter keyType: The key type to use for the container.
    /// - parameter key: The key to encode the container for.
    /// - returns: A new keyed encoding container.
    mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey>

    /// Stores an unkeyed encoding container for the given key and returns it.
    ///
    /// - parameter key: The key to encode the container for.
    /// - returns: A new unkeyed encoding container.
    mutating func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer

    /// Stores a new nested container for the default `super` key and returns A new encoder instance for encoding `super` into that container.
    ///
    /// Equivalent to calling `superEncoder(forKey:)` with `Key(stringValue: "super", intValue: 0)`.
    ///
    /// - returns: A new encoder to pass to `super.encode(to:)`.
    mutating func superEncoder() -> Encoder

    /// Stores a new nested container for the given key and returns A new encoder instance for encoding `super` into that container.
    ///
    /// - parameter key: The key to encode `super` for.
    /// - returns: A new encoder to pass to `super.encode(to:)`.
    mutating func superEncoder(forKey key: Key) -> Encoder
}




// Default implementation of encodeIfPresent(_:forKey:) in terms of encode(_:forKey:)
public extension KeyedEncodingContainerProtocol {
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Bool?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int8?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int16?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int32?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int64?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Float?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Double?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: String?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent<T : Encodable>(_ value: T?, forKey key: Key) throws {
        guard let value = value else { return }
        try encode(value, forKey: key)
    }
}


// Default implementation of encodeConditional(_:forKey:) in terms of encode(_:forKey:)
public extension KeyedEncodingContainerProtocol {
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeConditional<T : AnyObject & Encodable>(_ object: T, forKey key: Key) throws {
        try encode(object, forKey: key)
    }
}




// An implementation of _KeyedEncodingContainerBase and _KeyedEncodingContainerBox are given at the bottom of this file.

/// A concrete container that provides a view into an encoder's storage, making
/// the encoded properties of an encodable type accessible by keys.
@_fixed_layout // FIXME(sil-serialize-all)
public struct KeyedEncodingContainer<K : CodingKey> : KeyedEncodingContainerProtocol {
    public typealias Key = K

    /// The container for the concrete encoder. The type is _*Base so that it's generic on the key type.
    @_versioned
    internal var _box: _KeyedEncodingContainerBase<Key>

    /// Creates a new instance with the given container.
    ///
    /// - parameter container: The container to hold.
    @_inlineable // FIXME(sil-serialize-all)
    public init<Container : KeyedEncodingContainerProtocol>(_ container: Container) where Container.Key == Key {
        _box = _KeyedEncodingContainerBox(container)
    }

    /// The path of coding keys taken to get to this point in encoding.
    @_inlineable // FIXME(sil-serialize-all)
    public var codingPath: [CodingKey] {
        return _box.codingPath
    }

    /// Encodes a null value for the given key.
    ///
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if a null value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeNil(forKey key: Key) throws {
        try _box.encodeNil(forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Bool, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Int, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Int8, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Int16, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Int32, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Int64, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: UInt, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: UInt8, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: UInt16, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: UInt32, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: UInt64, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Float, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: Double, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode(_ value: String, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes the given value for the given key.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encode<T : Encodable>(_ value: T, forKey key: Key) throws {
        try _box.encode(value, forKey: key)
    }

    /// Encodes a reference to the given object only if it is encoded unconditionally elsewhere in the payload (previously, or in the future).
    ///
    /// For encoders which don't support this feature, the default implementation encodes the given object unconditionally.
    ///
    /// - parameter object: The object to encode.
    /// - parameter key: The key to associate the object with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeConditional<T : AnyObject & Encodable>(_ object: T, forKey key: Key) throws {
        try _box.encodeConditional(object, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Bool?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int8?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int16?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int32?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Int64?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Float?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: Double?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent(_ value: String?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Encodes the given value for the given key if it is not `nil`.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in the current context for this format.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func encodeIfPresent<T : Encodable>(_ value: T?, forKey key: Key) throws {
        try _box.encodeIfPresent(value, forKey: key)
    }

    /// Stores a keyed encoding container for the given key and returns it.
    ///
    /// - parameter keyType: The key type to use for the container.
    /// - parameter key: The key to encode the container for.
    /// - returns: A new keyed encoding container.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> {
        return _box.nestedContainer(keyedBy: NestedKey.self, forKey: key)
    }

    /// Stores an unkeyed encoding container for the given key and returns it.
    ///
    /// - parameter key: The key to encode the container for.
    /// - returns: A new unkeyed encoding container.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        return _box.nestedUnkeyedContainer(forKey: key)
    }

    /// Stores a new nested container for the default `super` key and returns A new encoder instance for encoding `super` into that container.
    ///
    /// Equivalent to calling `superEncoder(forKey:)` with `Key(stringValue: "super", intValue: 0)`.
    ///
    /// - returns: A new encoder to pass to `super.encode(to:)`.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func superEncoder() -> Encoder {
        return _box.superEncoder()
    }

    /// Stores a new nested container for the given key and returns A new encoder instance for encoding `super` into that container.
    ///
    /// - parameter key: The key to encode `super` for.
    /// - returns: A new encoder to pass to `super.encode(to:)`.
    @_inlineable // FIXME(sil-serialize-all)
    public mutating func superEncoder(forKey key: Key) -> Encoder {
        return _box.superEncoder(forKey: key)
    }
}



//===----------------------------------------------------------------------===//
// Keyed Encoding Container Implementations
//===----------------------------------------------------------------------===//

@_fixed_layout
@_versioned
internal class _KeyedEncodingContainerBase<Key : CodingKey> {
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init(){}

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    deinit {}

    // These must all be given a concrete implementation in _*Box.
    @_inlineable
    @_versioned
    internal var codingPath: [CodingKey] {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeNil(forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Bool, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Int, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Int8, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Int16, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Int32, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Int64, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: UInt, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: UInt8, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: UInt16, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: UInt32, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: UInt64, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Float, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: Double, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode(_ value: String, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encode<T : Encodable>(_ value: T, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeConditional<T : AnyObject & Encodable>(_ object: T, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Bool?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Int?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Int8?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Int16?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Int32?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Int64?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: UInt?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Float?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: Double?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent(_ value: String?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func encodeIfPresent<T : Encodable>(_ value: T?, forKey key: Key) throws {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func superEncoder() -> Encoder {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }

    @_inlineable
    @_versioned
    internal func superEncoder(forKey key: Key) -> Encoder {
        fatalError("_KeyedEncodingContainerBase cannot be used directly.")
    }
}


@_fixed_layout
@_versioned
internal final class _KeyedEncodingContainerBox<Concrete : KeyedEncodingContainerProtocol> : _KeyedEncodingContainerBase<Concrete.Key> {
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
    override internal var codingPath: [CodingKey] {
        return concrete.codingPath
    }

    @_inlineable
    @_versioned
    override internal func encodeNil(forKey key: Key) throws {
        try concrete.encodeNil(forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Bool, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Int, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Int8, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Int16, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Int32, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Int64, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: UInt, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: UInt8, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: UInt16, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: UInt32, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: UInt64, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Float, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: Double, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode(_ value: String, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encode<T : Encodable>(_ value: T, forKey key: Key) throws {
        try concrete.encode(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeConditional<T : AnyObject & Encodable>(_ object: T, forKey key: Key) throws {
        try concrete.encodeConditional(object, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Bool?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Int?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Int8?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Int16?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Int32?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Int64?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: UInt?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: UInt8?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: UInt16?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: UInt32?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: UInt64?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Float?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: Double?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent(_ value: String?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func encodeIfPresent<T : Encodable>(_ value: T?, forKey key: Key) throws {
        try concrete.encodeIfPresent(value, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> {
        return concrete.nestedContainer(keyedBy: NestedKey.self, forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        return concrete.nestedUnkeyedContainer(forKey: key)
    }

    @_inlineable
    @_versioned
    override internal func superEncoder() -> Encoder {
        return concrete.superEncoder()
    }

    @_inlineable
    @_versioned
    override internal func superEncoder(forKey key: Key) -> Encoder {
        return concrete.superEncoder(forKey: key)
    }
}
