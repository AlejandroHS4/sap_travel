@EndUserText.label: 'Consumption - Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_BOOKING_A02 
  as projection on Z_I_BOOKING_A02
{
 key travel_id      as TravelID,
 key booking_id     as BookingID,
     booking_date   as BookingDate,
     customer_id    as CustomerId,
     @ObjectModel.text.element: [ 'CarrierName' ]
     carrier_id     as CarrierID,
     _Carrier.Name  as CarrierName,
     connection_id  as ConnectionID,
     flight_date    as FlightDate,
     @Semantics.amount.currencyCode : 'CurrencyCode'
     flight_price   as FlightPrice,
     @Semantics.currencyCode: true
     currency_code  as CurrencyCode,
     booking_status as BookingStatus,
     last_change_at as LastChangeAt,
     /* Associations */
     _Travel : redirected to parent Z_C_TRAVEL_A02,
     _BookingSupplement : redirected to composition child Z_C_BOOKSUPPL_A2,
     _Carrier,
     _Customer
    
}
