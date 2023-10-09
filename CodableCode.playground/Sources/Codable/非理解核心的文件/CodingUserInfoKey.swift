import Foundation

/// A user-defined key for providing context during encoding and decoding.
@_fixed_layout // FIXME(sil-serialize-all)
public struct CodingUserInfoKey : RawRepresentable, Equatable, Hashable {
    public typealias RawValue = String

    /// The key's string value.
    public let rawValue: String

    /// Creates a new instance with the given raw value.
    ///
    /// - parameter rawValue: The value of the key.
    @_inlineable // FIXME(sil-serialize-all)
    public init?(rawValue: String) {
        self.rawValue = rawValue
    }

    /// Returns a Boolean value indicating whether the given keys are equal.
    ///
    /// - parameter lhs: The key to compare against.
    /// - parameter rhs: The key to compare with.
    @_inlineable // FIXME(sil-serialize-all)
    public static func ==(_ lhs: CodingUserInfoKey, _ rhs: CodingUserInfoKey) -> Bool {
        return lhs.rawValue == rhs.rawValue
    }

    /// The key's hash value.
    @_inlineable // FIXME(sil-serialize-all)
    public var hashValue: Int {
        return self.rawValue.hashValue
    }
}
