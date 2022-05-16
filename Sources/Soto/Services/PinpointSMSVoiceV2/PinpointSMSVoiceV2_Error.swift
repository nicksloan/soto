//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2021 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto/tree/main/CodeGenerator. DO NOT EDIT.

import SotoCore

/// Error enum for PinpointSMSVoiceV2
public struct PinpointSMSVoiceV2ErrorType: AWSErrorType {
    enum Code: String {
        case accessDeniedException = "AccessDeniedException"
        case conflictException = "ConflictException"
        case internalServerException = "InternalServerException"
        case resourceNotFoundException = "ResourceNotFoundException"
        case serviceQuotaExceededException = "ServiceQuotaExceededException"
        case throttlingException = "ThrottlingException"
        case validationException = "ValidationException"
    }

    private let error: Code
    public let context: AWSErrorContext?

    /// initialize PinpointSMSVoiceV2
    public init?(errorCode: String, context: AWSErrorContext) {
        guard let error = Code(rawValue: errorCode) else { return nil }
        self.error = error
        self.context = context
    }

    internal init(_ error: Code) {
        self.error = error
        self.context = nil
    }

    /// return error code string
    public var errorCode: String { self.error.rawValue }

    /// The request was denied because you don't have sufficient permissions to access the resource.
    public static var accessDeniedException: Self { .init(.accessDeniedException) }
    /// Your request has conflicting operations. This can occur if you're trying to perform more than one operation on the same resource at the same time or it could be that the requested action isn't valid for the current state or configuration of the resource.
    public static var conflictException: Self { .init(.conflictException) }
    /// The API encountered an unexpected error and couldn't complete the request. You might be able to successfully issue the request again in the future.
    public static var internalServerException: Self { .init(.internalServerException) }
    /// A requested resource couldn't be found.
    public static var resourceNotFoundException: Self { .init(.resourceNotFoundException) }
    /// The request would cause a service quota to be exceeded.
    public static var serviceQuotaExceededException: Self { .init(.serviceQuotaExceededException) }
    /// An error that occurred because too many requests were sent during a certain amount of time.
    public static var throttlingException: Self { .init(.throttlingException) }
    /// A validation exception for a field.
    public static var validationException: Self { .init(.validationException) }
}

extension PinpointSMSVoiceV2ErrorType: Equatable {
    public static func == (lhs: PinpointSMSVoiceV2ErrorType, rhs: PinpointSMSVoiceV2ErrorType) -> Bool {
        lhs.error == rhs.error
    }
}

extension PinpointSMSVoiceV2ErrorType: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(self.message ?? "")"
    }
}