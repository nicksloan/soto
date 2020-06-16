//===----------------------------------------------------------------------===//
//
// This source file is part of the AWSSDKSwift open source project
//
// Copyright (c) 2017-2020 the AWSSDKSwift project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of AWSSDKSwift project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import NIO

//MARK: Paginators

extension Signer {

    ///  Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned. 
    public func listSigningJobsPaginator(
        _ input: ListSigningJobsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSigningJobsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSigningJobs, tokenKey: \ListSigningJobsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all signing platforms available in code signing that match the request parameters. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningPlatformsPaginator(
        _ input: ListSigningPlatformsRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSigningPlatformsResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSigningPlatforms, tokenKey: \ListSigningPlatformsResponse.nextToken, on: eventLoop, onPage: onPage)
    }

    ///  Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, code signing returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that code signing returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningProfilesPaginator(
        _ input: ListSigningProfilesRequest,
        on eventLoop: EventLoop? = nil,
        onPage: @escaping (ListSigningProfilesResponse,
        EventLoop) -> EventLoopFuture<Bool>
    ) -> EventLoopFuture<Void> {
        return client.paginate(input: input, command: listSigningProfiles, tokenKey: \ListSigningProfilesResponse.nextToken, on: eventLoop, onPage: onPage)
    }

}

extension Signer.ListSigningJobsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningJobsRequest {
        return .init(
            maxResults: self.maxResults,
            nextToken: token,
            platformId: self.platformId,
            requestedBy: self.requestedBy,
            status: self.status
        )

    }
}

extension Signer.ListSigningPlatformsRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningPlatformsRequest {
        return .init(
            category: self.category,
            maxResults: self.maxResults,
            nextToken: token,
            partner: self.partner,
            target: self.target
        )

    }
}

extension Signer.ListSigningProfilesRequest: AWSPaginateToken {
    public func usingPaginationToken(_ token: String) -> Signer.ListSigningProfilesRequest {
        return .init(
            includeCanceled: self.includeCanceled,
            maxResults: self.maxResults,
            nextToken: token
        )

    }
}

