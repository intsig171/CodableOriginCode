import Foundation


extension Bool : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Bool.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Int : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Int.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Int8 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Int8.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Int16 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Int16.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Int32 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Int32.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Int64 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Int64.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension UInt : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(UInt.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension UInt8 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(UInt8.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension UInt16 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(UInt16.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension UInt32 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(UInt32.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension UInt64 : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(UInt64.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Float : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Float.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension Double : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(Double.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}

extension String : Codable {
    @_inlineable // FIXME(sil-serialize-all)
    public init(from decoder: Decoder) throws {
        self = try decoder.singleValueContainer().decode(String.self)
    }

    @_inlineable // FIXME(sil-serialize-all)
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self)
    }
}
