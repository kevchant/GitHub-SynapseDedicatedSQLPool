# Azure Synapse SQL Pool Database Project

Example of a SQL Server Database Project that deploys to Azure Synapse Dedicated SQL Pool in GitHub. Based on a blog post I wrote called 'Create a dacpac for an Azure Synapse Analytics dedicated SQL Pool using GitHub Actions' ([https://bit.ly/3HQOfFp](https://bit.ly/3Pl2irk)).

It uses a YAML pipeline, which is also known as a workflow in GitHub. You can find this file in the /.github/workflows folder of the repository.

In order to use it with GitHub Actions in your own account you can either import or fork this repository into another GitHub repository.

In order for the workflow to run the firewall settings for the logical SQL Server MUST allow Azure services and resources to access the server. Alternatively, use the Azure Login GitHub Action that is in this workflow https://github.com/marketplace/actions/azure-login.

In addition, you MUST have two secrets specified if you are using the Key Vault YAML, any defaults in my repo are blank:

- AZURE_CREDENTIALS - Required to create a temporary firewall rule for your agent, follow link to [create the credential](https://bit.ly/3Mn5a53). 
- AZURE_KEYVAULT - Contains your Azure Key Vault name 

Azure Key Vault secrets MUST be added first.

This repository is provided "as is" based on the MIT license (https://opensource.org/licenses/MIT). Basically, I am not responsible for your use of it.
