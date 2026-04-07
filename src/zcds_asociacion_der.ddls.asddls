@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'asociacion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_asociacion_Der   with parameters
    pCountryCode2 : land1
  as select from /dmo/travel as Travel

  association [1..1] to zcds_asociado_DER as _Agency on _Agency.AgencyId = $projection.AgencyId
{
  key travel_id                             as TravelId,
      Travel.agency_id                      as AgencyId,
      _Agency(pCountryCode : $parameters.pCountryCode2).Name as AgencyName
}
