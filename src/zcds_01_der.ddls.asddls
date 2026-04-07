@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'primer cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_01_der 
as select from /dmo/flight
{
 
    key carrier_id as AirlineId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
   @Semantics.amount.currencyCode: 'Currency'
    price as Price,
    currency_code as Currency,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied
}
