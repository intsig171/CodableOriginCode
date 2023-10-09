import Foundation

/// A type that can encode itself to an external representation.
public protocol Encodable {
    /// Encodes this value into the given encoder.
    ///
    /// If the value fails to encode anything, `encoder` will encode an empty
    /// keyed container in its place.
    ///
    /// This function throws an error if any values are invalid for the given
    /// encoder's format.
    ///
    /// - Parameter encoder: The encoder to write data to.
    func encode(to encoder: Encoder) throws
}


// FIXME: Remove when conditional conformance is available.
extension Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal func __encode(to container: inout SingleValueEncodingContainer) throws { try container.encode(self) }
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal func __encode(to container: inout UnkeyedEncodingContainer)     throws { try container.encode(self) }
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal func __encode<Key>(to container: inout KeyedEncodingContainer<Key>, forKey key: Key) throws { try container.encode(self, forKey: key) }
}


// FIXME: Uncomment when conditional conformance is available.
extension Optional : Encodable /* where Wrapped : Encodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        assertTypeIsEncodable(Wrapped.self, in: type(of: self))

        var container = encoder.singleValueContainer()
        switch self {
        case .none: try container.encodeNil()
        case .some(let wrapped): try (wrapped as! Encodable).__encode(to: &container)
        }
    }
}

// FIXME: Uncomment when conditional conformance is available.
extension Array : Encodable /* where Element : Encodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        assertTypeIsEncodable(Element.self, in: type(of: self))

        var container = encoder.unkeyedContainer()
        for element in self {
            try (element as! Encodable).__encode(to: &container)
        }
    }
}

extension Set : Encodable /* where Element : Encodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        assertTypeIsEncodable(Element.self, in: type(of: self))

        var container = encoder.unkeyedContainer()
        for element in self {
            try (element as! Encodable).__encode(to: &container)
        }
    }
}


extension Dictionary : Encodable /* where Key : Encodable, Value : Encodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        assertTypeIsEncodable(Key.self, in: type(of: self))
        assertTypeIsEncodable(Value.self, in: type(of: self))

        if Key.self == String.self {
            // Since the keys are already Strings, we can use them as keys directly.
            var container = encoder.container(keyedBy: _DictionaryCodingKey.self)
            for (key, value) in self {
                let codingKey = _DictionaryCodingKey(stringValue: key as! String)!
                try (value as! Encodable).__encode(to: &container, forKey: codingKey)
            }
        } else if Key.self == Int.self {
            // Since the keys are already Ints, we can use them as keys directly.
            var container = encoder.container(keyedBy: _DictionaryCodingKey.self)
            for (key, value) in self {
                let codingKey = _DictionaryCodingKey(intValue: key as! Int)!
                try (value as! Encodable).__encode(to: &container, forKey: codingKey)
            }
        } else {
            // Keys are Encodable but not Strings or Ints, so we cannot arbitrarily convert to keys.
            // We can encode as an array of alternating key-value pairs, though.
            var container = encoder.unkeyedContainer()
            for (key, value) in self {
                try (key as! Encodable).__encode(to: &container)
                try (value as! Encodable).__encode(to: &container)
            }
        }
    }
}
