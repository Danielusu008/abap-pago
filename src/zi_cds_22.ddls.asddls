@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'ZI_CDS_22'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_22 
as select from zemployee_der
association [0..1] to ZI_CDS_22 as _Mangaer on _Mangaer.Employee = $projection.Mangaer
{
    key employee as Employee,
    mangaer as Mangaer,
    name as Name,
    _Mangaer
}
