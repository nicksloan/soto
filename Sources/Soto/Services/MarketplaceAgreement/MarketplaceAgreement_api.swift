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

/// Service object for interacting with AWS MarketplaceAgreement service.
///
/// AWS Marketplace is a curated digital catalog that customers can use to find, buy, deploy, and manage third-party software, data, and services to build solutions and run their businesses. The AWS Marketplace Agreement Service provides an API interface that helps AWS Marketplace sellers manage their product-related agreements, including listing, searching, and filtering agreements. To manage agreements in AWS Marketplace, you must ensure that your AWS Identity and Access Management (IAM) policies and roles are set up. The user must have the required policies/permissions that allow them to carry out the actions in AWS:    DescribeAgreement – Grants permission to users to obtain detailed meta data about any of their agreements.    GetAgreementTerms – Grants permission to users to obtain details about the terms of an agreement.    SearchAgreements – Grants permission to users to search through all their agreements.
public struct MarketplaceAgreement: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the MarketplaceAgreement client
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
            amzTarget: "AWSMPCommerceService_v20200301",
            serviceName: "MarketplaceAgreement",
            serviceIdentifier: "agreement-marketplace",
            signingName: "aws-marketplace",
            serviceProtocol: .json(version: "1.0"),
            apiVersion: "2020-03-01",
            endpoint: endpoint,
            errorType: MarketplaceAgreementErrorType.self,
            middleware: middleware,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }





    // MARK: API Calls

    /// Provides details about an agreement, such as the proposer, acceptor, start date, and end date.
    @Sendable
    public func describeAgreement(_ input: DescribeAgreementInput, logger: Logger = AWSClient.loggingDisabled) async throws -> DescribeAgreementOutput {
        return try await self.client.execute(
            operation: "DescribeAgreement", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Obtains details about the terms in an agreement that you participated in as proposer or acceptor. The details include:    TermType – The type of term, such as LegalTerm, RenewalTerm, or ConfigurableUpfrontPricingTerm.    TermID – The ID of the particular term, which is common between offer and agreement.    TermPayload – The key information contained in the term, such as the EULA for LegalTerm or pricing and dimensions for various pricing terms, such as ConfigurableUpfrontPricingTerm or UsageBasedPricingTerm.      Configuration – The buyer/acceptor's selection at the time of agreement creation, such as the number of units purchased for a dimension or setting the EnableAutoRenew flag.
    @Sendable
    public func getAgreementTerms(_ input: GetAgreementTermsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> GetAgreementTermsOutput {
        return try await self.client.execute(
            operation: "GetAgreementTerms", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }

    /// Searches across all agreements that a proposer or an acceptor has in AWS Marketplace. The search returns a list of agreements with basic agreement information. The following filter combinations are supported:    PartyType as Proposer + AgreementType + ResourceIdentifier     PartyType as Proposer + AgreementType + OfferId     PartyType as Proposer + AgreementType + AcceptorAccountId     PartyType as Proposer + AgreementType + Status     PartyType as Proposer + AgreementType + ResourceIdentifier + Status     PartyType as Proposer + AgreementType + OfferId + Status     PartyType as Proposer + AgreementType + AcceptorAccountId + Status     PartyType as Proposer + AgreementType + ResourceType + Status     PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType + Status     PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId     PartyType as Proposer + AgreementType + AcceptorAccountId + OfferId + Status     PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier     PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceIdentifier + Status     PartyType as Proposer + AgreementType + AcceptorAccountId + ResourceType
    @Sendable
    public func searchAgreements(_ input: SearchAgreementsInput, logger: Logger = AWSClient.loggingDisabled) async throws -> SearchAgreementsOutput {
        return try await self.client.execute(
            operation: "SearchAgreements", 
            path: "/", 
            httpMethod: .POST, 
            serviceConfig: self.config, 
            input: input, 
            logger: logger
        )
    }
}

extension MarketplaceAgreement {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are not public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: MarketplaceAgreement, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}