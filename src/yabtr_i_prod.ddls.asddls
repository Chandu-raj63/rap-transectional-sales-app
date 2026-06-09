@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'product cds'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity yabtr_i_prod 
    as select from zvkmon01_dt_prod
{
    key prod_id as ProdId,
    descpt as Descpt,
@Semantics.amount.currencyCode: 'currency'    
    price as Price,
    currency as Currency
    
}
