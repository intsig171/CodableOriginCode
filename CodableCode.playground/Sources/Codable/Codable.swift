//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Codable
//===----------------------------------------------------------------------===//



/// A type that can convert itself into and out of an external representation.
public typealias Codable = Encodable & Decodable




//===----------------------------------------------------------------------===//
// Errors
//===----------------------------------------------------------------------===//


// The following extensions allow for easier error construction.

@_versioned // FIXME(sil-serialize-all)
@_fixed_layout // FIXME(sil-serialize-all)
internal struct _GenericIndexKey : CodingKey {
    @_versioned // FIXME(sil-serialize-all)
    internal var stringValue: String
    @_versioned // FIXME(sil-serialize-all)
    internal var intValue: Int?

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init?(stringValue: String) {
        return nil
    }

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init?(intValue: Int) {
        self.stringValue = "Index \(intValue)"
        self.intValue = intValue
    }
}




//===----------------------------------------------------------------------===//
// Primitive and RawRepresentable Extensions
//===----------------------------------------------------------------------===//



//===----------------------------------------------------------------------===//
// Optional/Collection Type Conformances
//===----------------------------------------------------------------------===//

@_inlineable // FIXME(sil-serialize-all)
@_versioned // FIXME(sil-serialize-all)
internal func assertTypeIsEncodable<T>(_ type: T.Type, in wrappingType: Any.Type) {
    
    // 不是Encodable类型忽略
    guard T.self is Encodable.Type else {
        
        // // 表示Encodable协议本身没有遵循自己，因此必须使用具体类型来进行编码或解码。
        if T.self == Encodable.self || T.self == Codable.self {
            preconditionFailure("\(wrappingType) does not conform to Encodable because Encodable does not conform to itself. You must use a concrete type to encode or decode.")
        } else {
            preconditionFailure("\(wrappingType) does not conform to Encodable because \(T.self) does not conform to Encodable.")
        }
    }
}

@_inlineable // FIXME(sil-serialize-all)
@_versioned // FIXME(sil-serialize-all)
internal func assertTypeIsDecodable<T>(_ type: T.Type, in wrappingType: Any.Type) {
    guard T.self is Decodable.Type else {
        if T.self == Decodable.self || T.self == Codable.self {
            preconditionFailure("\(wrappingType) does not conform to Decodable because Decodable does not conform to itself. You must use a concrete type to encode or decode.")
        } else {
            preconditionFailure("\(wrappingType) does not conform to Decodable because \(T.self) does not conform to Decodable.")
        }
    }
}



/// A wrapper for dictionary keys which are Strings or Ints.
@_versioned // FIXME(sil-serialize-all)
@_fixed_layout // FIXME(sil-serialize-all)
internal struct _DictionaryCodingKey : CodingKey {
    @_versioned // FIXME(sil-serialize-all)
    internal let stringValue: String
    @_versioned // FIXME(sil-serialize-all)
    internal let intValue: Int?

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init?(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = Int(stringValue)
    }

    @_inlineable // FIXME(sil-serialize-all)
    @_versioned // FIXME(sil-serialize-all)
    internal init?(intValue: Int) {
        self.stringValue = "\(intValue)"
        self.intValue = intValue
    }
}
