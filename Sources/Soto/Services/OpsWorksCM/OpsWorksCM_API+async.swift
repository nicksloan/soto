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

@available(macOS 12.0, iOS 15.0, watchOS 8.0, tvOS 15.0, *)
extension OpsWorksCM {
    // MARK: Async API Calls

    ///  Associates a new node with the server. For more information about how to disassociate a node, see DisassociateNode.  On a Chef server: This command is an alternative to  knife bootstrap.  Example (Chef): aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=CHEF_ORGANIZATION,Value=default" "Name=CHEF_NODE_PUBLIC_KEY,Value=public-key-pem"   On a Puppet server, this command is an alternative to the puppet cert sign command that signs a Puppet node CSR.   Example (Puppet): aws opsworks-cm associate-node --server-name MyServer --node-name MyManagedNode --engine-attributes "Name=PUPPET_NODE_CSR,Value=csr-pem"   A node can can only be associated with servers that are in a HEALTHY state. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid. The AssociateNode API call can be integrated into Auto Scaling configurations, AWS Cloudformation templates, or the user data of a server's instance.
    public func associateNode(_ input: AssociateNodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateNodeResponse {
        return try await self.client.execute(operation: "AssociateNode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates an application-level backup of a server. While the server is in the BACKING_UP state, the server cannot be changed, and no additional backup can be created.   Backups can be created for servers in RUNNING, HEALTHY, and UNHEALTHY states. By default, you can create a maximum of 50 manual backups.   This operation is asynchronous.   A LimitExceededException is thrown when the maximum number of manual backups is reached. An InvalidStateException is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY. A ResourceNotFoundException is thrown when the server is not found. A ValidationException is thrown when parameters of the request are not valid.
    public func createBackup(_ input: CreateBackupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBackupResponse {
        return try await self.client.execute(operation: "CreateBackup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Creates and immedately starts a new server. The server is ready to use when it is in the HEALTHY state. By default, you can create a maximum of 10 servers.   This operation is asynchronous.   A LimitExceededException is thrown when you have created the maximum number of servers (10). A ResourceAlreadyExistsException is thrown when a server with the same name already exists in the account. A ResourceNotFoundException is thrown when you specify a backup ID that is not valid or is for a backup that does not exist. A ValidationException is thrown when parameters of the request are not valid.   If you do not specify a security group by adding the SecurityGroupIds parameter, AWS OpsWorks creates a new security group.   Chef Automate: The default security group opens the Chef server to the world on TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.   Puppet Enterprise: The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, AWS OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.  By default, your server is accessible from any IP address. We recommend that you update your security group rules to allow access from known IP addresses and address ranges only. To edit security group rules, open Security Groups in the navigation pane of the EC2 management console.  To specify your own domain for a server, and provide your own self-signed or CA-signed certificate and private key, specify values for CustomDomain,  CustomCertificate, and CustomPrivateKey.
    public func createServer(_ input: CreateServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServerResponse {
        return try await self.client.execute(operation: "CreateServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.   An InvalidStateException is thrown when a backup deletion is already in progress. A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is thrown when parameters of the request are not valid.
    public func deleteBackup(_ input: DeleteBackupRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBackupResponse {
        return try await self.client.execute(operation: "DeleteBackup", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance). When you run this command, the server state is updated to DELETING. After the server is deleted, it is no longer returned by DescribeServer requests. If the AWS CloudFormation stack cannot be deleted, the server cannot be deleted.   This operation is asynchronous.   An InvalidStateException is thrown when a server deletion is already in progress. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func deleteServer(_ input: DeleteServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteServerResponse {
        return try await self.client.execute(operation: "DeleteServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes your OpsWorks-CM account attributes.   This operation is synchronous.
    public func describeAccountAttributes(_ input: DescribeAccountAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountAttributesResponse {
        return try await self.client.execute(operation: "DescribeAccountAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes backups. The results are ordered by time, with newest backups first. If you do not specify a BackupId or ServerName, the command returns all backups.   This operation is synchronous.   A ResourceNotFoundException is thrown when the backup does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func describeBackups(_ input: DescribeBackupsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBackupsResponse {
        return try await self.client.execute(operation: "DescribeBackups", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Describes events for a specified server. Results are ordered by time, with newest events first.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func describeEvents(_ input: DescribeEventsRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEventsResponse {
        return try await self.client.execute(operation: "DescribeEvents", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Returns the current status of an existing association or disassociation request.   A ResourceNotFoundException is thrown when no recent association or disassociation request with the specified token is found, or when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func describeNodeAssociationStatus(_ input: DescribeNodeAssociationStatusRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNodeAssociationStatusResponse {
        return try await self.client.execute(operation: "DescribeNodeAssociationStatus", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Lists all configuration management servers that are identified with your account. Only the stored results from Amazon DynamoDB are returned. AWS OpsWorks CM does not query other services.   This operation is synchronous.   A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func describeServers(_ input: DescribeServersRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServersResponse {
        return try await self.client.execute(operation: "DescribeServers", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated, the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see AssociateNode.  A node can can only be disassociated from a server that is in a HEALTHY state. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func disassociateNode(_ input: DisassociateNodeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisassociateNodeResponse {
        return try await self.client.execute(operation: "DisassociateNode", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can use in EC2 to associate nodes with a server.   This operation is synchronous.   A ValidationException is raised when parameters of the request are not valid. A ResourceNotFoundException is thrown when the server does not exist. An InvalidStateException is thrown when the server is in any of the following states: CREATING, TERMINATED, FAILED or DELETING.
    public func exportServerEngineAttribute(_ input: ExportServerEngineAttributeRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportServerEngineAttributeResponse {
        return try await self.client.execute(operation: "ExportServerEngineAttribute", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Returns a list of tags that are applied to the specified AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise servers or backups.
    public func listTagsForResource(_ input: ListTagsForResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListTagsForResourceResponse {
        return try await self.client.execute(operation: "ListTagsForResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Restores a backup to a server that is in a CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state. When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work.  Restoring from a backup is performed by creating a new EC2 instance. If restoration is successful, and the server is in a HEALTHY state,  AWS OpsWorks CM switches traffic over to the new instance. After restoration is finished, the old EC2 instance is maintained in a  Running or Stopped state, but is eventually terminated.  This operation is asynchronous.   An InvalidStateException is thrown when the server is not in a valid state. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func restoreServer(_ input: RestoreServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestoreServerResponse {
        return try await self.client.execute(operation: "RestoreServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying cause of maintenance failure has been resolved. The server is in an UNDER_MAINTENANCE state while maintenance is in progress.   Maintenance can only be started on servers in HEALTHY and UNHEALTHY states. Otherwise, an InvalidStateException is thrown. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func startMaintenance(_ input: StartMaintenanceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartMaintenanceResponse {
        return try await self.client.execute(operation: "StartMaintenance", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Applies tags to an AWS OpsWorks for Chef Automate or AWS OpsWorks for Puppet Enterprise server, or to server backups.
    public func tagResource(_ input: TagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TagResourceResponse {
        return try await self.client.execute(operation: "TagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// Removes specified tags from an AWS OpsWorks-CM server or backup.
    public func untagResource(_ input: UntagResourceRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntagResourceResponse {
        return try await self.client.execute(operation: "UntagResource", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates settings for a server.   This operation is synchronous.
    public func updateServer(_ input: UpdateServerRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServerResponse {
        return try await self.client.execute(operation: "UpdateServer", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    ///  Updates engine-specific attributes on a specified server. The server enters the MODIFYING state when this operation is in progress. Only one update can occur at a time. You can use this command to reset a Chef server's public key (CHEF_PIVOTAL_KEY) or a Puppet server's  admin password (PUPPET_ADMIN_PASSWORD).   This operation is asynchronous.   This operation can only be called for servers in HEALTHY or UNHEALTHY states. Otherwise, an InvalidStateException is raised. A ResourceNotFoundException is thrown when the server does not exist. A ValidationException is raised when parameters of the request are not valid.
    public func updateServerEngineAttributes(_ input: UpdateServerEngineAttributesRequest, logger: Logger = AWSClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateServerEngineAttributesResponse {
        return try await self.client.execute(operation: "UpdateServerEngineAttributes", path: "/", httpMethod: .POST, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
}

#endif // compiler(>=5.5) && canImport(_Concurrency)