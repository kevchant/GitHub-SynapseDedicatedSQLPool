# Azure Synapse SQL Pool Database Project

Example of a SQL Server Database Project that deploys to Azure Synapse Dedicated SQL Pool in GitHub. Initially based on a blog post I wrote called 'Create a dacpac for an Azure Synapse Analytics dedicated SQL Pool using GitHub Actions' ([https://bit.ly/3HQOfFp](https://bit.ly/3Pl2irk)).

A brief overview is below. However, there is also a wiki for this repository (https://github.com/kevchant/AzureDevOps-SynapseServerlessSQLPool/wiki).

It contains two separate YAML pipelines, which is also known as a workflows in GitHub. You can find these files in the /.github/workflows folder of the repository. One workflow uses v1 of sql-action and the other uses the newer v2 version.

In order to use it with GitHub Actions in your own account you can either import or fork this repository into another GitHub repository.

In order for either the workflow to run the firewall settings for the logical SQL Server MUST allow Azure services and resources to access the server. Alternatively, use the Azure Login GitHub Action that is in this workflow https://github.com/marketplace/actions/azure-login.

In addition, you MUST have two secrets specified if you are using the Key Vault YAML, any defaults in my repo are blank:

- AZURE_CREDENTIALS - Required to create a temporary firewall rule for your agent, follow link to [create the credential](https://bit.ly/3Mn5a53). 
- AZURE_KEYVAULT - Contains your Azure Key Vault name 

Azure Key Vault secrets MUST be added first. For both workflos you need the DedicatedSQLPool-Connection-String secret in Azure KeyVault. WHich contains the connection string to your dedicated SQL Pool. 

If you are using the workflow for v1 you also need to add another secret called DedicatedEndPoint. Which contains your Azure Synapse Analytics dedicated SQL Endpoint.

This repository is provided "as is" based on the MIT license (https://opensource.org/licenses/MIT). Basically, I am not responsible for your use of it.
