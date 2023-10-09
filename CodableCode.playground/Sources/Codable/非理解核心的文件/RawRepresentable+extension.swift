import Foundation

public extension RawRepresentable where RawValue == Bool, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Bool, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Int, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Int, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Int8, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Int8, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Int16, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Int16, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Int32, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Int32, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Int64, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Int64, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == UInt, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == UInt, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == UInt8, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == UInt8, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == UInt16, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == UInt16, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == UInt32, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == UInt32, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == UInt64, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == UInt64, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Float, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Float, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == Double, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == Double, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}

public extension RawRepresentable where RawValue == String, Self : Encodable {
    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.rawValue)
    }
}

public extension RawRepresentable where RawValue == String, Self : Decodable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
      let decoded = try decoder.singleValueContainer().decode(RawValue.self)
      guard let value = Self(rawValue: decoded) else {
          throw DecodingError.dataCorrupted(DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Cannot initialize \(Self.self) from invalid \(RawValue.self) value \(decoded)"))
      }

      self = value
    }
}
