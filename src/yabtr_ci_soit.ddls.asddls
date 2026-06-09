@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'soit projection cds rood view'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity yabtr_ci_soit  
     as projection on yabtr_i_soid
{
    key Soid,
    key ItemId,
    Product,
    Amount,
    Currency,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    ChangedBy,
    ChangedOn,
    ImageItem,
    /* Associations */
    header:redirected to parent yabtr_cr_so,
    _prod
}
