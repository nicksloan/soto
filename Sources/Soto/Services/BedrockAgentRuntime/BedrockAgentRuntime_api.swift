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

/// Service object for interacting with AWS BedrockAgentRuntime service.
///
/// Amazon Bedrock Agent
public struct BedrockAgentRuntime: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the BedrockAgentRuntime client
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
            serviceName: "BedrockAgentRuntime",
            serviceIdentifier: "bedrock-agent-runtime",
            signingName: "bedrock",
            serviceProtocol: .restjson,
            apiVersion: "2023-07-26",
            endpoint: endpoint,
            errorType: BedrockAgentRuntimeErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Invokes the specified Bedrock model to run inference using the input provided in the request body.
    @Sendable
    public func invokeAgent(_ input: InvokeAgentRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> InvokeAgentResponse {
        return try await self.client.execute(
            operation: "InvokeAgent", 
            path: "/agents/{agentId}/agentAliases/{agentAliasId}/sessions/{sessionId}/text", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Retrieve from knowledge base.
    @Sendable
    public func retrieve(_ input: RetrieveRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RetrieveResponse {
        return try await self.client.execute(
            operation: "Retrieve", 
            path: "/knowledgebases/{knowledgeBaseId}/retrieve", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// RetrieveAndGenerate API
    @Sendable
    public func retrieveAndGenerate(_ input: RetrieveAndGenerateRequest, logger: Logger = AWSClient.loggingDisabled) async throws -> RetrieveAndGenerateResponse {
        return try await self.client.execute(
            operation: "RetrieveAndGenerate", 
            path: "/retrieveAndGenerate", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension BedrockAgentRuntime {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: BedrockAgentRuntime, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension BedrockAgentRuntime {
    /// Retrieve from knowledge base.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    public func retrievePaginator(
        _ input: RetrieveRequest,
        logger: Logger = AWSClient.loggingDisabled
    ) -> AWSClient.PaginatorSequence<RetrieveRequest, RetrieveResponse> {
        return .init(
            input: input,
            command: self.retrieve,
            inputKey: \RetrieveRequest.nextToken,
            outputKey: \RetrieveResponse.nextToken,
            logger: logger
        )
    }
}

extension BedrockAgentRuntime.RetrieveRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> BedrockAgentRuntime.RetrieveRequest {
        return .init(
            knowledgeBaseId: self.knowledgeBaseId,
            nextToken: token,
            retrievalConfiguration: self.retrievalConfiguration,
            retrievalQuery: self.retrievalQuery
        )
    }
}