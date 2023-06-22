param location string = resourceGroup().location

param pAppServicePlan string
param pASPSKU string
param pASPKind string
param pAppService string
param pLinuxFXVersion string




module AppService '../modules/appService.bicep' = {
  name: pAppServicePlan
  params: {
    pAppService: pAppService
    pAppServicePlan: pAppServicePlan
    pASPKind: pASPKind
    pASPSKU: pASPSKU
    pLinuxFXVersion: pLinuxFXVersion
  }
}
