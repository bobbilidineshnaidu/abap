@EndUserText.label: 'Booking Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity zc_rap_booking_ui_134
  as projection on zi_rap_booking_UI_134
{
      @Search.defaultSearchElement: true
  key TravelID,
      @Search.defaultSearchElement: true
  key BookingID,
      BookingDate,
      @Consumption.valueHelpDefinition: [{entity:{ name:'/DMO/I_Customer',element : 'CustomerID'}}]
      CustomerID,
      @Consumption.valueHelpDefinition: [{ entity:{ name : '/DMO/I_Carrier', element: 'AirlineID'}}]
      CarrierID,
      @Consumption.valueHelpDefinition: [ { entity: { name:    '/DMO/I_Flight',
                                                 element: 'ConnectionID' },
                                       additionalBinding: [ { localElement: 'FlightDate',
                                                              element:      'FlightDate',
                                                              usage: #RESULT },
                                                            { localElement: 'CarrierID',
                                                                   element: 'AirlineID',
                                                                     usage: #RESULT },
                                                            { localElement: 'FlightPrice',
                                                                   element: 'Price',
                                                                     usage: #RESULT },
                                                            { localElement: 'CurrencyCode',
                                                                   element: 'CurrencyCode',
                                                                     usage: #RESULT } ]
                                       } ]
      ConnectionID,
      FlightDate,
      FlightPrice,
      @Consumption.valueHelpDefinition: [{ entity:{name:'I_Currency',element:'Currency'} }]
      CurrencyCode,
      /* Associations */
      _Carrier,
      _Connection,
      _Customer,
      _Flight,
      _Travel : redirected to parent zc_rap_travel_ui_134
}
