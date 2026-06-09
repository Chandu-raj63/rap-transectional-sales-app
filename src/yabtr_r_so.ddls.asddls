@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'sales header root cds'
@Metadata.ignorePropagatedAnnotations: true
define root view entity yabtr_r_so 
      as select from zvkmon01_dt_so
   composition[1..*] of yabtr_i_soid   as _item
   
   association [1..1] to yabtr_i_cust as _cust
    on  zvkmon01_dt_so.buyer = _cust.CustId
{
  key zvkmon01_dt_so.soid as Soid,
  zvkmon01_dt_so.buyer as Buyer,
  zvkmon01_dt_so.sales_person as SalesPerson,
  zvkmon01_dt_so.sales_timestamp as SalesTimestamp,
  zvkmon01_dt_so.sales_manager as SalesManager,
  zvkmon01_dt_so.approval_timestamp as ApprovalTimestamp,
  zvkmon01_dt_so.created_by as CreatedBy,
  zvkmon01_dt_so.created_on as CreatedOn,
  zvkmon01_dt_so.changed_by as ChangedBy,
  zvkmon01_dt_so.changed_on as ChangedOn,
  zvkmon01_dt_so.url as Url  ,
  _item,
  _cust
    
 
  }
