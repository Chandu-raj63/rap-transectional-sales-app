@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sales items cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity yabtr_i_soid  
   as select from zvkmon01_dt_soit as item
    association to parent  yabtr_r_so as header
     on  $projection.Soid = header.Soid
     
     association to yabtr_i_prod as _prod
      on item.product = _prod.ProdId
{
    key soid as Soid,
    key item_id as ItemId,
    product as Product,
@Semantics.amount.currencyCode: 'currency'    
    amount as Amount,
    currency as Currency,
    sales_person as SalesPerson,
    sales_timestamp as SalesTimestamp,
    sales_manager as SalesManager,
    approval_timestamp as ApprovalTimestamp,
    changed_by as ChangedBy,
    changed_on as ChangedOn,
    image_item as ImageItem,
    header,
    _prod
    
}
