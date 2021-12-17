//===----------------------------------------------------------------------===//
//
// This source file is part of the Soto for AWS open source project
//
// Copyright (c) 2017-2022 the Soto project authors
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

#if compiler(>=5.5.2) && canImport(_Concurrency)

import SotoCore

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OpenSearchServerless {
    // MARK: Async API Calls

    /// Returns attributes for one or more collections, including the collection endpoint and the OpenSearch Dashboards endpoint. For more information, see Creating and managing Amazon OpenSearch Serverless collections.
    public func batchGetCollection(_ input: BatchGetCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetCollectionResponse {
        return try await self.client.execute(operation: "BatchGetCollection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns attributes for one or more VPC endpoints associated with the current account. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    public func batchGetVpcEndpoint(_ input: BatchGetVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchGetVpcEndpointResponse {
        return try await self.client.execute(operation: "BatchGetVpcEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a data access policy for OpenSearch Serverless. Access policies limit access to collections and the resources within them, and allow a user to access that data irrespective of the access mechanism or network source. For more information, see Data access control for Amazon OpenSearch Serverless.
    public func createAccessPolicy(_ input: CreateAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessPolicyResponse {
        return try await self.client.execute(operation: "CreateAccessPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new OpenSearch Serverless collection. For more information, see Creating and managing Amazon OpenSearch Serverless collections.
    public func createCollection(_ input: CreateCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCollectionResponse {
        return try await self.client.execute(operation: "CreateCollection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies a security configuration for OpenSearch Serverless. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    public func createSecurityConfig(_ input: CreateSecurityConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityConfigResponse {
        return try await self.client.execute(operation: "CreateSecurityConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a security policy to be used by one or more OpenSearch Serverless collections. Security policies provide access to a collection and its OpenSearch Dashboards endpoint from public networks or specific VPC endpoints. They also allow you to secure a collection with a KMS encryption key. For more information, see Network access for Amazon OpenSearch Serverless and Encryption at rest for Amazon OpenSearch Serverless.
    public func createSecurityPolicy(_ input: CreateSecurityPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityPolicyResponse {
        return try await self.client.execute(operation: "CreateSecurityPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates an OpenSearch Serverless-managed interface VPC endpoint. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    public func createVpcEndpoint(_ input: CreateVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndpointResponse {
        return try await self.client.execute(operation: "CreateVpcEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an OpenSearch Serverless access policy. For more information, see Data access control for Amazon OpenSearch Serverless.
    public func deleteAccessPolicy(_ input: DeleteAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccessPolicyResponse {
        return try await self.client.execute(operation: "DeleteAccessPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an OpenSearch Serverless collection. For more information, see Creating and managing Amazon OpenSearch Serverless collections.
    public func deleteCollection(_ input: DeleteCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCollectionResponse {
        return try await self.client.execute(operation: "DeleteCollection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes a security configuration for OpenSearch Serverless. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    public func deleteSecurityConfig(_ input: DeleteSecurityConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityConfigResponse {
        return try await self.client.execute(operation: "DeleteSecurityConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an OpenSearch Serverless security policy.
    public func deleteSecurityPolicy(_ input: DeleteSecurityPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityPolicyResponse {
        return try await self.client.execute(operation: "DeleteSecurityPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes an OpenSearch Serverless-managed interface endpoint. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    public func deleteVpcEndpoint(_ input: DeleteVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcEndpointResponse {
        return try await self.client.execute(operation: "DeleteVpcEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns an OpenSearch Serverless access policy. For more information, see Data access control for Amazon OpenSearch Serverless.
    public func getAccessPolicy(_ input: GetAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccessPolicyResponse {
        return try await self.client.execute(operation: "GetAccessPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns account-level settings related to OpenSearch Serverless.
    public func getAccountSettings(_ input: GetAccountSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccountSettingsResponse {
        return try await self.client.execute(operation: "GetAccountSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns statistical information about your OpenSearch Serverless access policies, security configurations, and security policies.
    public func getPoliciesStats(_ input: GetPoliciesStatsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPoliciesStatsResponse {
        return try await self.client.execute(operation: "GetPoliciesStats", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about an OpenSearch Serverless security configuration. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    public func getSecurityConfig(_ input: GetSecurityConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSecurityConfigResponse {
        return try await self.client.execute(operation: "GetSecurityConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a configured OpenSearch Serverless security policy. For more information, see Network access for Amazon OpenSearch Serverless and Encryption at rest for Amazon OpenSearch Serverless.
    public func getSecurityPolicy(_ input: GetSecurityPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSecurityPolicyResponse {
        return try await self.client.execute(operation: "GetSecurityPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about a list of OpenSearch Serverless access policies.
    public func listAccessPolicies(_ input: ListAccessPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAccessPoliciesResponse {
        return try await self.client.execute(operation: "ListAccessPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists all OpenSearch Serverless collections. For more information, see Creating and managing Amazon OpenSearch Serverless collections.  Make sure to include an empty request body {} if you don't include any collection filters in the request.
    public func listCollections(_ input: ListCollectionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListCollectionsResponse {
        return try await self.client.execute(operation: "ListCollections", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about configured OpenSearch Serverless security configurations. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    public func listSecurityConfigs(_ input: ListSecurityConfigsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSecurityConfigsResponse {
        return try await self.client.execute(operation: "ListSecurityConfigs", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns information about configured OpenSearch Serverless security policies.
    public func listSecurityPolicies(_ input: ListSecurityPoliciesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSecurityPoliciesResponse {
        return try await self.client.execute(operation: "ListSecurityPolicies", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the tags for an OpenSearch Serverless resource. For more information, see Tagging Amazon OpenSearch Serverless collections.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns the OpenSearch Serverless-managed interface VPC endpoints associated with the current account. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    public func listVpcEndpoints(_ input: ListVpcEndpointsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListVpcEndpointsResponse {
        return try await self.client.execute(operation: "ListVpcEndpoints", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Associates tags with an OpenSearch Serverless resource. For more information, see Tagging Amazon OpenSearch Serverless collections.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a tag or set of tags from an OpenSearch Serverless resource. For more information, see Tagging Amazon OpenSearch Serverless collections.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an OpenSearch Serverless access policy. For more information, see Data access control for Amazon OpenSearch Serverless.
    public func updateAccessPolicy(_ input: UpdateAccessPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAccessPolicyResponse {
        return try await self.client.execute(operation: "UpdateAccessPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the OpenSearch Serverless settings for the current Amazon Web Services account. For more information, see Autoscaling.
    public func updateAccountSettings(_ input: UpdateAccountSettingsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAccountSettingsResponse {
        return try await self.client.execute(operation: "UpdateAccountSettings", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an OpenSearch Serverless collection.
    public func updateCollection(_ input: UpdateCollectionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateCollectionResponse {
        return try await self.client.execute(operation: "UpdateCollection", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates a security configuration for OpenSearch Serverless. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    public func updateSecurityConfig(_ input: UpdateSecurityConfigRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecurityConfigResponse {
        return try await self.client.execute(operation: "UpdateSecurityConfig", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an OpenSearch Serverless security policy. For more information, see Network access for Amazon OpenSearch Serverless and Encryption at rest for Amazon OpenSearch Serverless.
    public func updateSecurityPolicy(_ input: UpdateSecurityPolicyRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateSecurityPolicyResponse {
        return try await self.client.execute(operation: "UpdateSecurityPolicy", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an OpenSearch Serverless-managed interface endpoint. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    public func updateVpcEndpoint(_ input: UpdateVpcEndpointRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateVpcEndpointResponse {
        return try await self.client.execute(operation: "UpdateVpcEndpoint", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OpenSearchServerless {
    ///  Returns information about a list of OpenSearch Serverless access policies.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listAccessPoliciesPaginator(
        _ input: ListAccessPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListAccessPoliciesRequest, ListAccessPoliciesResponse> {
        return .init(
            input: input,
            command: self.listAccessPolicies,
            inputKey: \ListAccessPoliciesRequest.nextToken,
            outputKey: \ListAccessPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Lists all OpenSearch Serverless collections. For more information, see Creating and managing Amazon OpenSearch Serverless collections.  Make sure to include an empty request body {} if you don't include any collection filters in the request.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listCollectionsPaginator(
        _ input: ListCollectionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListCollectionsRequest, ListCollectionsResponse> {
        return .init(
            input: input,
            command: self.listCollections,
            inputKey: \ListCollectionsRequest.nextToken,
            outputKey: \ListCollectionsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about configured OpenSearch Serverless security configurations. For more information, see SAML authentication for Amazon OpenSearch Serverless.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityConfigsPaginator(
        _ input: ListSecurityConfigsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityConfigsRequest, ListSecurityConfigsResponse> {
        return .init(
            input: input,
            command: self.listSecurityConfigs,
            inputKey: \ListSecurityConfigsRequest.nextToken,
            outputKey: \ListSecurityConfigsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns information about configured OpenSearch Serverless security policies.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listSecurityPoliciesPaginator(
        _ input: ListSecurityPoliciesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListSecurityPoliciesRequest, ListSecurityPoliciesResponse> {
        return .init(
            input: input,
            command: self.listSecurityPolicies,
            inputKey: \ListSecurityPoliciesRequest.nextToken,
            outputKey: \ListSecurityPoliciesResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns the OpenSearch Serverless-managed interface VPC endpoints associated with the current account. For more information, see Access Amazon OpenSearch Serverless using an interface endpoint.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listVpcEndpointsPaginator(
        _ input: ListVpcEndpointsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListVpcEndpointsRequest, ListVpcEndpointsResponse> {
        return .init(
            input: input,
            command: self.listVpcEndpoints,
            inputKey: \ListVpcEndpointsRequest.nextToken,
            outputKey: \ListVpcEndpointsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5.2) && canImport(_Concurrency)