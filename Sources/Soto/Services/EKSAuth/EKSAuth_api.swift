//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2023 the Soto project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Soto project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

@_exported import SotoCore

/// Service object for interacting with AWS EKSAuth service.
///
/// The Amazon EKS Auth API and the AssumeRoleForPodIdentity action are only used by the EKS Pod Identity Agent.
public struct EKSAuth: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the EKSAuth client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - middleware: Middleware chain used to edit requests before they are sent and responses before they are decoded 
    ///     - timeout: Timeout value for HTTP requests
    ///     - byteBufferAllocator: Allocator for ByteBuffers
    ///     - options: Service options
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        middleware: AWSMiddlewareProtocol? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            serviceName: "EKSAuth",
            serviceIdentifier: "eks-auth",
            serviceProtocol: .restjson,
            apiVersion: "2023-11-26",
            endpoint: endpoint,
            errorType: EKSAuthErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// The Amazon EKS Auth API and the AssumeRoleForPodIdentity action are only used by the EKS Pod Identity Agent. We recommend that applications use the Amazon Web Services SDKs to connect to Amazon Web Services services; if credentials from an EKS Pod Identity association are available in the pod, the latest versions of the SDKs use them automatically.
    @Sendable
    public func assumeRoleForPodIdentity(_ input: AssumeRoleForPodIdentityRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> AssumeRoleForPodIdentityResponse {
        return try await self.client.execute(
            operation: "AssumeRoleForPodIdentity", 
            path: "/clusters/{clusterName}/assume-role-for-pod-identity", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension EKSAuth {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: EKSAuth, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}