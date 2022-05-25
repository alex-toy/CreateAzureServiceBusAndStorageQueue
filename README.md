Create an Azure Service Bus and Storage Queue
=
In this exercise, we will be creating two of the most popular services used in background task architecture. In order to execute the bellow instructions, you only need to run commands\Configs\config.ps1. All the resources will automatically be deployed for you.

## Service Bus
1. Create a Resource Group
2. Create An Azure Service Bus
    - Pricing Tier: Basic
    - Create an Azure Service Bus Queue
    - Queue Name: reviewqueue
3. Find and locate your Service Bus namespace primary connection string.

## Storage Queue
1. Create an Azure Storage Account in the same resource group:
    - Performance: Standard
    - Replication: Locally Redundant
    - Networking: all networks allowed
2. Create an Azure Storage Queue
    - Name: orderqueue
    - Find and locate your storage connection string

Cleanup and delete resources