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

@_exported import SotoCore

/// Service object for interacting with AWS SecurityLake service.
///
///  Amazon Security Lake is in preview release. Your use of the Security Lake preview is subject to Section 2 of the Amazon Web Services Service Terms("Betas and Previews").  Amazon Security Lake is a fully managed security data lake service. You can use Security Lake to automatically centralize security data from cloud, on-premises, and custom sources into a data lake that's stored in your Amazon Web Servicesaccount. Amazon Web Services Organizations is an account management service that lets you consolidate multiple Amazon Web Services accounts into an organization that you create and centrally manage. With Organizations, you can create member accounts and invite existing accounts to join your organization. Security Lake helps you analyze security data for a more complete understanding of your security posture across the entire organization. It can also help you improve the protection of your workloads, applications, and data. The data lake is backed by Amazon Simple Storage Service (Amazon S3) buckets, and you retain ownership over your data.    Amazon Security Lake integrates with CloudTrail, a service that provides a record of actions taken by a user, role, or an Amazon Web Services service in Security Lake CloudTrail captures API calls for Security Lake as events. The calls captured include calls from the Security Lake console and code calls to the Security Lake API operations. If you create a trail, you can enable continuous delivery of CloudTrail events to an Amazon S3 bucket, including events for Security Lake. If you don't configure a trail, you can still view the most recent events in the CloudTrail console in Event history. Using the information collected by CloudTrail you can determine the request that was made to Security Lake, the IP address from which the request was made, who made the request, when it was made, and additional details. To learn more about Security Lake information in CloudTrail, see the Amazon Security Lake User Guide. Security Lake automates the collection of security-related log and event data from integrated Amazon Web Services and third-party services. It also helps you manage the lifecycle of data with customizable retention and replication settings. Security Lake converts ingested data into Apache Parquet format and a standard open-source schema called the Open Cybersecurity Schema Framework (OCSF). Other Amazon Web Services and third-party services can subscribe to the data that's stored in Security Lake for  incident response and security data analytics.
public struct SecurityLake: AWSService {
    // MARK: Member variables

    /// Client used for communication with AWS
    public let client: AWSClient
    /// Service configuration
    public let config: AWSServiceConfig

    // MARK: Initialization

    /// Initialize the SecurityLake client
    /// - parameters:
    ///     - client: AWSClient used to process requests
    ///     - region: Region of server you want to communicate with. This will override the partition parameter.
    ///     - partition: AWS partition where service resides, standard (.aws), china (.awscn), government (.awsusgov).
    ///     - endpoint: Custom endpoint URL to use instead of standard AWS servers
    ///     - timeout: Timeout value for HTTP requests
    public init(
        client: AWSClient,
        region: SotoCore.Region? = nil,
        partition: AWSPartition = .aws,
        endpoint: String? = nil,
        timeout: TimeAmount? = nil,
        byteBufferAllocator: ByteBufferAllocator = ByteBufferAllocator(),
        options: AWSServiceConfig.Options = []
    ) {
        self.client = client
        self.config = AWSServiceConfig(
            region: region,
            partition: region?.partition ?? partition,
            service: "securitylake",
            serviceProtocol: .restjson,
            apiVersion: "2018-05-10",
            endpoint: endpoint,
            errorType: SecurityLakeErrorType.self,
            timeout: timeout,
            byteBufferAllocator: byteBufferAllocator,
            options: options
        )
    }

    // MARK: API Calls

    /// Adds a natively supported Amazon Web Service as an Amazon Security Lake source. Enables source types for member accounts in required Amazon Web Services Regions, based on the parameters you specify. You can choose any source type in any Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API.  By default, a dimension refers to the entire set. When you don't provide a dimension, Security Lake assumes that the missing dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API enables all Security Lake member accounts for all sources. Similarly, when you do not specify Regions, Security Lake is enabled for all the Regions where Security Lake is available as a service. You can use this API only to enable natively supported Amazon Web Services as a source. Use CreateCustomLogSource to enable data collection from a custom source.
    public func createAwsLogSource(_ input: CreateAwsLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAwsLogSourceResponse> {
        return self.client.execute(operation: "CreateAwsLogSource", path: "/v1/logsources/aws", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Adds a third-party custom source in Amazon Security Lake, from the Amazon Web Services Region where you want to create a custom source. Security Lake can collect logs and events from third-party custom sources. After creating the appropriate IAM role to invoke Glue crawler, use this API to add a custom source name in Security Lake. This operation creates a partition in the Amazon S3 bucket for Security Lake as the target location for log files from the custom source in addition to an associated Glue table and an Glue crawler.
    public func createCustomLogSource(_ input: CreateCustomLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCustomLogSourceResponse> {
        return self.client.execute(operation: "CreateCustomLogSource", path: "/v1/logsources/custom", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Initializes an Amazon Security Lake instance with the provided (or default) configuration. You can enable Security Lake in Amazon Web Services Regions with customized settings before enabling log collection in Regions. You can either use the enableAll parameter to specify all Regions or specify the Regions where you want to enable Security Lake. To specify particular Regions, use the Regions parameter and then configure these Regions using the configurations parameter. If you have already enabled Security Lake in a Region when you call this command, the command will update the Region if you provide new configuration parameters. If you have not already enabled Security Lake in the Region when you call this API, it will set up the data lake in the Region with the specified configurations. When you enable Security Lake, it starts ingesting security data after the CreateAwsLogSource call. This includes ingesting security data from sources, storing data, and making data accessible to subscribers. Security Lake also enables all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. For more information, see the Amazon Security Lake User Guide.
    public func createDatalake(_ input: CreateDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatalakeResponse> {
        return self.client.execute(operation: "CreateDatalake", path: "/v1/datalake", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Automatically enables Amazon Security Lake for new member accounts in your organization. Security Lake is not automatically enabled for any existing member accounts in your organization.
    public func createDatalakeAutoEnable(_ input: CreateDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatalakeAutoEnableResponse> {
        return self.client.execute(operation: "CreateDatalakeAutoEnable", path: "/v1/datalake/autoenable", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Designates the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    public func createDatalakeDelegatedAdmin(_ input: CreateDatalakeDelegatedAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatalakeDelegatedAdminResponse> {
        return self.client.execute(operation: "CreateDatalakeDelegatedAdmin", path: "/v1/datalake/delegate", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func createDatalakeExceptionsSubscription(_ input: CreateDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatalakeExceptionsSubscriptionResponse> {
        return self.client.execute(operation: "CreateDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a subscription permission for accounts that are already enabled in Amazon Security Lake. You can create a subscriber with access to data in the current Amazon Web Services Region.
    public func createSubscriber(_ input: CreateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubscriberResponse> {
        return self.client.execute(operation: "CreateSubscriber", path: "/v1/subscribers", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Notifies the subscriber when new data is written to the data lake for the sources that the subscriber consumes in Security Lake.
    public func createSubscriptionNotificationConfiguration(_ input: CreateSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubscriptionNotificationConfigurationResponse> {
        return self.client.execute(operation: "CreateSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a natively supported Amazon Web Service as an Amazon Security Lake source. When you remove the source, Security Lake stops collecting data from that source, and subscribers can no longer consume new data from the source. Subscribers can still consume data that Security Lake collected from the source before disablement. You can choose any source type in any Amazon Web Services Region for either accounts that are part of a trusted organization or standalone accounts. At least one of the three dimensions is a mandatory input to this API. However, you can supply any combination of the three dimensions to this API.  By default, a dimension refers to the entire set. This is overridden when you supply any one of the inputs. For instance, when you do not specify members, the API disables all Security Lake member accounts for sources. Similarly, when you do not specify Regions, Security Lake is disabled for all the Regions where Security Lake is available as a service. When you don't provide a dimension, Security Lake  assumes that the missing dimension refers to the entire set. For example, if you don't provide specific accounts, the API applies to the entire set of accounts in your organization.
    public func deleteAwsLogSource(_ input: DeleteAwsLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAwsLogSourceResponse> {
        return self.client.execute(operation: "DeleteAwsLogSource", path: "/v1/logsources/aws/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes a custom log source from Amazon Security Lake.
    public func deleteCustomLogSource(_ input: DeleteCustomLogSourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCustomLogSourceResponse> {
        return self.client.execute(operation: "DeleteCustomLogSource", path: "/v1/logsources/custom", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// When you delete Amazon Security Lake from your account, Security Lake is disabled in all Amazon Web Services Regions. Also, this API automatically takes steps to remove the account from Security Lake .  This operation disables security data collection from sources, deletes data stored, and stops making data accessible to subscribers. Security Lake also deletes all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. The DeleteDatalake operation does not delete the Amazon S3 bucket, which is owned by your Amazon Web Services account. For more information, see the Amazon Security Lake User Guide.
    public func deleteDatalake(_ input: DeleteDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatalakeResponse> {
        return self.client.execute(operation: "DeleteDatalake", path: "/v1/datalake", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Automatically deletes Amazon Security Lake to stop collecting security data. When you delete Amazon Security Lake from your account, Security Lake is disabled in all Regions. Also, this API automatically takes steps to remove the account from Security Lake .  This operation disables security data collection from sources, deletes data stored, and stops making data accessible to subscribers. Security Lake also deletes all the existing settings and resources that it stores or maintains for your Amazon Web Services account in the current Region, including security log and event data. The DeleteDatalake operation does not delete the Amazon S3 bucket, which is owned by your Amazon Web Services account. For more information, see the Amazon Security Lake User Guide.
    public func deleteDatalakeAutoEnable(_ input: DeleteDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatalakeAutoEnableResponse> {
        return self.client.execute(operation: "DeleteDatalakeAutoEnable", path: "/v1/datalake/autoenable/delete", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the Amazon Security Lake delegated administrator account for the organization. This API can only be called by the organization management account. The organization management account cannot be the delegated administrator account.
    public func deleteDatalakeDelegatedAdmin(_ input: DeleteDatalakeDelegatedAdminRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatalakeDelegatedAdminResponse> {
        return self.client.execute(operation: "DeleteDatalakeDelegatedAdmin", path: "/v1/datalake/delegate/{account}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func deleteDatalakeExceptionsSubscription(_ input: DeleteDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDatalakeExceptionsSubscriptionResponse> {
        return self.client.execute(operation: "DeleteDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the subscription permission for accounts that are already enabled in Amazon Security Lake. You can delete a subscriber and remove access to data in the current Amazon Web Services Region.
    public func deleteSubscriber(_ input: DeleteSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSubscriberResponse> {
        return self.client.execute(operation: "DeleteSubscriber", path: "/v1/subscribers", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Deletes the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func deleteSubscriptionNotificationConfiguration(_ input: DeleteSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSubscriptionNotificationConfigurationResponse> {
        return self.client.execute(operation: "DeleteSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .DELETE, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the Amazon Security Lake configuration object for the specified Amazon Web Services account ID. You can use the GetDatalake API to know whether Security Lake is enabled for the current Region. This API does not take input parameters.
    public func getDatalake(_ input: GetDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatalakeResponse> {
        return self.client.execute(operation: "GetDatalake", path: "/v1/datalake", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the configuration that will be automatically set up for accounts added to the organization after the organization has onboarded to Amazon Security Lake. This API does not take input parameters.
    public func getDatalakeAutoEnable(_ input: GetDatalakeAutoEnableRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatalakeAutoEnableResponse> {
        return self.client.execute(operation: "GetDatalakeAutoEnable", path: "/v1/datalake/autoenable", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the expiration period and time-to-live (TTL) for which the exception message will remain. Exceptions are stored by default, for 2 weeks from when a record was created in Amazon Security Lake. This API does not take input parameters.
    public func getDatalakeExceptionsExpiry(_ input: GetDatalakeExceptionsExpiryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatalakeExceptionsExpiryResponse> {
        return self.client.execute(operation: "GetDatalakeExceptionsExpiry", path: "/v1/datalake/exceptions/expiry", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the details of exception notifications for the account in Amazon Security Lake.
    public func getDatalakeExceptionsSubscription(_ input: GetDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatalakeExceptionsSubscriptionResponse> {
        return self.client.execute(operation: "GetDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled for those accounts and which sources Security Lake is collecting data from.
    public func getDatalakeStatus(_ input: GetDatalakeStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetDatalakeStatusResponse> {
        return self.client.execute(operation: "GetDatalakeStatus", path: "/v1/datalake/status", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the subscription information for the specified subscription ID. You can get information about a specific subscriber.
    public func getSubscriber(_ input: GetSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSubscriberResponse> {
        return self.client.execute(operation: "GetSubscriber", path: "/v1/subscribers/{id}", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.
    public func listDatalakeExceptions(_ input: ListDatalakeExceptionsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListDatalakeExceptionsResponse> {
        return self.client.execute(operation: "ListDatalakeExceptions", path: "/v1/datalake/exceptions", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Retrieves the log sources in the current Amazon Web Services Region.
    public func listLogSources(_ input: ListLogSourcesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListLogSourcesResponse> {
        return self.client.execute(operation: "ListLogSources", path: "/v1/logsources/list", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// List all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list of subscriptions associated with a specific organization or Amazon Web Services account.
    public func listSubscribers(_ input: ListSubscribersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSubscribersResponse> {
        return self.client.execute(operation: "ListSubscribers", path: "/v1/subscribers", httpMethod: .GET, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Specifies where to store your security data and for how long. You can add a rollup Region to consolidate data from multiple Amazon Web Services Regions.
    public func updateDatalake(_ input: UpdateDatalakeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatalakeResponse> {
        return self.client.execute(operation: "UpdateDatalake", path: "/v1/datalake", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Update the expiration period for the exception message to your preferred time, and control the time-to-live (TTL) for the exception message to remain. Exceptions are stored by default for 2 weeks from when a record was created in Amazon Security Lake.
    public func updateDatalakeExceptionsExpiry(_ input: UpdateDatalakeExceptionsExpiryRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatalakeExceptionsExpiryResponse> {
        return self.client.execute(operation: "UpdateDatalakeExceptionsExpiry", path: "/v1/datalake/exceptions/expiry", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates the specified notification subscription in Amazon Security Lake for the organization you specify.
    public func updateDatalakeExceptionsSubscription(_ input: UpdateDatalakeExceptionsSubscriptionRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateDatalakeExceptionsSubscriptionResponse> {
        return self.client.execute(operation: "UpdateDatalakeExceptionsSubscription", path: "/v1/datalake/exceptions/subscription", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Updates an existing subscription for the given Amazon Security Lake account ID. You can update a subscriber by changing the sources that the subscriber consumes data from.
    public func updateSubscriber(_ input: UpdateSubscriberRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubscriberResponse> {
        return self.client.execute(operation: "UpdateSubscriber", path: "/v1/subscribers/{id}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Creates a new subscription notification or adds the existing subscription notification setting for the specified subscription ID.
    public func updateSubscriptionNotificationConfiguration(_ input: UpdateSubscriptionNotificationConfigurationRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateSubscriptionNotificationConfigurationResponse> {
        return self.client.execute(operation: "UpdateSubscriptionNotificationConfiguration", path: "/subscription-notifications/{subscriptionId}", httpMethod: .PUT, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

extension SecurityLake {
    /// Initializer required by `AWSService.with(middlewares:timeout:byteBufferAllocator:options)`. You are not able to use this initializer directly as there are no public
    /// initializers for `AWSServiceConfig.Patch`. Please use `AWSService.with(middlewares:timeout:byteBufferAllocator:options)` instead.
    public init(from: SecurityLake, patch: AWSServiceConfig.Patch) {
        self.client = from.client
        self.config = from.config.with(patch: patch)
    }
}

// MARK: Paginators

extension SecurityLake {
    ///  Retrieves a snapshot of the current Region, including whether Amazon Security Lake is enabled for those accounts and which sources Security Lake is collecting data from.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func getDatalakeStatusPaginator<Result>(
        _ input: GetDatalakeStatusRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, GetDatalakeStatusResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.getDatalakeStatus,
            inputKey: \GetDatalakeStatusRequest.nextToken,
            outputKey: \GetDatalakeStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func getDatalakeStatusPaginator(
        _ input: GetDatalakeStatusRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (GetDatalakeStatusResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.getDatalakeStatus,
            inputKey: \GetDatalakeStatusRequest.nextToken,
            outputKey: \GetDatalakeStatusResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Lists the Amazon Security Lake exceptions that you can use to find the source of problems and fix them.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listDatalakeExceptionsPaginator<Result>(
        _ input: ListDatalakeExceptionsRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListDatalakeExceptionsResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listDatalakeExceptions,
            inputKey: \ListDatalakeExceptionsRequest.nextToken,
            outputKey: \ListDatalakeExceptionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listDatalakeExceptionsPaginator(
        _ input: ListDatalakeExceptionsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListDatalakeExceptionsResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listDatalakeExceptions,
            inputKey: \ListDatalakeExceptionsRequest.nextToken,
            outputKey: \ListDatalakeExceptionsResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  Retrieves the log sources in the current Amazon Web Services Region.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listLogSourcesPaginator<Result>(
        _ input: ListLogSourcesRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListLogSourcesResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listLogSources,
            inputKey: \ListLogSourcesRequest.nextToken,
            outputKey: \ListLogSourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listLogSourcesPaginator(
        _ input: ListLogSourcesRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListLogSourcesResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listLogSources,
            inputKey: \ListLogSourcesRequest.nextToken,
            outputKey: \ListLogSourcesResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    ///  List all subscribers for the specific Amazon Security Lake account ID. You can retrieve a list of subscriptions associated with a specific organization or Amazon Web Services account.
    ///
    /// Provide paginated results to closure `onPage` for it to combine them into one result.
    /// This works in a similar manner to `Array.reduce<Result>(_:_:) -> Result`.
    ///
    /// Parameters:
    ///   - input: Input for request
    ///   - initialValue: The value to use as the initial accumulating value. `initialValue` is passed to `onPage` the first time it is called.
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each paginated response. It combines an accumulating result with the contents of response. This combined result is then returned
    ///         along with a boolean indicating if the paginate operation should continue.
    public func listSubscribersPaginator<Result>(
        _ input: ListSubscribersRequest,
        _ initialValue: Result,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (Result, ListSubscribersResponse, EventLoop) -> EventLoopFuture<(Bool, Result)>
    ) -> EventLoopFuture<Result> {
        return self.client.paginate(
            input: input,
            initialValue: initialValue,
            command: self.listSubscribers,
            inputKey: \ListSubscribersRequest.nextToken,
            outputKey: \ListSubscribersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }

    /// Provide paginated results to closure `onPage`.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    ///   - onPage: closure called with each block of entries. Returns boolean indicating whether we should continue.
    public func listSubscribersPaginator(
        _ input: ListSubscribersRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSubscribersResponse, EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return self.client.paginate(
            input: input,
            command: self.listSubscribers,
            inputKey: \ListSubscribersRequest.nextToken,
            outputKey: \ListSubscribersResponse.nextToken,
            on: eventLoop,
            onPage: onPage
        )
    }
}

extension SecurityLake.GetDatalakeStatusRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityLake.GetDatalakeStatusRequest {
        return .init(
            accountSet: self.accountSet,
            maxAccountResults: self.maxAccountResults,
            nextToken: token
        )
    }
}

extension SecurityLake.ListDatalakeExceptionsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityLake.ListDatalakeExceptionsRequest {
        return .init(
            maxFailures: self.maxFailures,
            nextToken: token,
            regionSet: self.regionSet
        )
    }
}

extension SecurityLake.ListLogSourcesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityLake.ListLogSourcesRequest {
        return .init(
            inputOrder: self.inputOrder,
            listAllDimensions: self.listAllDimensions,
            listSingleDimension: self.listSingleDimension,
            listTwoDimensions: self.listTwoDimensions,
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}

extension SecurityLake.ListSubscribersRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> SecurityLake.ListSubscribersRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token
        )
    }
}