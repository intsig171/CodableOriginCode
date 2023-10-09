import Foundation


fileprivate struct _JSONKeyedEncodingContainer<K : CodingKey> : KeyedEncodingContainerProtocol {
    typealias Key = K

    // MARK: Properties

    /// A reference to the encoder we're writing to.
    private let encoder: _JSONEncoder

    /// A reference to the container we're writing to.
    private let container: NSMutableDictionary

    /// The path of coding keys taken to get to this point in encoding.
    private(set) public var codingPath: [CodingKey]

    // MARK: - Initialization

    /// Initializes `self` with the given references.
    fileprivate init(referencing encoder: _JSONEncoder, codingPath: [CodingKey], wrapping container: NSMutableDictionary) {
        self.encoder = encoder
        self.codingPath = codingPath
        self.container = container
    }

    // MARK: - KeyedEncodingContainerProtocol Methods

    public mutating func encodeNil(forKey key: Key)               throws { self.container[key.stringValue] = NSNull() }
    public mutating func encode(_ value: Bool, forKey key: Key)   throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: Int, forKey key: Key)    throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: Int8, forKey key: Key)   throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: Int16, forKey key: Key)  throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: Int32, forKey key: Key)  throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: Int64, forKey key: Key)  throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: UInt, forKey key: Key)   throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: UInt8, forKey key: Key)  throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: UInt16, forKey key: Key) throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: UInt32, forKey key: Key) throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: UInt64, forKey key: Key) throws { self.container[key.stringValue] = self.encoder.box(value) }
    public mutating func encode(_ value: String, forKey key: Key) throws { self.container[key.stringValue] = self.encoder.box(value) }

    public mutating func encode(_ value: Float, forKey key: Key)  throws {
        // Since the float may be invalid and throw, the coding path needs to contain this key.
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[key.stringValue] = try self.encoder.box(value)
    }

    public mutating func encode(_ value: Double, forKey key: Key) throws {
        // Since the double may be invalid and throw, the coding path needs to contain this key.
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[key.stringValue] = try self.encoder.box(value)
    }

    public mutating func encode<T : Encodable>(_ value: T, forKey key: Key) throws {
        self.encoder.codingPath.append(key)
        defer { self.encoder.codingPath.removeLast() }
        self.container[key.stringValue] = try self.encoder.box(value)
    }

    public mutating func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> {
        let dictionary = NSMutableDictionary()
        self.container[key.stringValue] = dictionary

        self.codingPath.append(key)
        defer { self.codingPath.removeLast() }

        let container = _JSONKeyedEncodingContainer<NestedKey>(referencing: self.encoder, codingPath: self.codingPath, wrapping: dictionary)
        return KeyedEncodingContainer(container)
    }

    public mutating func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        let array = NSMutableArray()
        self.container[key.stringValue] = array

        self.codingPath.append(key)
        defer { self.codingPath.removeLast() }
        return _JSONUnkeyedEncodingContainer(referencing: self.encoder, codingPath: self.codingPath, wrapping: array)
    }

    public mutating func superEncoder() -> Encoder {
        return _JSONReferencingEncoder(referencing: self.encoder, at: _JSONKey.super, wrapping: self.container)
    }

    public mutating func superEncoder(forKey key: Key) -> Encoder {
        return _JSONReferencingEncoder(referencing: self.encoder, at: key, wrapping: self.container)
    }
}
