#!/bin/sh

az vm image list-publishers -l eastus --query "[?contains(name, 'Microsoft')]"
az vm image list-offers -l eastus --publisher MicrosoftVisualStudio -o table
az vm image list-skus -l eastus --publisher MicrosoftVisualStudio --offer visualstudio2019latest -o table
