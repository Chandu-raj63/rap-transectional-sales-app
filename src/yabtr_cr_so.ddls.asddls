@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'so consumstion/projection cds rood view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity yabtr_cr_so
  provider contract transactional_query 
     as projection on yabtr_r_so
{
    key Soid,
    Buyer,
    SalesPerson,
    SalesTimestamp,
    SalesManager,
    ApprovalTimestamp,
    CreatedBy,
    CreatedOn,
    ChangedBy,
    ChangedOn,
    Url,
    /* Associations */
    _cust,
    _item:redirected to composition child yabtr_ci_soit
}
