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

// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/soto-project/soto-codegenerator.
// DO NOT EDIT.

#if compiler(>=5.5) && canImport(_Concurrency)

import SotoCore

// MARK: Paginators

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Forecast {
    ///  Returns a list of dataset groups created using the CreateDatasetGroup operation. For each dataset group, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the dataset group ARN with the DescribeDatasetGroup operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetGroupsPaginator(
        _ input: ListDatasetGroupsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetGroupsRequest, ListDatasetGroupsResponse> {
        return .init(
            input: input,
            command: listDatasetGroups,
            inputKey: \ListDatasetGroupsRequest.nextToken,
            outputKey: \ListDatasetGroupsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of dataset import jobs created using the CreateDatasetImportJob operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the DescribeDatasetImportJob operation. You can filter the list by providing an array of Filter objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetImportJobsPaginator(
        _ input: ListDatasetImportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetImportJobsRequest, ListDatasetImportJobsResponse> {
        return .init(
            input: input,
            command: listDatasetImportJobs,
            inputKey: \ListDatasetImportJobsRequest.nextToken,
            outputKey: \ListDatasetImportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of datasets created using the CreateDataset operation. For each dataset, a summary of its properties, including its Amazon Resource Name (ARN), is returned. To retrieve the complete set of properties, use the ARN with the DescribeDataset operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listDatasetsPaginator(
        _ input: ListDatasetsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListDatasetsRequest, ListDatasetsResponse> {
        return .init(
            input: input,
            command: listDatasets,
            inputKey: \ListDatasetsRequest.nextToken,
            outputKey: \ListDatasetsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of forecast export jobs created using the CreateForecastExportJob operation. For each forecast export job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, use the ARN with the DescribeForecastExportJob operation. You can filter the list using an array of Filter objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listForecastExportJobsPaginator(
        _ input: ListForecastExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListForecastExportJobsRequest, ListForecastExportJobsResponse> {
        return .init(
            input: input,
            command: listForecastExportJobs,
            inputKey: \ListForecastExportJobsRequest.nextToken,
            outputKey: \ListForecastExportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of forecasts created using the CreateForecast operation. For each forecast, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). To retrieve the complete set of properties, specify the ARN with the DescribeForecast operation. You can filter the list using an array of Filter objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listForecastsPaginator(
        _ input: ListForecastsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListForecastsRequest, ListForecastsResponse> {
        return .init(
            input: input,
            command: listForecasts,
            inputKey: \ListForecastsRequest.nextToken,
            outputKey: \ListForecastsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of predictor backtest export jobs created using the CreatePredictorBacktestExportJob operation. This operation returns a summary for each backtest export job. You can filter the list using an array of Filter objects. To retrieve the complete set of properties for a particular backtest export job, use the ARN with the DescribePredictorBacktestExportJob operation.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPredictorBacktestExportJobsPaginator(
        _ input: ListPredictorBacktestExportJobsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPredictorBacktestExportJobsRequest, ListPredictorBacktestExportJobsResponse> {
        return .init(
            input: input,
            command: listPredictorBacktestExportJobs,
            inputKey: \ListPredictorBacktestExportJobsRequest.nextToken,
            outputKey: \ListPredictorBacktestExportJobsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }

    ///  Returns a list of predictors created using the CreateAutoPredictor or CreatePredictor operations. For each predictor, this operation returns a summary of its properties, including its Amazon Resource Name (ARN).  You can retrieve the complete set of properties by using the ARN with the DescribeAutoPredictor and DescribePredictor operations. You can filter the list using an array of Filter objects.
    /// Return PaginatorSequence for operation.
    ///
    /// - Parameters:
    ///   - input: Input for request
    ///   - logger: Logger used flot logging
    ///   - eventLoop: EventLoop to run this process on
    public func listPredictorsPaginator(
        _ input: ListPredictorsRequest,
        logger: Logger = AWSClient.loggingDisabled,
        on eventLoop: EventLoop? = nil
    ) -> AWSClient.PaginatorSequence<ListPredictorsRequest, ListPredictorsResponse> {
        return .init(
            input: input,
            command: listPredictors,
            inputKey: \ListPredictorsRequest.nextToken,
            outputKey: \ListPredictorsResponse.nextToken,
            logger: logger,
            on: eventLoop
        )
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)