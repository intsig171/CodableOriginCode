import Foundation


/// A type that can decode itself from an external representation.
public protocol Decodable {
    /// Creates a new instance by decoding from the given decoder.
    ///
    /// This initializer throws an error if reading from the decoder fails, or
    /// if the data read is corrupted or otherwise invalid.
    ///
    /// - Parameter decoder: The decoder to read data from.
    init(from decoder: Decoder) throws
}


// FIXME: Remove when conditional conformance is available.
extension Decodable {
    // Since we cannot call these __init, we'll give the parameter a '__'.
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init(__from container: SingleValueDecodingContainer)   throws { self = try container.decode(Self.self) }
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init(__from container: inout UnkeyedDecodingContainer) throws { self = try container.decode(Self.self) }
    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init<Key>(__from container: KeyedDecodingContainer<Key>, forKey key: Key) throws { self = try container.decode(Self.self, forKey: key) }
}





extension Optional : Decodable /* where Wrapped : Decodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        // Initialize self here so we can get type(of: self).
        self = .none
        assertTypeIsDecodable(Wrapped.self, in: type(of: self))

        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            let metaType = (Wrapped.self as! Decodable.Type)
            
            // 解码之后的值
            let element = try metaType.init(__from: container)
            self = .some(element as! Wrapped)
        }
    }
}


extension Array : Decodable /* where Element : Decodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        
        // Initialize self here so we can get type(of: self).
        self.init()
        assertTypeIsDecodable(Element.self, in: type(of: self))

        let metaType = (Element.self as! Decodable.Type)
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            let element = try metaType.init(__from: &container)
            self.append(element as! Element)
        }
    }
}


extension Set : Decodable /* where Element : Decodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        // Initialize self here so we can get type(of: self).
        self.init()
        assertTypeIsDecodable(Element.self, in: type(of: self))

        let metaType = (Element.self as! Decodable.Type)
        var container = try decoder.unkeyedContainer()
        while !container.isAtEnd {
            let element = try metaType.init(__from: &container)
            self.insert(element as! Element)
        }
    }
}

extension Dictionary : Decodable /* where Key : Decodable, Value : Decodable */ {
    @_inlineable // FIXME(sil-serialize-all)
    
    
    /// ⚠️ 没完全看懂
    public init(from decoder: Decoder) throws {
        // Initialize self here so we can print type(of: self).
        // ⚠️ 没完全看懂， 此时的init的具体含义。
        self.init()
        assertTypeIsDecodable(Key.self, in: type(of: self))
        assertTypeIsDecodable(Value.self, in: type(of: self))

        
        if Key.self == String.self {
            // The keys are Strings, so we should be able to expect a keyed container.
            let container = try decoder.container(keyedBy: _DictionaryCodingKey.self)
            let valueMetaType = Value.self as! Decodable.Type
            for key in container.allKeys {
                let value = try valueMetaType.init(__from: container, forKey: key)
                self[key.stringValue as! Key] = (value as! Value)
            }
        } else if Key.self == Int.self {
            // The keys are Ints, so we should be able to expect a keyed container.
            let valueMetaType = Value.self as! Decodable.Type
            let container = try decoder.container(keyedBy: _DictionaryCodingKey.self)
            for key in container.allKeys {
                
                // ⚠️ 没看懂，container是一个有键的解码容器，此时不应该key
                guard key.intValue != nil else {
                    // We provide stringValues for Int keys; if an encoder chooses not to use the actual intValues, we've encoded string keys.
                    // So on init, _DictionaryCodingKey tries to parse string keys as Ints. If that succeeds, then we would have had an intValue here.
                    // We don't, so this isn't a valid Int key.
                    var codingPath = decoder.codingPath
                    codingPath.append(key)
                    throw DecodingError.typeMismatch(Int.self,
                                                     DecodingError.Context(codingPath: codingPath,
                                                                           debugDescription: "Expected Int key but found String key instead."))
                }

                let value = try valueMetaType.init(__from: container, forKey: key)
                self[key.intValue! as! Key] = (value as! Value)
            }
        } else {
            // We should have encoded as an array of alternating key-value pairs.
            var container = try decoder.unkeyedContainer()

            // We're expecting to get pairs. If the container has a known count, it had better be even; no point in doing work if not.
            if let count = container.count {
                guard count % 2 == 0 else {
                    throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath,
                                                                            debugDescription: "Expected collection of key-value pairs; encountered odd-length array instead."))
                }
            }

            let keyMetaType = (Key.self as! Decodable.Type)
            let valueMetaType = (Value.self as! Decodable.Type)
            while !container.isAtEnd {
                let key = try keyMetaType.init(__from: &container)

                guard !container.isAtEnd else {
                    throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath,
                                                                                 debugDescription: "Unkeyed container reached end before value in key-value pair."))
                }

                let value = try valueMetaType.init(__from: &container)
                self[key as! Key] = (value as! Value)
            }
        }
    }
}
