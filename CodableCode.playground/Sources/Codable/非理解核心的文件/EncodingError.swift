import Foundation

/// An error that occurs during the encoding of a value.
public enum EncodingError : Error {
    /// The context in which the error occurred.
    @_fixed_layout // FIXME(sil-serialize-all)
    public struct Context {
        /// The path of coding keys taken to get to the point of the failing encode call.
        public let codingPath: [CodingKey]

        /// A description of what went wrong, for debugging purposes.
        public let debugDescription: String

        /// The underlying error which caused this error, if any.
        public let underlyingError: Error?

        /// Creates a new context with the given path of coding keys and a description of what went wrong.
        ///
        /// - parameter codingPath: The path of coding keys taken to get to the point of the failing encode call.
        /// - parameter debugDescription: A description of what went wrong, for debugging purposes.
        /// - parameter underlyingError: The underlying error which caused this error, if any.
        @_inlineable // FIXME(sil-serialize-all)
        public init(codingPath: [CodingKey], debugDescription: String, underlyingError: Error? = nil) {
            self.codingPath = codingPath
            self.debugDescription = debugDescription
            self.underlyingError = underlyingError
        }
    }

    /// An indication that an encoder or its containers could not encode the given value.
    ///
    /// As associated values, this case contains the attempted value and context for debugging.
    case invalidValue(Any, Context)

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
        case .invalidValue(_, _): return 4866
        }
    }

    @_inlineable // FIXME(sil-serialize-all)
    public var _userInfo: AnyObject? {
        // The error dictionary must be returned as an AnyObject. We can do this only on platforms with bridging, unfortunately.
        #if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
            let context: Context
            switch self {
            case .invalidValue(_, let c): context = c
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
