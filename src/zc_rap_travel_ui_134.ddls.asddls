@EndUserText.label: 'Travel projection view'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zc_rap_travel_ui_134
  as projection on zi_rap_travel_UI_134
{
  key TravelID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:{name: '/DMO/I_Agency',element: 'AgencyID' }}]
      AgencyID,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity:{name: '/DMO/I_Customer',element: 'CustomerID' }}]
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity:{name: 'I_Currency',element: 'Currency' }}]
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child zc_rap_booking_ui_134,
      _Currency,
      _Customer
}
