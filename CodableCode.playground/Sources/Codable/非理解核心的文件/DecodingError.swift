import Foundation


/// An error that occurs during the decoding of a value.
public enum DecodingError : Error {
    /// The context in which the error occurred.
    @_fixed_layout // FIXME(sil-serialize-all)
    public struct Context {
        /// The path of coding keys taken to get to the point of the failing decode call.
        public let codingPath: [CodingKey]

        /// A description of what went wrong, for debugging purposes.
        public let debugDescription: String

        /// The underlying error which caused this error, if any.
        public let underlyingError: Error?

        /// Creates a new context with the given path of coding keys and a description of what went wrong.
        ///
        /// - parameter codingPath: The path of coding keys taken to get to the point of the failing decode call.
        /// - parameter debugDescription: A description of what went wrong, for debugging purposes.
        /// - parameter underlyingError: The underlying error which caused this error, if any.
        @_inlineable // FIXME(sil-serialize-all)
        public init(codingPath: [CodingKey], debugDescription: String, underlyingError: Error? = nil) {
            self.codingPath = codingPath
            self.debugDescription = debugDescription
            self.underlyingError = underlyingError
        }
    }

    /// An indication that a value of the given type could not be decoded because it did not match the type of what was found in the encoded payload.
    ///
    /// As associated values, this case contains the attempted type and context for debugging.
    case typeMismatch(Any.Type, Context)

    /// An indication that a non-optional value of the given type was expected, but a null value was found.
    ///
    /// As associated values, this case contains the attempted type and context for debugging.
    case valueNotFound(Any.Type, Context)

    ///  An indication that a keyed decoding container was asked for an entry for the given key, but did not contain one.
    ///
    /// As associated values, this case contains the attempted key and context for debugging.
    case keyNotFound(CodingKey, Context)

    /// An indication that the data is corrupted or otherwise invalid.
    ///
    /// As an associated value, this case contains the context for debugging.
    case dataCorrupted(Context)

    // MARK: - NSError Bridging

    // CustomNSError bridging applies only when the CustomNSError conformance is applied in the same module as the declared error type.
    // Since we cannot access CustomNSError (which is defined in Foundation) from here, we can use the "hidden" entry points.

    @_inlineable // FIXME(sil-serialize-all)
    public var _domain: String {
        return "NSCocoaErrorDomain"
    }

    @_inlineable // FIXME(sil-serialize-all)
    public var _code: Int {
        switch self {
        case .keyNotFound(_, _):   fallthrough
        case .valueNotFound(_, _): return 4865
        case .typeMismatch(_, _):  fallthrough
        case .dataCorrupted(_):    return 4864
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public var _userInfo: AnyObject? {
        // The error dictionary must be returned as an AnyObject. We can do this only on platforms with bridging, unfortunately.
        #if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
            let context: Context
            switch self {
            case .keyNotFound(_,   let c): context = c
            case .valueNotFound(_, let c): context = c
            case .typeMismatch(_,  let c): context = c
            case .dataCorrupted(   let c): context = c
            }

            var userInfo: [String : Any] = [
                "NSCodingPath": context.codingPath,
                "NSDebugDescription": context.debugDescription
            ]

            if let underlyingError = context.underlyingError {
                userInfo["NSUnderlyingError"] = underlyingError
            }

            return userInfo as AnyObject
        #else
            return nil
        #endif
    }
}


public extension DecodingError {
    /// Returns a new `.dataCorrupted` error using a constructed coding path and the given debug description.
    ///
    /// The coding path for the returned error is constructed by appending the given key to the given container's coding path.
    ///
    /// - param key: The key which caused the failure.
    /// - param container: The container in which the corrupted data was accessed.
    /// - param debugDescription: A description of the error to aid in debugging.
    /// - Returns: A new `.dataCorrupted` error with the given information.
    @_inlineable // FIXME(sil-serialize-all)
    public static func dataCorruptedError<C : KeyedDecodingContainerProtocol>(forKey key: C.Key, in container: C, debugDescription: String) -> DecodingError {
        let context = DecodingError.Context(codingPath: container.codingPath + [key],
                                            debugDescription: debugDescription)
        return .dataCorrupted(context)
    }

    /// Returns a new `.dataCorrupted` error using a constructed coding path and the given debug description.
    ///
    /// The coding path for the returned error is constructed by appending the given container's current index to its coding path.
    ///
    /// - param container: The container in which the corrupted data was accessed.
    /// - param debugDescription: A description of the error to aid in debugging.
    /// - Returns: A new `.dataCorrupted` error with the given information.
    @_inlineable // FIXME(sil-serialize-all)
    public static func dataCorruptedError(in container: UnkeyedDecodingContainer, debugDescription: String) -> DecodingError {
        let context = DecodingError.Context(codingPath: container.codingPath + [_GenericIndexKey(intValue: container.currentIndex)!],
                                            debugDescription: debugDescription)
        return .dataCorrupted(context)
    }

    /// Returns a new `.dataCorrupted` error using a constructed coding path and the given debug description.
    ///
    /// The coding path for the returned error is the given container's coding path.
    ///
    /// - param container: The container in which the corrupted data was accessed.
    /// - param debugDescription: A description of the error to aid in debugging.
    /// - Returns: A new `.dataCorrupted` error with the given information.
    @_inlineable // FIXME(sil-serialize-all)
    public static func dataCorruptedError(in container: SingleValueDecodingContainer, debugDescription: String) -> DecodingError {
        let context = DecodingError.Context(codingPath: container.codingPath,
                                            debugDescription: debugDescription)
        return .dataCorrupted(context)
    }
}
