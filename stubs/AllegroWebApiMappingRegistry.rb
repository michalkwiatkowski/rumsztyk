require 'AllegroWebApi.rb'
require 'soap/mapping'

module AllegroWebApiMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAllegroWebApi = "urn:AllegroWebApi"

  EncodedRegistry.register(
    :class => ActionDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ActionDataStruct"),
    :schema_element => [
      ["action_key", ["SOAP::SOAPString", XSD::QName.new(nil, "action-key")]],
      ["action_value", ["SOAP::SOAPString", XSD::QName.new(nil, "action-value")]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AddressInfoStruct"),
    :schema_element => [
      ["address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "address-type")]],
      ["address_user_data", ["AddressUserDataStruct", XSD::QName.new(nil, "address-user-data")]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressUserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AddressUserDataStruct"),
    :schema_element => [
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-full-name")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]]
    ]
  )

  EncodedRegistry.set(
    AddressesInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "AddressInfoStruct") }
  )

  EncodedRegistry.register(
    :class => AdvertInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AdvertInfoStruct"),
    :schema_element => [
      ["item_is_advert", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-is-advert")]],
      ["item_advert_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item-advert-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => AlcoholDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AlcoholDataStruct"),
    :schema_element => [
      ["alcohol_opening_date", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-opening-date")]],
      ["alcohol_expiration_date", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-expiration-date")]],
      ["alcohol_shop_name", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-name")]],
      ["alcohol_shop_address", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-address")]],
      ["alcohol_shop_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-postcode")]],
      ["alcohol_shop_city", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-city")]],
      ["alcohol_shop_commune", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-commune")]],
      ["alcohol_shop_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "alcohol-shop-country-id")]],
      ["alcohol_shop_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "alcohol-shop-state-id")]],
      ["alcohol_permit_number", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-number")]],
      ["alcohol_permit_authority", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-authority")]],
      ["alcohol_permit_info", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => AmountStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AmountStruct"),
    :schema_element => [
      ["amount_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "amount-value")]],
      ["amount_currency_sign", ["SOAP::SOAPString", XSD::QName.new(nil, "amount-currency-sign")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfActionDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ActionDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfAdditionalData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfAttribStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "AttribStruct") }
  )

  EncodedRegistry.set(
    ArrayOfAttribValues,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfAuctionID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfBankAccounts,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfBidList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "BidListStruct2") }
  )

  EncodedRegistry.set(
    ArrayOfBilling,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "BillingDataType") }
  )

  EncodedRegistry.set(
    ArrayOfBlackListResStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "BlackListResStruct") }
  )

  EncodedRegistry.set(
    ArrayOfBlackListStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "BlackListStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCancelBidsID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    ArrayOfCancelRefundDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CancelRefundDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCancelRefundFormResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CancelRefundFormResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCancelRefundWarningResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCancelRefundWarningStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCatInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "InfoCatList") }
  )

  EncodedRegistry.set(
    ArrayOfCatInfoType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CatInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfCategoriesStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CategoriesStruct") }
  )

  EncodedRegistry.set(
    ArrayOfCategoryData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CategoryData") }
  )

  EncodedRegistry.set(
    ArrayOfCats,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CatInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfCountries,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "CountryInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfDealsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "DealsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfExcludedWords,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfFavouritesCategories,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FavouritesCategoriesStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFavouritesSellers,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FavouritesSellersStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFeedbackList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FeedbackList") }
  )

  EncodedRegistry.set(
    ArrayOfFeedbackManyStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FeedbackManyStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFeedbacksResult,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FeedbackResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFieldsId,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    ArrayOfFieldsValue,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FieldsValue") }
  )

  EncodedRegistry.set(
    ArrayOfFinishFailureStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FinishFailureStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFinishItemsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "FinishItemsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfFinishSuccessStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfItemCatList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemCatList") }
  )

  EncodedRegistry.set(
    ArrayOfItemGetImage,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemGetImage") }
  )

  EncodedRegistry.set(
    ArrayOfItemImageList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemImageList") }
  )

  EncodedRegistry.set(
    ArrayOfItemImagesStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemImagesStruct") }
  )

  EncodedRegistry.set(
    ArrayOfItemRemoveWatchStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemRemoveWatchStruct") }
  )

  EncodedRegistry.set(
    ArrayOfItemSurchargeStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemSurchargeStruct") }
  )

  EncodedRegistry.set(
    ArrayOfItemTemplateListStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemTemplateListStruct") }
  )

  EncodedRegistry.set(
    ArrayOfItemsAdded,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfItemsID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfItemsNotAddedStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemsNotAddedStruct") }
  )

  EncodedRegistry.set(
    ArrayOfItemsPostBuyData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemPostBuyDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfLocalIds,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    ArrayOfMyAccountList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "MyAccountStruct2") }
  )

  EncodedRegistry.set(
    ArrayOfMyContactList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "MyContactList") }
  )

  EncodedRegistry.set(
    ArrayOfMyFeedbackList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "MyFeedbackListStruct2") }
  )

  EncodedRegistry.set(
    ArrayOfNewPostBuyFormSellerStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "NewPostBuyFormSellerStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPackageIds,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfPackageInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PackageInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPaymentDetailsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PaymentDetailsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPaymentItemsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PaymentItemsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPaymentMethodStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PaymentMethodStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPaymentSellersStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PaymentSellersStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormForBuyersDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormForBuyersDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormItemStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormItemStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormSellersStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormSellersStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormShipmentTrackingStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormShipmentTrackingStruct") }
  )

  EncodedRegistry.set(
    ArrayOfPostBuyFormSurcharges,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfPostageStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "PostageStruct") }
  )

  EncodedRegistry.set(
    ArrayOfProductImagesList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfProductItemsIds,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfProductParameterValues,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfProductParametersGroupStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ProductParametersGroupStruct") }
  )

  EncodedRegistry.set(
    ArrayOfProductParametersStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ProductParametersStruct") }
  )

  EncodedRegistry.set(
    ArrayOfProductStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ProductStruct") }
  )

  EncodedRegistry.set(
    ArrayOfRefundFormDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "RefundFormDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfRefundFormStatusResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfRefundFormStatusStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusStruct") }
  )

  EncodedRegistry.set(
    ArrayOfRefundReasonStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "RefundReasonStruct") }
  )

  EncodedRegistry.set(
    ArrayOfRelatedItemStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "RelatedItemStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSearchResponse,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SearchResponseType") }
  )

  EncodedRegistry.set(
    ArrayOfSellForms,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellFormType") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingAveragePerMonth,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingAveragePerMonthStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingAverageStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingAverageStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingDetailStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingDetailStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingEstimationStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingEstimationStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingReasonStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingReasonSumStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonSumStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellRatingStatsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellRatingStatsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSellerShipmentDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SellerShipmentDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSendRefundFormResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSendRefundFormStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSendReminderMessageResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSendReminderMessageStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageStruct") }
  )

  EncodedRegistry.set(
    ArrayOfServiceInfoCatStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoCatStruct") }
  )

  EncodedRegistry.set(
    ArrayOfServiceInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfShipmentDataStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ShipmentDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfShipmentIds,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfShipmentPaymentInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ShipmentPaymentInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSiteJournalDealsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SiteJournalDealsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfSitesFlagInfo,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SiteFlagInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfSitesInfo,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SiteInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfSpecialAuction,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SpecialAuctionStruct") }
  )

  EncodedRegistry.set(
    ArrayOfStateInfoStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "StateInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfStructItemInfoList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemInfoStruct") }
  )

  EncodedRegistry.set(
    ArrayOfStructSellAgain,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "StructSellAgain") }
  )

  EncodedRegistry.set(
    ArrayOfStructSellFailed,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "StructSellFailed") }
  )

  EncodedRegistry.set(
    ArrayOfSysStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SysStatusType") }
  )

  EncodedRegistry.set(
    ArrayOfTemplates,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "TemplateInfoType") }
  )

  EncodedRegistry.set(
    ArrayOfTemplatesID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    ArrayOfTransactionsID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfUserBlackListAddResultStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserBlackListAddResultStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserBlackListStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserBlackListStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserIncomingPaymentRefundsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentRefundsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserIncomingPaymentStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserItemList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserItemList") }
  )

  EncodedRegistry.set(
    ArrayOfUserPaymentRefundsStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserPaymentRefundsStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserPaymentStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserPaymentStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUserPayoutStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserPayoutStruct") }
  )

  EncodedRegistry.set(
    ArrayOfUsersID,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "long") }
  )

  EncodedRegistry.set(
    ArrayOfUsersPostBuyData,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "UserPostBuyDataStruct") }
  )

  EncodedRegistry.set(
    ArrayOfWaitFeedbackStruct,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "WaitFeedbackStruct") }
  )

  EncodedRegistry.register(
    :class => AttribStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AttribStruct"),
    :schema_element => [
      ["attrib_name", ["SOAP::SOAPString", XSD::QName.new(nil, "attrib-name")]],
      ["attrib_values", ["ArrayOfAttribValues", XSD::QName.new(nil, "attrib-values")]]
    ]
  )

  EncodedRegistry.set(
    BidList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => BidListStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BidListStruct2"),
    :schema_element => [
      ["bids_array", ["BidList2", XSD::QName.new(nil, "bids-array")]]
    ]
  )

  EncodedRegistry.register(
    :class => BillingDataType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BillingDataType"),
    :schema_element => [
      ["billing_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing-id")]],
      ["billing_type", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-type")]],
      ["billing_fixperc", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-fixperc")]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-name")]],
      ["billing_range_from", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-range-from")]],
      ["billing_range_to", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-range-to")]],
      ["billing_cat", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-cat")]],
      ["billing_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-rate")]],
      ["billing_auction_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing-auction-type")]]
    ]
  )

  EncodedRegistry.register(
    :class => BlackListResStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BlackListResStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => BlackListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BlackListStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "user-login")]],
      ["user_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-rating")]],
      ["user_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country")]]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefundDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefundFormResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundFormResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["cancel_refund_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "cancel-refund-result")]],
      ["cancel_refund_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-refund-err-code")]],
      ["cancel_refund_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-refund-err-msg")]]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefundWarningResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["cancel_warning_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "cancel-warning-result")]],
      ["cancel_warning_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-warning-err-code")]],
      ["cancel_warning_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-warning-err-msg")]]
    ]
  )

  EncodedRegistry.register(
    :class => CancelRefundWarningStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => CatInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CatInfoType"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_parent", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-parent")]],
      ["cat_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-position")]],
      ["cat_is_product_catalogue_enabled", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-is-product-catalogue-enabled")]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoriesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CategoriesStruct"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-id")]],
      ["category_name", ["SOAP::SOAPString", XSD::QName.new(nil, "category-name")]],
      ["category_parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-parent-id")]],
      ["category_items_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-items-count")]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoryData,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CategoryData"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-id")]],
      ["cat_parent", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-parent")]],
      ["cat_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-country")]],
      ["cat_level", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-level")]],
      ["cat_is_leaf", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-is-leaf")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-options")]]
    ]
  )

  EncodedRegistry.register(
    :class => ChangedItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ChangedItemStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_fields", ["ArrayOfFieldsValue", XSD::QName.new(nil, "item-fields")]],
      ["item_surcharge", ["ArrayOfItemSurchargeStruct", XSD::QName.new(nil, "item-surcharge")]]
    ]
  )

  EncodedRegistry.register(
    :class => CompanyExtraDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanyExtraDataStruct"),
    :schema_element => [
      ["company_type", ["SOAP::SOAPString", XSD::QName.new(nil, "company-type")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]],
      ["company_regon", ["SOAP::SOAPString", XSD::QName.new(nil, "company-regon")]],
      ["company_krs", ["SOAP::SOAPString", XSD::QName.new(nil, "company-krs")]],
      ["company_activity_sort", ["SOAP::SOAPString", XSD::QName.new(nil, "company-activity-sort")]]
    ]
  )

  EncodedRegistry.register(
    :class => CompanyInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanyInfoStruct"),
    :schema_element => [
      ["company_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-first-name")]],
      ["company_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-last-name")]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-name")]],
      ["company_address", ["SOAP::SOAPString", XSD::QName.new(nil, "company-address")]],
      ["company_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "company-postcode")]],
      ["company_city", ["SOAP::SOAPString", XSD::QName.new(nil, "company-city")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]]
    ]
  )

  EncodedRegistry.register(
    :class => CompanySecondAddressStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanySecondAddressStruct"),
    :schema_element => [
      ["company_worker_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-worker-first-name")]],
      ["company_worker_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-worker-last-name")]],
      ["company_address", ["SOAP::SOAPString", XSD::QName.new(nil, "company-address")]],
      ["company_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "company-postcode")]],
      ["company_city", ["SOAP::SOAPString", XSD::QName.new(nil, "company-city")]],
      ["company_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "company-country-id")]],
      ["company_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "company-state-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => CountryInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CountryInfoType"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["country_name", ["SOAP::SOAPString", XSD::QName.new(nil, "country-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => CreatedItemTemplateStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CreatedItemTemplateStruct"),
    :schema_element => [
      ["item_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => DealsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DealsStruct"),
    :schema_element => [
      ["deal_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-id")]],
      ["deal_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-date")]],
      ["deal_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-quantity")]],
      ["deal_amount_original", ["SOAP::SOAPFloat", XSD::QName.new(nil, "deal-amount-original")]],
      ["deal_amount_discounted", ["SOAP::SOAPFloat", XSD::QName.new(nil, "deal-amount-discounted")]]
    ]
  )

  EncodedRegistry.register(
    :class => DiscountDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DiscountDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["coupon_id", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => DurationTimeInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DurationTimeInfo"),
    :schema_element => [
      ["duration_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "duration-option")]],
      ["duration_value", ["SOAP::SOAPInt", XSD::QName.new(nil, "duration-value")]]
    ]
  )

  EncodedRegistry.register(
    :class => FavouritesCategoriesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FavouritesCategoriesStruct"),
    :schema_element => [
      ["s_category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-category-id")]],
      ["s_subscription_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-subscription-status")]],
      ["s_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-position")]],
      ["s_buy_now_only", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-buy-now-only")]]
    ]
  )

  EncodedRegistry.register(
    :class => FavouritesSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FavouritesSellersStruct"),
    :schema_element => [
      ["s_fav_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-fav-user-id")]],
      ["s_subscription_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-subscription-status")]],
      ["s_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-position")]],
      ["s_buy_now_only", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-buy-now-only")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackList"),
    :schema_element => [
      ["f_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-id")]],
      ["f_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-item-id")]],
      ["f_from_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-from-id")]],
      ["f_to_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-to-id")]],
      ["f_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-date")]],
      ["f_type", ["SOAP::SOAPString", XSD::QName.new(nil, "f-type")]],
      ["f_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "f-desc")]],
      ["f_correct_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-correct-date")]],
      ["f_correct_text", ["SOAP::SOAPString", XSD::QName.new(nil, "f-correct-text")]],
      ["f_receiver_type", ["SOAP::SOAPString", XSD::QName.new(nil, "f-receiver-type")]],
      ["f_user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-login")]],
      ["f_user_rating", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-rating")]],
      ["f_user_country", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-country")]],
      ["f_user_blocked", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-user-blocked")]],
      ["f_user_sseller", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-user-sseller")]],
      ["f_cancelled", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-cancelled")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackManyStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackManyStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_use_comment_template", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-use-comment-template")]],
      ["fe_to_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-to-user-id")]],
      ["fe_comment", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-comment")]],
      ["fe_comment_type", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-comment-type")]],
      ["fe_op", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-op")]],
      ["fe_rating", ["ArrayOfSellRatingEstimationStruct", XSD::QName.new(nil, "fe-rating")]]
    ]
  )

  EncodedRegistry.register(
    :class => FeedbackResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackResultStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-id")]],
      ["fe_fault_code", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-fault-code")]],
      ["fe_fault_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-fault-desc")]]
    ]
  )

  EncodedRegistry.register(
    :class => FieldsValue,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FieldsValue"),
    :schema_element => [
      ["fid", ["SOAP::SOAPInt", XSD::QName.new(nil, "fid")]],
      ["fvalue_string", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-string")]],
      ["fvalue_int", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-int")]],
      ["fvalue_float", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-float")]],
      ["fvalue_image", ["SOAP::SOAPBase64", XSD::QName.new(nil, "fvalue-image")]],
      ["fvalue_datetime", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-datetime")]],
      ["fvalue_date", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-date")]],
      ["fvalue_range_int", ["RangeIntValueStruct", XSD::QName.new(nil, "fvalue-range-int")]],
      ["fvalue_range_float", ["RangeFloatValueStruct", XSD::QName.new(nil, "fvalue-range-float")]],
      ["fvalue_range_date", ["RangeDateValueStruct", XSD::QName.new(nil, "fvalue-range-date")]]
    ]
  )

  EncodedRegistry.register(
    :class => FilledPostBuyFormsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FilledPostBuyFormsStruct"),
    :schema_element => [
      ["transaction_ids", ["ArrayOfTransactionsID", XSD::QName.new(nil, "transaction-ids")]]
    ]
  )

  EncodedRegistry.register(
    :class => FinishFailureStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FinishFailureStruct"),
    :schema_element => [
      ["finish_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "finish-item-id")]],
      ["finish_error_code", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-error-code")]],
      ["finish_error_message", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-error-message")]]
    ]
  )

  EncodedRegistry.register(
    :class => FinishItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FinishItemsStruct"),
    :schema_element => [
      ["finish_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "finish-item-id")]],
      ["finish_cancel_all_bids", ["SOAP::SOAPInt", XSD::QName.new(nil, "finish-cancel-all-bids")]],
      ["finish_cancel_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-cancel-reason")]]
    ]
  )

  EncodedRegistry.register(
    :class => FulfillmentTimeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FulfillmentTimeStruct"),
    :schema_element => [
      ["fulfillment_time_from", ["SOAP::SOAPInt", XSD::QName.new(nil, "fulfillment-time-from")]],
      ["fulfillment_time_to", ["SOAP::SOAPInt", XSD::QName.new(nil, "fulfillment-time-to")]]
    ]
  )

  EncodedRegistry.register(
    :class => InfoCatList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InfoCatList"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_items_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-items-count")]]
    ]
  )

  EncodedRegistry.register(
    :class => InvoiceDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InvoiceDataStruct"),
    :schema_element => [
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-name")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]]
    ]
  )

  EncodedRegistry.register(
    :class => InvoiceInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InvoiceInfoStruct"),
    :schema_element => [
      ["invoice_address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "invoice-address-type")]],
      ["invoice_address_data", ["AddressUserDataStruct", XSD::QName.new(nil, "invoice-address-data")]],
      ["invoice_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice-nip")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemBilling,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemBilling"),
    :schema_element => [
      ["bi_name", ["SOAP::SOAPString", XSD::QName.new(nil, "bi-name")]],
      ["bi_value", ["SOAP::SOAPString", XSD::QName.new(nil, "bi-value")]]
    ]
  )

  EncodedRegistry.set(
    ItemBillingList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "ItemBilling") }
  )

  EncodedRegistry.register(
    :class => ItemCatList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemCatList"),
    :schema_element => [
      ["cat_level", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-level")]],
      ["cat_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemDescriptionStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemDescriptionStruct"),
    :schema_element => [
      ["description_result", ["SOAP::SOAPString", XSD::QName.new(nil, "description-result")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemDiscountCouponStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemDiscountCouponStruct"),
    :schema_element => [
      ["item_price_original", ["PriceStruct", XSD::QName.new(nil, "item-price-original")]],
      ["item_price_discounted", ["PriceStruct", XSD::QName.new(nil, "item-price-discounted")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemGetImage,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemGetImage"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemImageList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemImageList"),
    :schema_element => [
      ["image_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "image-type")]],
      ["image_url", ["SOAP::SOAPString", XSD::QName.new(nil, "image-url")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemImagesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemImagesStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_images", ["ArrayOfItemImageList", XSD::QName.new(nil, "item-images")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfo"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_seller_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-seller-login")]],
      ["it_seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-seller-rating")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-starting-price")]],
      ["it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_reserve_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-reserve-price")]],
      ["it_location", ["SOAP::SOAPString", XSD::QName.new(nil, "it-location")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_buy_now_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-buy-now-active")]],
      ["it_high_bidder", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-high-bidder")]],
      ["it_high_bidder_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-high-bidder-login")]],
      ["it_description", ["SOAP::SOAPString", XSD::QName.new(nil, "it-description")]],
      ["it_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-options")]],
      ["it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-state")]],
      ["it_is_eco", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-eco")]],
      ["it_hit_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-hit-count")]],
      ["it_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "it-postcode")]],
      ["it_vat_invoice", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-vat-invoice")]],
      ["it_bank_account1", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account1")]],
      ["it_bank_account2", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account2")]],
      ["it_starting_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-starting-quantity")]],
      ["it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-for-guests")]],
      ["it_has_product", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-product")]],
      ["it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-order-fulfillment-time")]],
      ["it_ending_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-ending-info")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemInfoExt,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfoExt"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_seller_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-seller-login")]],
      ["it_seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-seller-rating")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-starting-price")]],
      ["it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_reserve_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-reserve-price")]],
      ["it_location", ["SOAP::SOAPString", XSD::QName.new(nil, "it-location")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_buy_now_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-buy-now-active")]],
      ["it_high_bidder", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-high-bidder")]],
      ["it_high_bidder_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-high-bidder-login")]],
      ["it_description", ["SOAP::SOAPString", XSD::QName.new(nil, "it-description")]],
      ["it_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-options")]],
      ["it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-state")]],
      ["it_wire_transfer", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-wire-transfer")]],
      ["it_post_delivery", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-post-delivery")]],
      ["it_post_info", ["SOAP::SOAPString", XSD::QName.new(nil, "it-post-info")]],
      ["it_quantity_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity-type")]],
      ["it_is_eco", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-eco")]],
      ["it_hit_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-hit-count")]],
      ["it_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "it-postcode")]],
      ["it_vat_invoice", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-vat-invoice")]],
      ["it_bank_account1", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account1")]],
      ["it_bank_account2", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account2")]],
      ["it_starting_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-starting-quantity")]],
      ["it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-for-guests")]],
      ["it_has_product", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-product")]],
      ["it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-order-fulfillment-time")]],
      ["it_ending_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-ending-info")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_is_new_used", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-new-used")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfoStruct"),
    :schema_element => [
      ["item_info", ["ItemInfo", XSD::QName.new(nil, "item-info")]],
      ["item_cats", ["ArrayOfItemCatList", XSD::QName.new(nil, "item-cats")]],
      ["item_images", ["ArrayOfItemImageList", XSD::QName.new(nil, "item-images")]],
      ["item_attribs", ["ArrayOfAttribStruct", XSD::QName.new(nil, "item-attribs")]],
      ["item_postage_options", ["ArrayOfPostageStruct", XSD::QName.new(nil, "item-postage-options")]],
      ["item_payment_options", ["ItemPaymentOptions", XSD::QName.new(nil, "item-payment-options")]],
      ["item_company_info", ["CompanyInfoStruct", XSD::QName.new(nil, "item-company-info")]],
      ["item_product_info", ["ProductStruct", XSD::QName.new(nil, "item-product-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemPaymentOptions,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemPaymentOptions"),
    :schema_element => [
      ["pay_option_transfer", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-transfer")]],
      ["pay_option_on_delivery", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-on-delivery")]],
      ["pay_option_allegro_pay", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-allegro-pay")]],
      ["pay_option_see_desc", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-see-desc")]],
      ["pay_option_payu", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-payu")]],
      ["pay_option_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-escrow")]],
      ["pay_option_qiwi", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-qiwi")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemPostBuyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemPostBuyDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["users_post_buy_data", ["ArrayOfUsersPostBuyData", XSD::QName.new(nil, "users-post-buy-data")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemRemoveWatchStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemRemoveWatchStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemSurchargeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemSurchargeStruct"),
    :schema_element => [
      ["surcharge_description", ["SOAP::SOAPString", XSD::QName.new(nil, "surcharge-description")]],
      ["surcharge_amount", ["AmountStruct", XSD::QName.new(nil, "surcharge-amount")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemTemplateCreateStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplateCreateStruct"),
    :schema_element => [
      ["item_template_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-option")]],
      ["item_template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-template-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemTemplateListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplateListStruct"),
    :schema_element => [
      ["item_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-id")]],
      ["item_template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-template-name")]],
      ["item_template_fields", ["ArrayOfFieldsValue", XSD::QName.new(nil, "item-template-fields")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemTemplatesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplatesStruct"),
    :schema_element => [
      ["item_template_list", ["ArrayOfItemTemplateListStruct", XSD::QName.new(nil, "item-template-list")]],
      ["item_template_incorrect_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-incorrect-ids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemsNotAddedStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemsNotAddedStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_error_code", ["SOAP::SOAPString", XSD::QName.new(nil, "item-error-code")]],
      ["item_error_description", ["SOAP::SOAPString", XSD::QName.new(nil, "item-error-description")]]
    ]
  )

  EncodedRegistry.register(
    :class => MessageToBuyerStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MessageToBuyerStruct"),
    :schema_element => [
      ["message_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "message-seller-id")]],
      ["message_content", ["SOAP::SOAPString", XSD::QName.new(nil, "message-content")]]
    ]
  )

  EncodedRegistry.set(
    MyAccountList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => MyAccountStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyAccountStruct2"),
    :schema_element => [
      ["my_account_array", ["MyAccountList2", XSD::QName.new(nil, "my-account-array")]]
    ]
  )

  EncodedRegistry.register(
    :class => MyContactList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyContactList"),
    :schema_element => [
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact-user-id")]],
      ["contact_nick", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-nick")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-first-name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-last-name")]],
      ["contact_company", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-company")]],
      ["contact_email", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-email")]],
      ["contact_street", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-street")]],
      ["contact_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-postcode")]],
      ["contact_city", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-city")]],
      ["contact_country", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-country")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone")]],
      ["contact_phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone2")]],
      ["contact_rating", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-rating")]],
      ["contact_blocked", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-blocked")]]
    ]
  )

  EncodedRegistry.set(
    MyFeedbackList2,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => MyFeedbackListStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyFeedbackListStruct2"),
    :schema_element => [
      ["feedback_array", ["MyFeedbackList2", XSD::QName.new(nil, "feedback-array")]]
    ]
  )

  EncodedRegistry.register(
    :class => NewPostBuyFormCommonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "NewPostBuyFormCommonStruct"),
    :schema_element => [
      ["payment_method_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-id")]],
      ["shipment_address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-address-type")]],
      ["shipment_address_data", ["AddressUserDataStruct", XSD::QName.new(nil, "shipment-address-data")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone")]],
      ["invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "invoice-option")]],
      ["invoice_info", ["InvoiceInfoStruct", XSD::QName.new(nil, "invoice-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => NewPostBuyFormSellerStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "NewPostBuyFormSellerStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_item_ids", ["ArrayOfItemsID", XSD::QName.new(nil, "seller-item-ids")]],
      ["seller_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-shipment-id")]],
      ["seller_shipment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "seller-shipment-amount")]],
      ["seller_message_to", ["SOAP::SOAPString", XSD::QName.new(nil, "seller-message-to")]]
    ]
  )

  EncodedRegistry.register(
    :class => PackageInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PackageInfoStruct"),
    :schema_element => [
      ["operator_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "operator-id")]],
      ["package_id", ["SOAP::SOAPString", XSD::QName.new(nil, "package-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentDetailsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentDetailsStruct"),
    :schema_element => [
      ["pay_trans_details_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-details-it-id")]],
      ["pay_trans_details_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-details-price")]],
      ["pay_trans_details_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-details-count")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentItemsStruct"),
    :schema_element => [
      ["pay_trans_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-it-id")]],
      ["pay_trans_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-it-name")]],
      ["pay_trans_it_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-it-count")]],
      ["pay_trans_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-it-price")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentMethodStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentMethodStruct"),
    :schema_element => [
      ["payment_method_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-id")]],
      ["payment_method_name", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-name")]],
      ["payment_method_image", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-image")]],
      ["payment_method_usage", ["SOAP::SOAPInt", XSD::QName.new(nil, "payment-method-usage")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentSellersStruct"),
    :schema_element => [
      ["pay_trans_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-seller-id")]],
      ["pay_trans_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-seller-name")]],
      ["pay_trans_items", ["ArrayOfPaymentItemsStruct", XSD::QName.new(nil, "pay-trans-items")]],
      ["pay_trans_seller_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-seller-postage-amount")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentsInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsInfoStruct"),
    :schema_element => [
      ["payments_balance", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payments-balance")]],
      ["payments_bank_account", ["SOAP::SOAPString", XSD::QName.new(nil, "payments-bank-account")]],
      ["payments_user_data", ["PaymentsUserDataStruct", XSD::QName.new(nil, "payments-user-data")]],
      ["payments_payout", ["PaymentsPayoutStruct", XSD::QName.new(nil, "payments-payout")]],
      ["payments_notifications", ["SOAP::SOAPInt", XSD::QName.new(nil, "payments-notifications")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentsPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsPayoutStruct"),
    :schema_element => [
      ["payout_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "payout-type")]],
      ["payout_auto_settings", ["PayoutAutoSettingsStruct", XSD::QName.new(nil, "payout-auto-settings")]]
    ]
  )

  EncodedRegistry.register(
    :class => PaymentsUserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsUserDataStruct"),
    :schema_element => [
      ["user_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-full-name")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country")]],
      ["user_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone")]]
    ]
  )

  EncodedRegistry.register(
    :class => PayoutAutoFrequencyStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PayoutAutoFrequencyStruct"),
    :schema_element => [
      ["frequency_type", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-type")]],
      ["frequency_week_value", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-week-value")]],
      ["frequency_month_value", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-month-value")]]
    ]
  )

  EncodedRegistry.register(
    :class => PayoutAutoSettingsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PayoutAutoSettingsStruct"),
    :schema_element => [
      ["payout_auto_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payout-auto-amount")]],
      ["payout_auto_frequency", ["PayoutAutoFrequencyStruct", XSD::QName.new(nil, "payout-auto-frequency")]]
    ]
  )

  EncodedRegistry.register(
    :class => PharmacyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PharmacyDataStruct"),
    :schema_element => [
      ["pharmacy_opening_date", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-opening-date")]],
      ["pharmacy_expiration_date", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-expiration-date")]],
      ["pharmacy_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-name")]],
      ["pharmacy_pharmacist_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-pharmacist-full-name")]],
      ["pharmacy_address", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-address")]],
      ["pharmacy_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-postcode")]],
      ["pharmacy_city", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-city")]],
      ["pharmacy_commune", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-commune")]],
      ["pharmacy_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pharmacy-country-id")]],
      ["pharmacy_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pharmacy-state-id")]],
      ["pharmacy_permit_number", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-permit-number")]],
      ["pharmacy_permit_info", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-permit-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => PharmacyRecipientDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PharmacyRecipientDataStruct"),
    :schema_element => [
      ["recipient_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-first-name")]],
      ["recipient_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-last-name")]],
      ["recipient_address", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-address")]],
      ["recipient_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-postcode")]],
      ["recipient_city", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-city")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormAddressStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormAddressStruct"),
    :schema_element => [
      ["post_buy_form_adr_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-adr-country")]],
      ["post_buy_form_adr_street", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-street")]],
      ["post_buy_form_adr_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-postcode")]],
      ["post_buy_form_adr_city", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-city")]],
      ["post_buy_form_adr_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-full-name")]],
      ["post_buy_form_adr_company", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-company")]],
      ["post_buy_form_adr_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-phone")]],
      ["post_buy_form_adr_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-nip")]],
      ["post_buy_form_created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-created-date")]],
      ["post_buy_form_adr_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-adr-type")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormDataStruct"),
    :schema_element => [
      ["post_buy_form_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-id")]],
      ["post_buy_form_items", ["ArrayOfPostBuyFormItemStruct", XSD::QName.new(nil, "post-buy-form-items")]],
      ["post_buy_form_buyer_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-buyer-id")]],
      ["post_buy_form_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-amount")]],
      ["post_buy_form_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-postage-amount")]],
      ["post_buy_form_invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-invoice-option")]],
      ["post_buy_form_msg_to_seller", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-msg-to-seller")]],
      ["post_buy_form_invoice_data", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-invoice-data")]],
      ["post_buy_form_shipment_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-shipment-address")]],
      ["post_buy_form_pay_type", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-type")]],
      ["post_buy_form_pay_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-pay-id")]],
      ["post_buy_form_pay_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-status")]],
      ["post_buy_form_date_init", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-init")]],
      ["post_buy_form_date_recv", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-recv")]],
      ["post_buy_form_date_cancel", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-cancel")]],
      ["post_buy_form_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-shipment-id")]],
      ["post_buy_form_gd_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-gd-address")]],
      ["post_buy_form_shipment_tracking", ["ArrayOfPostBuyFormShipmentTrackingStruct", XSD::QName.new(nil, "post-buy-form-shipment-tracking")]],
      ["post_buy_form_surcharges_list", ["ArrayOfPostBuyFormSurcharges", XSD::QName.new(nil, "post-buy-form-surcharges-list")]],
      ["post_buy_form_gd_additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-gd-additional-info")]],
      ["post_buy_form_payment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-payment-amount")]],
      ["post_buy_form_sent_by_seller", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-sent-by-seller")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormForBuyersDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormForBuyersDataStruct"),
    :schema_element => [
      ["post_buy_form_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-id")]],
      ["post_buy_form_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-buyer-id")]],
      ["post_buy_form_sellers", ["ArrayOfPostBuyFormSellersStruct", XSD::QName.new(nil, "post-buy-form-sellers")]],
      ["post_buy_form_total_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-total-amount")]],
      ["post_buy_form_invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-invoice-option")]],
      ["post_buy_form_invoice_data", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-invoice-data")]],
      ["post_buy_form_shipment_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-shipment-address")]],
      ["post_buy_form_pay_type", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-type")]],
      ["post_buy_form_pay_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-pay-id")]],
      ["post_buy_form_pay_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-status")]],
      ["post_buy_form_date_init", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-init")]],
      ["post_buy_form_date_recv", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-recv")]],
      ["post_buy_form_date_cancel", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-cancel")]],
      ["post_buy_form_payment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-payment-amount")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormItemStruct"),
    :schema_element => [
      ["post_buy_form_it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-it-quantity")]],
      ["post_buy_form_it_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-it-amount")]],
      ["post_buy_form_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-it-id")]],
      ["post_buy_form_it_title", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-it-title")]],
      ["post_buy_form_it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-it-country")]],
      ["post_buy_form_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-it-price")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormPackageInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormPackageInfoStruct"),
    :schema_element => [
      ["package_ids_added", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-added")]],
      ["package_ids_not_added_incorrect_operator_id", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-not-added-incorrect-operator-id")]],
      ["package_ids_not_added_incorrect_package_id", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-not-added-incorrect-package-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormSellersStruct"),
    :schema_element => [
      ["post_buy_form_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-seller-id")]],
      ["post_buy_form_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-seller-name")]],
      ["post_buy_form_items", ["ArrayOfPostBuyFormItemStruct", XSD::QName.new(nil, "post-buy-form-items")]],
      ["post_buy_form_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-shipment-id")]],
      ["post_buy_form_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-postage-amount")]],
      ["post_buy_form_msg_to_seller", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-msg-to-seller")]],
      ["post_buy_form_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-amount")]],
      ["post_buy_form_surcharges_list", ["ArrayOfPostBuyFormSurcharges", XSD::QName.new(nil, "post-buy-form-surcharges-list")]],
      ["post_buy_form_shipment_tracking", ["ArrayOfPostBuyFormShipmentTrackingStruct", XSD::QName.new(nil, "post-buy-form-shipment-tracking")]],
      ["post_buy_form_gd_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-gd-address")]],
      ["post_buy_form_gd_additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-gd-additional-info")]],
      ["post_buy_form_sent_by_seller", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-sent-by-seller")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormShipmentTrackingStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormShipmentTrackingStruct"),
    :schema_element => [
      ["post_buy_form_operator_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-operator-id")]],
      ["post_buy_form_package_id", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-package-id")]],
      ["post_buy_form_package_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-package-status")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostBuyFormStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormStruct"),
    :schema_element => [
      ["transaction_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "transaction-id")]],
      ["transaction_package_ids", ["ArrayOfTransactionsID", XSD::QName.new(nil, "transaction-package-ids")]],
      ["transaction_pay_by_link", ["TransactionPayByLinkStruct", XSD::QName.new(nil, "transaction-pay-by-link")]]
    ]
  )

  EncodedRegistry.register(
    :class => PostageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostageStruct"),
    :schema_element => [
      ["postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "postage-amount")]],
      ["postage_amount_add", ["SOAP::SOAPFloat", XSD::QName.new(nil, "postage-amount-add")]],
      ["postage_pack_size", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-pack-size")]],
      ["postage_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-id")]],
      ["postage_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-free-shipping")]],
      ["postage_fulfillment_time", ["FulfillmentTimeStruct", XSD::QName.new(nil, "postage-fulfillment-time")]]
    ]
  )

  EncodedRegistry.register(
    :class => PriceCatInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PriceCatInfo"),
    :schema_element => [
      ["price_min", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-min")]],
      ["price_max", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-max")]]
    ]
  )

  EncodedRegistry.register(
    :class => PriceStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PriceStruct"),
    :schema_element => [
      ["price_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-amount")]],
      ["price_currency", ["SOAP::SOAPString", XSD::QName.new(nil, "price-currency")]]
    ]
  )

  EncodedRegistry.register(
    :class => ProductParametersGroupStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductParametersGroupStruct"),
    :schema_element => [
      ["product_parameters_group_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameters-group-name")]],
      ["product_parameters_list", ["ArrayOfProductParametersStruct", XSD::QName.new(nil, "product-parameters-list")]]
    ]
  )

  EncodedRegistry.register(
    :class => ProductParametersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductParametersStruct"),
    :schema_element => [
      ["product_parameter_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameter-name")]],
      ["product_parameter_values", ["ArrayOfProductParameterValues", XSD::QName.new(nil, "product-parameter-values")]],
      ["product_parameter_description", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameter-description")]]
    ]
  )

  EncodedRegistry.register(
    :class => ProductStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductStruct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "product-id")]],
      ["product_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-name")]],
      ["product_description", ["SOAP::SOAPString", XSD::QName.new(nil, "product-description")]],
      ["product_images_list", ["ArrayOfProductImagesList", XSD::QName.new(nil, "product-images-list")]],
      ["product_parameters_group_list", ["ArrayOfProductParametersGroupStruct", XSD::QName.new(nil, "product-parameters-group-list")]]
    ]
  )

  EncodedRegistry.register(
    :class => RangeDateValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeDateValueStruct"),
    :schema_element => [
      ["fvalue_range_date_min", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-range-date-min")]],
      ["fvalue_range_date_max", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-range-date-max")]]
    ]
  )

  EncodedRegistry.register(
    :class => RangeFloatValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeFloatValueStruct"),
    :schema_element => [
      ["fvalue_range_float_min", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-range-float-min")]],
      ["fvalue_range_float_max", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-range-float-max")]]
    ]
  )

  EncodedRegistry.register(
    :class => RangeIntValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeIntValueStruct"),
    :schema_element => [
      ["fvalue_range_int_min", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-range-int-min")]],
      ["fvalue_range_int_max", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-range-int-max")]]
    ]
  )

  EncodedRegistry.register(
    :class => RefundFormDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormDataStruct"),
    :schema_element => [
      ["ref_form_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-it-id")]],
      ["ref_form_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-it-name")]],
      ["ref_form_it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-it-ending-time")]],
      ["ref_form_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-buyer-id")]],
      ["ref_form_buyer_login", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-buyer-login")]],
      ["ref_form_buyer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-buyer-email")]],
      ["ref_form_buy_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-buy-date")]],
      ["ref_form_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-reason-id")]],
      ["ref_form_it_quantity_sold", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-it-quantity-sold")]],
      ["ref_form_reminder_sent", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-reminder-sent")]]
    ]
  )

  EncodedRegistry.register(
    :class => RefundFormStatusResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["refund_form_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-form-status")]]
    ]
  )

  EncodedRegistry.register(
    :class => RefundFormStatusStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => RefundReasonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundReasonStruct"),
    :schema_element => [
      ["refund_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-reason-id")]],
      ["refund_reason_name", ["SOAP::SOAPString", XSD::QName.new(nil, "refund-reason-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_title", ["SOAP::SOAPString", XSD::QName.new(nil, "item-title")]],
      ["item_thumbnail", ["SOAP::SOAPString", XSD::QName.new(nil, "item-thumbnail")]],
      ["item_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "item-price")]],
      ["item_bought_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-bought-count")]],
      ["item_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "item-amount")]],
      ["item_payment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-payment-type")]],
      ["item_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-seller-id")]],
      ["item_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-seller-name")]],
      ["item_invoice_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-invoice-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedItemsShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemsShipmentDataStruct"),
    :schema_element => [
      ["seller_shipment_data", ["ArrayOfSellerShipmentDataStruct", XSD::QName.new(nil, "seller-shipment-data")]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemsStruct"),
    :schema_element => [
      ["related_items_info", ["ArrayOfRelatedItemStruct", XSD::QName.new(nil, "related-items-info")]],
      ["related_items_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "related-items-amount")]]
    ]
  )

  EncodedRegistry.register(
    :class => RelatedPersonsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedPersonsStruct"),
    :schema_element => [
      ["spouse_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "spouse-first-name")]],
      ["spouse_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "spouse-last-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => RemovedItemTemplatesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RemovedItemTemplatesStruct"),
    :schema_element => [
      ["item_template_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-ids")]],
      ["item_template_incorrect_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-incorrect-ids")]]
    ]
  )

  EncodedRegistry.register(
    :class => RequestPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RequestPayoutStruct"),
    :schema_element => [
      ["payout_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "payout-id")]],
      ["payout_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payout-amount")]],
      ["payout_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "payout-time")]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchOptType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SearchOptType"),
    :schema_element => [
      ["search_string", ["SOAP::SOAPString", XSD::QName.new(nil, "search-string")]],
      ["search_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-options")]],
      ["search_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order")]],
      ["search_order_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order-type")]],
      ["search_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-country")]],
      ["search_category", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-category")]],
      ["search_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-offset")]],
      ["search_city", ["SOAP::SOAPString", XSD::QName.new(nil, "search-city")]],
      ["search_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-state")]],
      ["search_price_from", ["SOAP::SOAPFloat", XSD::QName.new(nil, "search-price-from")]],
      ["search_price_to", ["SOAP::SOAPFloat", XSD::QName.new(nil, "search-price-to")]],
      ["search_limit", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-limit")]],
      ["search_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order-fulfillment-time")]],
      ["search_user", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-user")]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResponseType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SearchResponseType"),
    :schema_element => [
      ["s_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-id")]],
      ["s_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-name")]],
      ["s_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-price")]],
      ["s_it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-starting-price")]],
      ["s_it_is_buy_now", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-buy-now")]],
      ["s_it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-buy-now-price")]],
      ["s_it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-bid-count")]],
      ["s_it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-foto-count")]],
      ["s_it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-starting-time")]],
      ["s_it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-ending-time")]],
      ["s_it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-time-left")]],
      ["s_it_city", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-city")]],
      ["s_it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-state")]],
      ["s_it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-country")]],
      ["s_it_category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-category-id")]],
      ["s_it_featured", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-featured")]],
      ["s_it_thumb_url", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-thumb-url")]],
      ["s_it_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-thumb")]],
      ["s_it_postage", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-postage")]],
      ["s_it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-for-guests")]],
      ["s_it_is_tablica_advert", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-tablica-advert")]],
      ["s_it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-allegro-standard")]],
      ["s_it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-has-free-shipping")]],
      ["s_it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-order-fulfillment-time")]],
      ["s_it_advert_info", ["AdvertInfoStruct", XSD::QName.new(nil, "s-it-advert-info")]],
      ["s_it_seller_info", ["SellerInfoStruct", XSD::QName.new(nil, "s-it-seller-info")]],
      ["s_it_attribs_list", ["ArrayOfAttribStruct", XSD::QName.new(nil, "s-it-attribs-list")]],
      ["s_it_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-fulfillment-time")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellFormFieldsForCategoryStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellFormFieldsForCategoryStruct"),
    :schema_element => [
      ["sell_form_fields_list", ["ArrayOfSellForms", XSD::QName.new(nil, "sell-form-fields-list")]],
      ["sell_form_fields_version_key", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-form-fields-version-key")]],
      ["sell_form_fields_component_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-fields-component-value")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellFormType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellFormType"),
    :schema_element => [
      ["sell_form_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-id")]],
      ["sell_form_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-title")]],
      ["sell_form_cat", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-cat")]],
      ["sell_form_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-type")]],
      ["sell_form_res_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-res-type")]],
      ["sell_form_def_value", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-def-value")]],
      ["sell_form_opt", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-opt")]],
      ["sell_form_pos", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-pos")]],
      ["sell_form_length", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-length")]],
      ["sell_min_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-min-value")]],
      ["sell_max_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-max-value")]],
      ["sell_form_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-desc")]],
      ["sell_form_opts_values", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-opts-values")]],
      ["sell_form_field_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-field-desc")]],
      ["sell_form_param_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-param-id")]],
      ["sell_form_param_values", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-param-values")]],
      ["sell_form_parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-parent-id")]],
      ["sell_form_parent_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-parent-value")]],
      ["sell_form_unit", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-unit")]],
      ["sell_form_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-options")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingAveragePerMonthStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingAveragePerMonthStruct"),
    :schema_element => [
      ["sell_rating_month", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-month")]],
      ["sell_rating_average_values", ["ArrayOfSellRatingStatsStruct", XSD::QName.new(nil, "sell-rating-average-values")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingAverageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingAverageStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_group_average", ["SOAP::SOAPFloat", XSD::QName.new(nil, "sell-rating-group-average")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingDetailStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingDetailStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_reasons_summary", ["ArrayOfSellRatingReasonSumStruct", XSD::QName.new(nil, "sell-rating-reasons-summary")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingEstimationStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingEstimationStruct"),
    :schema_element => [
      ["sell_rating_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-id")]],
      ["sell_rating_group_estimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-estimation")]],
      ["sell_rating_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingInfoStruct"),
    :schema_element => [
      ["sell_rating_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-id")]],
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_reasons", ["ArrayOfSellRatingReasonStruct", XSD::QName.new(nil, "sell-rating-reasons")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingReasonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonStruct"),
    :schema_element => [
      ["sell_rating_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-id")]],
      ["sell_rating_reason_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-reason-title")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingReasonSumStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonSumStruct"),
    :schema_element => [
      ["sell_rating_reason_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-reason-title")]],
      ["sell_rating_reason_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-count")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellRatingStatsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingStatsStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_group_stats", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-stats")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellerInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerInfoStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "seller-name")]],
      ["seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-rating")]],
      ["seller_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellerPaymentInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerPaymentInfoStruct"),
    :schema_element => [
      ["shipment_payment_info_pza", ["ArrayOfShipmentPaymentInfoStruct", XSD::QName.new(nil, "shipment-payment-info-pza")]],
      ["shipment_payment_info_non_pza", ["ArrayOfShipmentPaymentInfoStruct", XSD::QName.new(nil, "shipment-payment-info-non-pza")]]
    ]
  )

  EncodedRegistry.register(
    :class => SellerShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerShipmentDataStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_payment_info", ["SellerPaymentInfoStruct", XSD::QName.new(nil, "seller-payment-info")]]
    ]
  )

  EncodedRegistry.register(
    :class => SendRefundFormResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["send_refund_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "send-refund-result")]],
      ["send_refund_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "send-refund-err-code")]],
      ["send_refund_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "send-refund-err-msg")]]
    ]
  )

  EncodedRegistry.register(
    :class => SendRefundFormStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["refund_reason", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-reason")]],
      ["item_quantity_sold", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-quantity-sold")]]
    ]
  )

  EncodedRegistry.register(
    :class => SendReminderMessageResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["reminder_msg_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "reminder-msg-result")]],
      ["reminder_msg_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder-msg-err-code")]],
      ["reminder_msg_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder-msg-err-msg")]]
    ]
  )

  EncodedRegistry.register(
    :class => SendReminderMessageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["message_body", ["SOAP::SOAPString", XSD::QName.new(nil, "message-body")]],
      ["include_my_data", ["SOAP::SOAPInt", XSD::QName.new(nil, "include-my-data")]],
      ["send_cc_to_me", ["SOAP::SOAPInt", XSD::QName.new(nil, "send-cc-to-me")]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceInfoCatStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoCatStruct"),
    :schema_element => [
      ["an_cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-cat-id")]],
      ["an_cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "an-cat-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => ServiceInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoStruct"),
    :schema_element => [
      ["an_it_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-it-id")]],
      ["an_cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-cat-id")]],
      ["an_it_title", ["SOAP::SOAPString", XSD::QName.new(nil, "an-it-title")]],
      ["an_it_body", ["SOAP::SOAPBase64", XSD::QName.new(nil, "an-it-body")]],
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["an_it_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "an-it-date")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentDataStruct"),
    :schema_element => [
      ["shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-id")]],
      ["shipment_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment-name")]],
      ["shipment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-type")]],
      ["shipment_time", ["ShipmentTimeStruct", XSD::QName.new(nil, "shipment-time")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShipmentPaymentInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentPaymentInfoStruct"),
    :schema_element => [
      ["shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-id")]],
      ["shipment_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment-name")]],
      ["shipment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "shipment-amount")]],
      ["shipment_payment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-payment-type")]],
      ["shipment_item_ids", ["ArrayOfItemsID", XSD::QName.new(nil, "shipment-item-ids")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShipmentTimeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentTimeStruct"),
    :schema_element => [
      ["shipment_time_from", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-time-from")]],
      ["shipment_time_to", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-time-to")]]
    ]
  )

  EncodedRegistry.register(
    :class => ShowUserFeedbacks,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShowUserFeedbacks"),
    :schema_element => [
      ["user_f_last_week", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-last-week")]],
      ["user_f_last_month", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-last-month")]],
      ["user_f_all", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-all")]],
      ["user_f_sold_items", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-sold-items")]],
      ["user_f_buy_items", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-buy-items")]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteFlagInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteFlagInfoType"),
    :schema_element => [
      ["site_name", ["SOAP::SOAPString", XSD::QName.new(nil, "site-name")]],
      ["site_url", ["SOAP::SOAPString", XSD::QName.new(nil, "site-url")]],
      ["site_country_code", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-code")]],
      ["site_code_page", ["SOAP::SOAPString", XSD::QName.new(nil, "site-code-page")]],
      ["site_logo_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-logo-gif")]],
      ["site_flag_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-flag-gif")]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteInfoType"),
    :schema_element => [
      ["site_name", ["SOAP::SOAPString", XSD::QName.new(nil, "site-name")]],
      ["site_url", ["SOAP::SOAPString", XSD::QName.new(nil, "site-url")]],
      ["site_country_code", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-code")]],
      ["site_code_page", ["SOAP::SOAPString", XSD::QName.new(nil, "site-code-page")]],
      ["site_logo_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-logo-gif")]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteJournal,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournal"),
    :schema_element => [
      ["row_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "row-id")]],
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["change_type", ["SOAP::SOAPString", XSD::QName.new(nil, "change-type")]],
      ["change_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "change-date")]],
      ["current_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "current-price")]],
      ["item_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-seller-id")]]
    ]
  )

  EncodedRegistry.set(
    SiteJournalArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAllegroWebApi, "SiteJournal") }
  )

  EncodedRegistry.register(
    :class => SiteJournalDealsInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalDealsInfoStruct"),
    :schema_element => [
      ["deal_events_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-events-count")]],
      ["deal_last_event_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-last-event-time")]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteJournalDealsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalDealsStruct"),
    :schema_element => [
      ["deal_event_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-event-id")]],
      ["deal_event_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-event-type")]],
      ["deal_event_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-event-time")]],
      ["deal_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-id")]],
      ["deal_transaction_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-transaction-id")]],
      ["deal_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-seller-id")]],
      ["deal_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-item-id")]],
      ["deal_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-buyer-id")]],
      ["deal_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-quantity")]]
    ]
  )

  EncodedRegistry.register(
    :class => SiteJournalInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalInfo"),
    :schema_element => [
      ["items_number", ["SOAP::SOAPInt", XSD::QName.new(nil, "items-number")]],
      ["last_item_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "last-item-date")]]
    ]
  )

  EncodedRegistry.register(
    :class => SpecialAuctionStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SpecialAuctionStruct"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-time-left")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_is_listing_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-listing-thumb")]],
      ["it_is_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-escrow")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_send_cost_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-send-cost-price")]],
      ["it_is_bold_title", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-bold-title")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-free-shipping")]],
      ["it_attribs_list", ["ArrayOfAttribStruct", XSD::QName.new(nil, "it-attribs-list")]]
    ]
  )

  EncodedRegistry.register(
    :class => StateInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StateInfoStruct"),
    :schema_element => [
      ["state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "state-id")]],
      ["state_name", ["SOAP::SOAPString", XSD::QName.new(nil, "state-name")]]
    ]
  )

  EncodedRegistry.register(
    :class => StructSellAgain,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StructSellAgain"),
    :schema_element => [
      ["sell_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-item-id")]],
      ["sell_item_info", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-item-info")]],
      ["sell_item_local_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-item-local-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => StructSellFailed,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StructSellFailed"),
    :schema_element => [
      ["sell_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-item-id")]],
      ["sell_fault_code", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-fault-code")]],
      ["sell_fault_string", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-fault-string")]]
    ]
  )

  EncodedRegistry.register(
    :class => SysStatusType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SysStatusType"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["program_version", ["SOAP::SOAPString", XSD::QName.new(nil, "program-version")]],
      ["cats_version", ["SOAP::SOAPString", XSD::QName.new(nil, "cats-version")]],
      ["api_version", ["SOAP::SOAPString", XSD::QName.new(nil, "api-version")]],
      ["attrib_version", ["SOAP::SOAPString", XSD::QName.new(nil, "attrib-version")]],
      ["form_sell_version", ["SOAP::SOAPString", XSD::QName.new(nil, "form-sell-version")]],
      ["site_version", ["SOAP::SOAPString", XSD::QName.new(nil, "site-version")]],
      ["ver_key", ["SOAP::SOAPLong", XSD::QName.new(nil, "ver-key")]]
    ]
  )

  EncodedRegistry.register(
    :class => TemplateInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TemplateInfoType"),
    :schema_element => [
      ["template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "template-id")]],
      ["template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "template-name")]],
      ["template_thumb", ["SOAP::SOAPBase64", XSD::QName.new(nil, "template-thumb")]],
      ["template_desc_images", ["SOAP::SOAPBase64", XSD::QName.new(nil, "template-desc-images")]]
    ]
  )

  EncodedRegistry.register(
    :class => TransactionPayByLinkStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TransactionPayByLinkStruct"),
    :schema_element => [
      ["action_http_method", ["SOAP::SOAPString", XSD::QName.new(nil, "action-http-method")]],
      ["action_url", ["SOAP::SOAPString", XSD::QName.new(nil, "action-url")]],
      ["action_data", ["ArrayOfActionDataStruct", XSD::QName.new(nil, "action-data")]]
    ]
  )

  EncodedRegistry.register(
    :class => TranslatedProductStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TranslatedProductStruct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "product-id")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserBlackListAddResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserBlackListAddResultStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-id")]],
      ["add_to_black_list_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "add-to-black-list-result")]],
      ["add_to_black_list_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "add-to-black-list-err-code")]],
      ["add_to_black_list_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "add-to-black-list-err-msg")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserBlackListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserBlackListStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-id")]],
      ["user_black_list_note", ["SOAP::SOAPString", XSD::QName.new(nil, "user-black-list-note")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserDataStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "user-login")]],
      ["user_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-rating")]],
      ["user_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-first-name")]],
      ["user_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-last-name")]],
      ["user_maiden_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-maiden-name")]],
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country-id")]],
      ["user_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-state-id")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_email", ["SOAP::SOAPString", XSD::QName.new(nil, "user-email")]],
      ["user_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone")]],
      ["user_phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone2")]],
      ["user_ss_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-ss-status")]],
      ["site_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-id")]],
      ["user_junior_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-junior-status")]],
      ["user_birth_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-birth-date")]],
      ["user_has_shop", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-has-shop")]],
      ["user_company_icon", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-company-icon")]],
      ["user_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-is-allegro-standard")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserIncomingPaymentRefundsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentRefundsStruct"),
    :schema_element => [
      ["pay_refund_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-trans-id")]],
      ["pay_refund_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-it-id")]],
      ["pay_refund_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-refund-buyer-id")]],
      ["pay_refund_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-refund-value")]],
      ["pay_refund_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-refund-reason")]],
      ["pay_refund_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-date")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserIncomingPaymentStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-it-id")]],
      ["pay_trans_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-buyer-id")]],
      ["pay_trans_type", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-type")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_recv_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-recv-date")]],
      ["pay_trans_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-price")]],
      ["pay_trans_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-count")]],
      ["pay_trans_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-postage-amount")]],
      ["pay_trans_details", ["ArrayOfPaymentDetailsStruct", XSD::QName.new(nil, "pay-trans-details")]],
      ["pay_trans_incomplete", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-incomplete")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserItemList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserItemList"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-time-left")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_is_listing_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-listing-thumb")]],
      ["it_is_bold_title", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-bold-title")]],
      ["it_is_buy_now", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-buy-now")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_is_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-escrow")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_is_reserved_price", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-reserved-price")]],
      ["it_thumb_url", ["SOAP::SOAPString", XSD::QName.new(nil, "it-thumb-url")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-free-shipping")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserPaymentRefundsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPaymentRefundsStruct"),
    :schema_element => [
      ["pay_refund_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-trans-id")]],
      ["pay_refund_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-it-id")]],
      ["pay_refund_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-refund-seller-id")]],
      ["pay_refund_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-refund-value")]],
      ["pay_refund_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-refund-reason")]],
      ["pay_refund_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-date")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserPaymentStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPaymentStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_sellers", ["ArrayOfPaymentSellersStruct", XSD::QName.new(nil, "pay-trans-sellers")]],
      ["pay_trans_type", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-type")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-price")]],
      ["pay_trans_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-postage-amount")]],
      ["pay_trans_incomplete", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-incomplete")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPayoutStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_recv_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-recv-date")]],
      ["pay_trans_cancel_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-cancel-date")]],
      ["pay_trans_report", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-report")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserPostBuyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPostBuyDataStruct"),
    :schema_element => [
      ["user_data", ["UserDataStruct", XSD::QName.new(nil, "user-data")]],
      ["user_sent_to_data", ["UserSentToDataStruct", XSD::QName.new(nil, "user-sent-to-data")]],
      ["user_bank_accounts", ["ArrayOfBankAccounts", XSD::QName.new(nil, "user-bank-accounts")]],
      ["company_second_address", ["CompanySecondAddressStruct", XSD::QName.new(nil, "company-second-address")]]
    ]
  )

  EncodedRegistry.register(
    :class => UserSentToDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserSentToDataStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-first-name")]],
      ["user_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-last-name")]],
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country-id")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]]
    ]
  )

  EncodedRegistry.register(
    :class => WaitFeedbackStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "WaitFeedbackStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_item_name", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-item-name")]],
      ["fe_to_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-to-user-id")]],
      ["fe_op", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-op")]],
      ["fe_ans_comment_type", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-ans-comment-type")]],
      ["fe_possibility_to_add", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-possibility-to-add")]]
    ]
  )

  EncodedRegistry.register(
    :class => WatchListInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "WatchListInfoStruct"),
    :schema_element => [
      ["items_added", ["ArrayOfItemsAdded", XSD::QName.new(nil, "items-added")]],
      ["items_not_added", ["ArrayOfItemsNotAddedStruct", XSD::QName.new(nil, "items-not-added")]]
    ]
  )

  LiteralRegistry.register(
    :class => ActionDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ActionDataStruct"),
    :schema_element => [
      ["action_key", ["SOAP::SOAPString", XSD::QName.new(nil, "action-key")]],
      ["action_value", ["SOAP::SOAPString", XSD::QName.new(nil, "action-value")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AddressInfoStruct"),
    :schema_element => [
      ["address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "address-type")]],
      ["address_user_data", ["AddressUserDataStruct", XSD::QName.new(nil, "address-user-data")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressUserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AddressUserDataStruct"),
    :schema_element => [
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-full-name")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]]
    ]
  )

  LiteralRegistry.register(
    :class => AdvertInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AdvertInfoStruct"),
    :schema_element => [
      ["item_is_advert", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-is-advert")]],
      ["item_advert_id", ["SOAP::SOAPString", XSD::QName.new(nil, "item-advert-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => AlcoholDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AlcoholDataStruct"),
    :schema_element => [
      ["alcohol_opening_date", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-opening-date")]],
      ["alcohol_expiration_date", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-expiration-date")]],
      ["alcohol_shop_name", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-name")]],
      ["alcohol_shop_address", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-address")]],
      ["alcohol_shop_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-postcode")]],
      ["alcohol_shop_city", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-city")]],
      ["alcohol_shop_commune", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-shop-commune")]],
      ["alcohol_shop_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "alcohol-shop-country-id")]],
      ["alcohol_shop_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "alcohol-shop-state-id")]],
      ["alcohol_permit_number", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-number")]],
      ["alcohol_permit_authority", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-authority")]],
      ["alcohol_permit_info", ["SOAP::SOAPString", XSD::QName.new(nil, "alcohol-permit-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => AmountStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AmountStruct"),
    :schema_element => [
      ["amount_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "amount-value")]],
      ["amount_currency_sign", ["SOAP::SOAPString", XSD::QName.new(nil, "amount-currency-sign")]]
    ]
  )

  LiteralRegistry.register(
    :class => AttribStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "AttribStruct"),
    :schema_element => [
      ["attrib_name", ["SOAP::SOAPString", XSD::QName.new(nil, "attrib-name")]],
      ["attrib_values", ["ArrayOfAttribValues", XSD::QName.new(nil, "attrib-values")]]
    ]
  )

  LiteralRegistry.register(
    :class => BidListStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BidListStruct2"),
    :schema_element => [
      ["bids_array", ["BidList2", XSD::QName.new(nil, "bids-array")]]
    ]
  )

  LiteralRegistry.register(
    :class => BillingDataType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BillingDataType"),
    :schema_element => [
      ["billing_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing-id")]],
      ["billing_type", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-type")]],
      ["billing_fixperc", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-fixperc")]],
      ["billing_name", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-name")]],
      ["billing_range_from", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-range-from")]],
      ["billing_range_to", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-range-to")]],
      ["billing_cat", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-cat")]],
      ["billing_rate", ["SOAP::SOAPString", XSD::QName.new(nil, "billing-rate")]],
      ["billing_auction_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "billing-auction-type")]]
    ]
  )

  LiteralRegistry.register(
    :class => BlackListResStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BlackListResStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => BlackListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "BlackListStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "user-login")]],
      ["user_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-rating")]],
      ["user_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefundDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefundFormResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundFormResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["cancel_refund_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "cancel-refund-result")]],
      ["cancel_refund_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-refund-err-code")]],
      ["cancel_refund_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-refund-err-msg")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefundWarningResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["cancel_warning_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "cancel-warning-result")]],
      ["cancel_warning_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-warning-err-code")]],
      ["cancel_warning_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "cancel-warning-err-msg")]]
    ]
  )

  LiteralRegistry.register(
    :class => CancelRefundWarningStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CancelRefundWarningStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CatInfoType"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_parent", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-parent")]],
      ["cat_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-position")]],
      ["cat_is_product_catalogue_enabled", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-is-product-catalogue-enabled")]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoriesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CategoriesStruct"),
    :schema_element => [
      ["category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-id")]],
      ["category_name", ["SOAP::SOAPString", XSD::QName.new(nil, "category-name")]],
      ["category_parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-parent-id")]],
      ["category_items_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "category-items-count")]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoryData,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CategoryData"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-id")]],
      ["cat_parent", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-parent")]],
      ["cat_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-country")]],
      ["cat_level", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-level")]],
      ["cat_is_leaf", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-is-leaf")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-options")]]
    ]
  )

  LiteralRegistry.register(
    :class => ChangedItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ChangedItemStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_fields", ["ArrayOfFieldsValue", XSD::QName.new(nil, "item-fields")]],
      ["item_surcharge", ["ArrayOfItemSurchargeStruct", XSD::QName.new(nil, "item-surcharge")]]
    ]
  )

  LiteralRegistry.register(
    :class => CompanyExtraDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanyExtraDataStruct"),
    :schema_element => [
      ["company_type", ["SOAP::SOAPString", XSD::QName.new(nil, "company-type")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]],
      ["company_regon", ["SOAP::SOAPString", XSD::QName.new(nil, "company-regon")]],
      ["company_krs", ["SOAP::SOAPString", XSD::QName.new(nil, "company-krs")]],
      ["company_activity_sort", ["SOAP::SOAPString", XSD::QName.new(nil, "company-activity-sort")]]
    ]
  )

  LiteralRegistry.register(
    :class => CompanyInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanyInfoStruct"),
    :schema_element => [
      ["company_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-first-name")]],
      ["company_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-last-name")]],
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-name")]],
      ["company_address", ["SOAP::SOAPString", XSD::QName.new(nil, "company-address")]],
      ["company_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "company-postcode")]],
      ["company_city", ["SOAP::SOAPString", XSD::QName.new(nil, "company-city")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]]
    ]
  )

  LiteralRegistry.register(
    :class => CompanySecondAddressStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CompanySecondAddressStruct"),
    :schema_element => [
      ["company_worker_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-worker-first-name")]],
      ["company_worker_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-worker-last-name")]],
      ["company_address", ["SOAP::SOAPString", XSD::QName.new(nil, "company-address")]],
      ["company_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "company-postcode")]],
      ["company_city", ["SOAP::SOAPString", XSD::QName.new(nil, "company-city")]],
      ["company_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "company-country-id")]],
      ["company_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "company-state-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => CountryInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CountryInfoType"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["country_name", ["SOAP::SOAPString", XSD::QName.new(nil, "country-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreatedItemTemplateStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "CreatedItemTemplateStruct"),
    :schema_element => [
      ["item_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => DealsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DealsStruct"),
    :schema_element => [
      ["deal_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-id")]],
      ["deal_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-date")]],
      ["deal_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-quantity")]],
      ["deal_amount_original", ["SOAP::SOAPFloat", XSD::QName.new(nil, "deal-amount-original")]],
      ["deal_amount_discounted", ["SOAP::SOAPFloat", XSD::QName.new(nil, "deal-amount-discounted")]]
    ]
  )

  LiteralRegistry.register(
    :class => DiscountDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DiscountDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["coupon_id", ["SOAP::SOAPString", XSD::QName.new(nil, "coupon-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => DurationTimeInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "DurationTimeInfo"),
    :schema_element => [
      ["duration_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "duration-option")]],
      ["duration_value", ["SOAP::SOAPInt", XSD::QName.new(nil, "duration-value")]]
    ]
  )

  LiteralRegistry.register(
    :class => FavouritesCategoriesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FavouritesCategoriesStruct"),
    :schema_element => [
      ["s_category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-category-id")]],
      ["s_subscription_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-subscription-status")]],
      ["s_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-position")]],
      ["s_buy_now_only", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-buy-now-only")]]
    ]
  )

  LiteralRegistry.register(
    :class => FavouritesSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FavouritesSellersStruct"),
    :schema_element => [
      ["s_fav_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-fav-user-id")]],
      ["s_subscription_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-subscription-status")]],
      ["s_position", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-position")]],
      ["s_buy_now_only", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-buy-now-only")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackList"),
    :schema_element => [
      ["f_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-id")]],
      ["f_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-item-id")]],
      ["f_from_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-from-id")]],
      ["f_to_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-to-id")]],
      ["f_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-date")]],
      ["f_type", ["SOAP::SOAPString", XSD::QName.new(nil, "f-type")]],
      ["f_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "f-desc")]],
      ["f_correct_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-correct-date")]],
      ["f_correct_text", ["SOAP::SOAPString", XSD::QName.new(nil, "f-correct-text")]],
      ["f_receiver_type", ["SOAP::SOAPString", XSD::QName.new(nil, "f-receiver-type")]],
      ["f_user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-login")]],
      ["f_user_rating", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-rating")]],
      ["f_user_country", ["SOAP::SOAPString", XSD::QName.new(nil, "f-user-country")]],
      ["f_user_blocked", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-user-blocked")]],
      ["f_user_sseller", ["SOAP::SOAPInt", XSD::QName.new(nil, "f-user-sseller")]],
      ["f_cancelled", ["SOAP::SOAPLong", XSD::QName.new(nil, "f-cancelled")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackManyStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackManyStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_use_comment_template", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-use-comment-template")]],
      ["fe_to_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-to-user-id")]],
      ["fe_comment", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-comment")]],
      ["fe_comment_type", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-comment-type")]],
      ["fe_op", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-op")]],
      ["fe_rating", ["ArrayOfSellRatingEstimationStruct", XSD::QName.new(nil, "fe-rating")]]
    ]
  )

  LiteralRegistry.register(
    :class => FeedbackResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FeedbackResultStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-id")]],
      ["fe_fault_code", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-fault-code")]],
      ["fe_fault_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-fault-desc")]]
    ]
  )

  LiteralRegistry.register(
    :class => FieldsValue,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FieldsValue"),
    :schema_element => [
      ["fid", ["SOAP::SOAPInt", XSD::QName.new(nil, "fid")]],
      ["fvalue_string", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-string")]],
      ["fvalue_int", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-int")]],
      ["fvalue_float", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-float")]],
      ["fvalue_image", ["SOAP::SOAPBase64", XSD::QName.new(nil, "fvalue-image")]],
      ["fvalue_datetime", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-datetime")]],
      ["fvalue_date", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-date")]],
      ["fvalue_range_int", ["RangeIntValueStruct", XSD::QName.new(nil, "fvalue-range-int")]],
      ["fvalue_range_float", ["RangeFloatValueStruct", XSD::QName.new(nil, "fvalue-range-float")]],
      ["fvalue_range_date", ["RangeDateValueStruct", XSD::QName.new(nil, "fvalue-range-date")]]
    ]
  )

  LiteralRegistry.register(
    :class => FilledPostBuyFormsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FilledPostBuyFormsStruct"),
    :schema_element => [
      ["transaction_ids", ["ArrayOfTransactionsID", XSD::QName.new(nil, "transaction-ids")]]
    ]
  )

  LiteralRegistry.register(
    :class => FinishFailureStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FinishFailureStruct"),
    :schema_element => [
      ["finish_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "finish-item-id")]],
      ["finish_error_code", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-error-code")]],
      ["finish_error_message", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-error-message")]]
    ]
  )

  LiteralRegistry.register(
    :class => FinishItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FinishItemsStruct"),
    :schema_element => [
      ["finish_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "finish-item-id")]],
      ["finish_cancel_all_bids", ["SOAP::SOAPInt", XSD::QName.new(nil, "finish-cancel-all-bids")]],
      ["finish_cancel_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "finish-cancel-reason")]]
    ]
  )

  LiteralRegistry.register(
    :class => FulfillmentTimeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "FulfillmentTimeStruct"),
    :schema_element => [
      ["fulfillment_time_from", ["SOAP::SOAPInt", XSD::QName.new(nil, "fulfillment-time-from")]],
      ["fulfillment_time_to", ["SOAP::SOAPInt", XSD::QName.new(nil, "fulfillment-time-to")]]
    ]
  )

  LiteralRegistry.register(
    :class => InfoCatList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InfoCatList"),
    :schema_element => [
      ["cat_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]],
      ["cat_items_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-items-count")]]
    ]
  )

  LiteralRegistry.register(
    :class => InvoiceDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InvoiceDataStruct"),
    :schema_element => [
      ["company_name", ["SOAP::SOAPString", XSD::QName.new(nil, "company-name")]],
      ["company_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "company-nip")]]
    ]
  )

  LiteralRegistry.register(
    :class => InvoiceInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "InvoiceInfoStruct"),
    :schema_element => [
      ["invoice_address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "invoice-address-type")]],
      ["invoice_address_data", ["AddressUserDataStruct", XSD::QName.new(nil, "invoice-address-data")]],
      ["invoice_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "invoice-nip")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemBilling,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemBilling"),
    :schema_element => [
      ["bi_name", ["SOAP::SOAPString", XSD::QName.new(nil, "bi-name")]],
      ["bi_value", ["SOAP::SOAPString", XSD::QName.new(nil, "bi-value")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemCatList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemCatList"),
    :schema_element => [
      ["cat_level", ["SOAP::SOAPInt", XSD::QName.new(nil, "cat-level")]],
      ["cat_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "cat-id")]],
      ["cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "cat-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemDescriptionStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemDescriptionStruct"),
    :schema_element => [
      ["description_result", ["SOAP::SOAPString", XSD::QName.new(nil, "description-result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemDiscountCouponStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemDiscountCouponStruct"),
    :schema_element => [
      ["item_price_original", ["PriceStruct", XSD::QName.new(nil, "item-price-original")]],
      ["item_price_discounted", ["PriceStruct", XSD::QName.new(nil, "item-price-discounted")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemGetImage,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemGetImage"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemImageList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemImageList"),
    :schema_element => [
      ["image_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "image-type")]],
      ["image_url", ["SOAP::SOAPString", XSD::QName.new(nil, "image-url")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemImagesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemImagesStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_images", ["ArrayOfItemImageList", XSD::QName.new(nil, "item-images")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfo"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_seller_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-seller-login")]],
      ["it_seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-seller-rating")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-starting-price")]],
      ["it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_reserve_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-reserve-price")]],
      ["it_location", ["SOAP::SOAPString", XSD::QName.new(nil, "it-location")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_buy_now_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-buy-now-active")]],
      ["it_high_bidder", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-high-bidder")]],
      ["it_high_bidder_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-high-bidder-login")]],
      ["it_description", ["SOAP::SOAPString", XSD::QName.new(nil, "it-description")]],
      ["it_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-options")]],
      ["it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-state")]],
      ["it_is_eco", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-eco")]],
      ["it_hit_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-hit-count")]],
      ["it_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "it-postcode")]],
      ["it_vat_invoice", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-vat-invoice")]],
      ["it_bank_account1", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account1")]],
      ["it_bank_account2", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account2")]],
      ["it_starting_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-starting-quantity")]],
      ["it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-for-guests")]],
      ["it_has_product", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-product")]],
      ["it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-order-fulfillment-time")]],
      ["it_ending_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-ending-info")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemInfoExt,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfoExt"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_seller_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-seller-login")]],
      ["it_seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-seller-rating")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-starting-price")]],
      ["it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_reserve_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-reserve-price")]],
      ["it_location", ["SOAP::SOAPString", XSD::QName.new(nil, "it-location")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_buy_now_active", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-buy-now-active")]],
      ["it_high_bidder", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-high-bidder")]],
      ["it_high_bidder_login", ["SOAP::SOAPString", XSD::QName.new(nil, "it-high-bidder-login")]],
      ["it_description", ["SOAP::SOAPString", XSD::QName.new(nil, "it-description")]],
      ["it_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-options")]],
      ["it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-state")]],
      ["it_wire_transfer", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-wire-transfer")]],
      ["it_post_delivery", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-post-delivery")]],
      ["it_post_info", ["SOAP::SOAPString", XSD::QName.new(nil, "it-post-info")]],
      ["it_quantity_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-quantity-type")]],
      ["it_is_eco", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-eco")]],
      ["it_hit_count", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-hit-count")]],
      ["it_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "it-postcode")]],
      ["it_vat_invoice", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-vat-invoice")]],
      ["it_bank_account1", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account1")]],
      ["it_bank_account2", ["SOAP::SOAPString", XSD::QName.new(nil, "it-bank-account2")]],
      ["it_starting_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-starting-quantity")]],
      ["it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-for-guests")]],
      ["it_has_product", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-product")]],
      ["it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-order-fulfillment-time")]],
      ["it_ending_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-ending-info")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_is_new_used", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-new-used")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemInfoStruct"),
    :schema_element => [
      ["item_info", ["ItemInfo", XSD::QName.new(nil, "item-info")]],
      ["item_cats", ["ArrayOfItemCatList", XSD::QName.new(nil, "item-cats")]],
      ["item_images", ["ArrayOfItemImageList", XSD::QName.new(nil, "item-images")]],
      ["item_attribs", ["ArrayOfAttribStruct", XSD::QName.new(nil, "item-attribs")]],
      ["item_postage_options", ["ArrayOfPostageStruct", XSD::QName.new(nil, "item-postage-options")]],
      ["item_payment_options", ["ItemPaymentOptions", XSD::QName.new(nil, "item-payment-options")]],
      ["item_company_info", ["CompanyInfoStruct", XSD::QName.new(nil, "item-company-info")]],
      ["item_product_info", ["ProductStruct", XSD::QName.new(nil, "item-product-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemPaymentOptions,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemPaymentOptions"),
    :schema_element => [
      ["pay_option_transfer", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-transfer")]],
      ["pay_option_on_delivery", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-on-delivery")]],
      ["pay_option_allegro_pay", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-allegro-pay")]],
      ["pay_option_see_desc", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-see-desc")]],
      ["pay_option_payu", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-payu")]],
      ["pay_option_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-escrow")]],
      ["pay_option_qiwi", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-option-qiwi")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemPostBuyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemPostBuyDataStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["users_post_buy_data", ["ArrayOfUsersPostBuyData", XSD::QName.new(nil, "users-post-buy-data")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemRemoveWatchStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemRemoveWatchStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["result", ["SOAP::SOAPInt", XSD::QName.new(nil, "result")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemSurchargeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemSurchargeStruct"),
    :schema_element => [
      ["surcharge_description", ["SOAP::SOAPString", XSD::QName.new(nil, "surcharge-description")]],
      ["surcharge_amount", ["AmountStruct", XSD::QName.new(nil, "surcharge-amount")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemTemplateCreateStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplateCreateStruct"),
    :schema_element => [
      ["item_template_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-option")]],
      ["item_template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-template-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemTemplateListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplateListStruct"),
    :schema_element => [
      ["item_template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-template-id")]],
      ["item_template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-template-name")]],
      ["item_template_fields", ["ArrayOfFieldsValue", XSD::QName.new(nil, "item-template-fields")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemTemplatesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemTemplatesStruct"),
    :schema_element => [
      ["item_template_list", ["ArrayOfItemTemplateListStruct", XSD::QName.new(nil, "item-template-list")]],
      ["item_template_incorrect_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-incorrect-ids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemsNotAddedStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ItemsNotAddedStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_error_code", ["SOAP::SOAPString", XSD::QName.new(nil, "item-error-code")]],
      ["item_error_description", ["SOAP::SOAPString", XSD::QName.new(nil, "item-error-description")]]
    ]
  )

  LiteralRegistry.register(
    :class => MessageToBuyerStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MessageToBuyerStruct"),
    :schema_element => [
      ["message_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "message-seller-id")]],
      ["message_content", ["SOAP::SOAPString", XSD::QName.new(nil, "message-content")]]
    ]
  )

  LiteralRegistry.register(
    :class => MyAccountStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyAccountStruct2"),
    :schema_element => [
      ["my_account_array", ["MyAccountList2", XSD::QName.new(nil, "my-account-array")]]
    ]
  )

  LiteralRegistry.register(
    :class => MyContactList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyContactList"),
    :schema_element => [
      ["contact_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "contact-user-id")]],
      ["contact_nick", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-nick")]],
      ["contact_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-first-name")]],
      ["contact_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-last-name")]],
      ["contact_company", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-company")]],
      ["contact_email", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-email")]],
      ["contact_street", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-street")]],
      ["contact_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-postcode")]],
      ["contact_city", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-city")]],
      ["contact_country", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-country")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone")]],
      ["contact_phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone2")]],
      ["contact_rating", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-rating")]],
      ["contact_blocked", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-blocked")]]
    ]
  )

  LiteralRegistry.register(
    :class => MyFeedbackListStruct2,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "MyFeedbackListStruct2"),
    :schema_element => [
      ["feedback_array", ["MyFeedbackList2", XSD::QName.new(nil, "feedback-array")]]
    ]
  )

  LiteralRegistry.register(
    :class => NewPostBuyFormCommonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "NewPostBuyFormCommonStruct"),
    :schema_element => [
      ["payment_method_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-id")]],
      ["shipment_address_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-address-type")]],
      ["shipment_address_data", ["AddressUserDataStruct", XSD::QName.new(nil, "shipment-address-data")]],
      ["contact_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "contact-phone")]],
      ["invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "invoice-option")]],
      ["invoice_info", ["InvoiceInfoStruct", XSD::QName.new(nil, "invoice-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => NewPostBuyFormSellerStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "NewPostBuyFormSellerStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_item_ids", ["ArrayOfItemsID", XSD::QName.new(nil, "seller-item-ids")]],
      ["seller_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-shipment-id")]],
      ["seller_shipment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "seller-shipment-amount")]],
      ["seller_message_to", ["SOAP::SOAPString", XSD::QName.new(nil, "seller-message-to")]]
    ]
  )

  LiteralRegistry.register(
    :class => PackageInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PackageInfoStruct"),
    :schema_element => [
      ["operator_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "operator-id")]],
      ["package_id", ["SOAP::SOAPString", XSD::QName.new(nil, "package-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentDetailsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentDetailsStruct"),
    :schema_element => [
      ["pay_trans_details_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-details-it-id")]],
      ["pay_trans_details_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-details-price")]],
      ["pay_trans_details_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-details-count")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentItemsStruct"),
    :schema_element => [
      ["pay_trans_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-it-id")]],
      ["pay_trans_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-it-name")]],
      ["pay_trans_it_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-it-count")]],
      ["pay_trans_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-it-price")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentMethodStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentMethodStruct"),
    :schema_element => [
      ["payment_method_id", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-id")]],
      ["payment_method_name", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-name")]],
      ["payment_method_image", ["SOAP::SOAPString", XSD::QName.new(nil, "payment-method-image")]],
      ["payment_method_usage", ["SOAP::SOAPInt", XSD::QName.new(nil, "payment-method-usage")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentSellersStruct"),
    :schema_element => [
      ["pay_trans_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-seller-id")]],
      ["pay_trans_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-seller-name")]],
      ["pay_trans_items", ["ArrayOfPaymentItemsStruct", XSD::QName.new(nil, "pay-trans-items")]],
      ["pay_trans_seller_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-seller-postage-amount")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentsInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsInfoStruct"),
    :schema_element => [
      ["payments_balance", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payments-balance")]],
      ["payments_bank_account", ["SOAP::SOAPString", XSD::QName.new(nil, "payments-bank-account")]],
      ["payments_user_data", ["PaymentsUserDataStruct", XSD::QName.new(nil, "payments-user-data")]],
      ["payments_payout", ["PaymentsPayoutStruct", XSD::QName.new(nil, "payments-payout")]],
      ["payments_notifications", ["SOAP::SOAPInt", XSD::QName.new(nil, "payments-notifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentsPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsPayoutStruct"),
    :schema_element => [
      ["payout_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "payout-type")]],
      ["payout_auto_settings", ["PayoutAutoSettingsStruct", XSD::QName.new(nil, "payout-auto-settings")]]
    ]
  )

  LiteralRegistry.register(
    :class => PaymentsUserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PaymentsUserDataStruct"),
    :schema_element => [
      ["user_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-full-name")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country")]],
      ["user_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone")]]
    ]
  )

  LiteralRegistry.register(
    :class => PayoutAutoFrequencyStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PayoutAutoFrequencyStruct"),
    :schema_element => [
      ["frequency_type", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-type")]],
      ["frequency_week_value", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-week-value")]],
      ["frequency_month_value", ["SOAP::SOAPShort", XSD::QName.new(nil, "frequency-month-value")]]
    ]
  )

  LiteralRegistry.register(
    :class => PayoutAutoSettingsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PayoutAutoSettingsStruct"),
    :schema_element => [
      ["payout_auto_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payout-auto-amount")]],
      ["payout_auto_frequency", ["PayoutAutoFrequencyStruct", XSD::QName.new(nil, "payout-auto-frequency")]]
    ]
  )

  LiteralRegistry.register(
    :class => PharmacyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PharmacyDataStruct"),
    :schema_element => [
      ["pharmacy_opening_date", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-opening-date")]],
      ["pharmacy_expiration_date", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-expiration-date")]],
      ["pharmacy_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-name")]],
      ["pharmacy_pharmacist_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-pharmacist-full-name")]],
      ["pharmacy_address", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-address")]],
      ["pharmacy_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-postcode")]],
      ["pharmacy_city", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-city")]],
      ["pharmacy_commune", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-commune")]],
      ["pharmacy_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pharmacy-country-id")]],
      ["pharmacy_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pharmacy-state-id")]],
      ["pharmacy_permit_number", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-permit-number")]],
      ["pharmacy_permit_info", ["SOAP::SOAPString", XSD::QName.new(nil, "pharmacy-permit-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => PharmacyRecipientDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PharmacyRecipientDataStruct"),
    :schema_element => [
      ["recipient_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-first-name")]],
      ["recipient_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-last-name")]],
      ["recipient_address", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-address")]],
      ["recipient_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-postcode")]],
      ["recipient_city", ["SOAP::SOAPString", XSD::QName.new(nil, "recipient-city")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormAddressStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormAddressStruct"),
    :schema_element => [
      ["post_buy_form_adr_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-adr-country")]],
      ["post_buy_form_adr_street", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-street")]],
      ["post_buy_form_adr_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-postcode")]],
      ["post_buy_form_adr_city", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-city")]],
      ["post_buy_form_adr_full_name", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-full-name")]],
      ["post_buy_form_adr_company", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-company")]],
      ["post_buy_form_adr_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-phone")]],
      ["post_buy_form_adr_nip", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-adr-nip")]],
      ["post_buy_form_created_date", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-created-date")]],
      ["post_buy_form_adr_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-adr-type")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormDataStruct"),
    :schema_element => [
      ["post_buy_form_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-id")]],
      ["post_buy_form_items", ["ArrayOfPostBuyFormItemStruct", XSD::QName.new(nil, "post-buy-form-items")]],
      ["post_buy_form_buyer_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-buyer-id")]],
      ["post_buy_form_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-amount")]],
      ["post_buy_form_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-postage-amount")]],
      ["post_buy_form_invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-invoice-option")]],
      ["post_buy_form_msg_to_seller", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-msg-to-seller")]],
      ["post_buy_form_invoice_data", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-invoice-data")]],
      ["post_buy_form_shipment_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-shipment-address")]],
      ["post_buy_form_pay_type", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-type")]],
      ["post_buy_form_pay_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-pay-id")]],
      ["post_buy_form_pay_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-status")]],
      ["post_buy_form_date_init", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-init")]],
      ["post_buy_form_date_recv", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-recv")]],
      ["post_buy_form_date_cancel", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-cancel")]],
      ["post_buy_form_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-shipment-id")]],
      ["post_buy_form_gd_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-gd-address")]],
      ["post_buy_form_shipment_tracking", ["ArrayOfPostBuyFormShipmentTrackingStruct", XSD::QName.new(nil, "post-buy-form-shipment-tracking")]],
      ["post_buy_form_surcharges_list", ["ArrayOfPostBuyFormSurcharges", XSD::QName.new(nil, "post-buy-form-surcharges-list")]],
      ["post_buy_form_gd_additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-gd-additional-info")]],
      ["post_buy_form_payment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-payment-amount")]],
      ["post_buy_form_sent_by_seller", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-sent-by-seller")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormForBuyersDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormForBuyersDataStruct"),
    :schema_element => [
      ["post_buy_form_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-id")]],
      ["post_buy_form_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-buyer-id")]],
      ["post_buy_form_sellers", ["ArrayOfPostBuyFormSellersStruct", XSD::QName.new(nil, "post-buy-form-sellers")]],
      ["post_buy_form_total_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-total-amount")]],
      ["post_buy_form_invoice_option", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-invoice-option")]],
      ["post_buy_form_invoice_data", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-invoice-data")]],
      ["post_buy_form_shipment_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-shipment-address")]],
      ["post_buy_form_pay_type", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-type")]],
      ["post_buy_form_pay_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-pay-id")]],
      ["post_buy_form_pay_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-pay-status")]],
      ["post_buy_form_date_init", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-init")]],
      ["post_buy_form_date_recv", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-recv")]],
      ["post_buy_form_date_cancel", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-date-cancel")]],
      ["post_buy_form_payment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-payment-amount")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormItemStruct"),
    :schema_element => [
      ["post_buy_form_it_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-it-quantity")]],
      ["post_buy_form_it_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-it-amount")]],
      ["post_buy_form_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "post-buy-form-it-id")]],
      ["post_buy_form_it_title", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-it-title")]],
      ["post_buy_form_it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-it-country")]],
      ["post_buy_form_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-it-price")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormPackageInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormPackageInfoStruct"),
    :schema_element => [
      ["package_ids_added", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-added")]],
      ["package_ids_not_added_incorrect_operator_id", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-not-added-incorrect-operator-id")]],
      ["package_ids_not_added_incorrect_package_id", ["ArrayOfPackageIds", XSD::QName.new(nil, "package-ids-not-added-incorrect-package-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormSellersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormSellersStruct"),
    :schema_element => [
      ["post_buy_form_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-seller-id")]],
      ["post_buy_form_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-seller-name")]],
      ["post_buy_form_items", ["ArrayOfPostBuyFormItemStruct", XSD::QName.new(nil, "post-buy-form-items")]],
      ["post_buy_form_shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-shipment-id")]],
      ["post_buy_form_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-postage-amount")]],
      ["post_buy_form_msg_to_seller", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-msg-to-seller")]],
      ["post_buy_form_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "post-buy-form-amount")]],
      ["post_buy_form_surcharges_list", ["ArrayOfPostBuyFormSurcharges", XSD::QName.new(nil, "post-buy-form-surcharges-list")]],
      ["post_buy_form_shipment_tracking", ["ArrayOfPostBuyFormShipmentTrackingStruct", XSD::QName.new(nil, "post-buy-form-shipment-tracking")]],
      ["post_buy_form_gd_address", ["PostBuyFormAddressStruct", XSD::QName.new(nil, "post-buy-form-gd-address")]],
      ["post_buy_form_gd_additional_info", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-gd-additional-info")]],
      ["post_buy_form_sent_by_seller", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-sent-by-seller")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormShipmentTrackingStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormShipmentTrackingStruct"),
    :schema_element => [
      ["post_buy_form_operator_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "post-buy-form-operator-id")]],
      ["post_buy_form_package_id", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-package-id")]],
      ["post_buy_form_package_status", ["SOAP::SOAPString", XSD::QName.new(nil, "post-buy-form-package-status")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostBuyFormStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostBuyFormStruct"),
    :schema_element => [
      ["transaction_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "transaction-id")]],
      ["transaction_package_ids", ["ArrayOfTransactionsID", XSD::QName.new(nil, "transaction-package-ids")]],
      ["transaction_pay_by_link", ["TransactionPayByLinkStruct", XSD::QName.new(nil, "transaction-pay-by-link")]]
    ]
  )

  LiteralRegistry.register(
    :class => PostageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PostageStruct"),
    :schema_element => [
      ["postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "postage-amount")]],
      ["postage_amount_add", ["SOAP::SOAPFloat", XSD::QName.new(nil, "postage-amount-add")]],
      ["postage_pack_size", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-pack-size")]],
      ["postage_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-id")]],
      ["postage_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "postage-free-shipping")]],
      ["postage_fulfillment_time", ["FulfillmentTimeStruct", XSD::QName.new(nil, "postage-fulfillment-time")]]
    ]
  )

  LiteralRegistry.register(
    :class => PriceCatInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PriceCatInfo"),
    :schema_element => [
      ["price_min", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-min")]],
      ["price_max", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-max")]]
    ]
  )

  LiteralRegistry.register(
    :class => PriceStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "PriceStruct"),
    :schema_element => [
      ["price_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "price-amount")]],
      ["price_currency", ["SOAP::SOAPString", XSD::QName.new(nil, "price-currency")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductParametersGroupStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductParametersGroupStruct"),
    :schema_element => [
      ["product_parameters_group_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameters-group-name")]],
      ["product_parameters_list", ["ArrayOfProductParametersStruct", XSD::QName.new(nil, "product-parameters-list")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductParametersStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductParametersStruct"),
    :schema_element => [
      ["product_parameter_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameter-name")]],
      ["product_parameter_values", ["ArrayOfProductParameterValues", XSD::QName.new(nil, "product-parameter-values")]],
      ["product_parameter_description", ["SOAP::SOAPString", XSD::QName.new(nil, "product-parameter-description")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProductStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ProductStruct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "product-id")]],
      ["product_name", ["SOAP::SOAPString", XSD::QName.new(nil, "product-name")]],
      ["product_description", ["SOAP::SOAPString", XSD::QName.new(nil, "product-description")]],
      ["product_images_list", ["ArrayOfProductImagesList", XSD::QName.new(nil, "product-images-list")]],
      ["product_parameters_group_list", ["ArrayOfProductParametersGroupStruct", XSD::QName.new(nil, "product-parameters-group-list")]]
    ]
  )

  LiteralRegistry.register(
    :class => RangeDateValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeDateValueStruct"),
    :schema_element => [
      ["fvalue_range_date_min", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-range-date-min")]],
      ["fvalue_range_date_max", ["SOAP::SOAPString", XSD::QName.new(nil, "fvalue-range-date-max")]]
    ]
  )

  LiteralRegistry.register(
    :class => RangeFloatValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeFloatValueStruct"),
    :schema_element => [
      ["fvalue_range_float_min", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-range-float-min")]],
      ["fvalue_range_float_max", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fvalue-range-float-max")]]
    ]
  )

  LiteralRegistry.register(
    :class => RangeIntValueStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RangeIntValueStruct"),
    :schema_element => [
      ["fvalue_range_int_min", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-range-int-min")]],
      ["fvalue_range_int_max", ["SOAP::SOAPInt", XSD::QName.new(nil, "fvalue-range-int-max")]]
    ]
  )

  LiteralRegistry.register(
    :class => RefundFormDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormDataStruct"),
    :schema_element => [
      ["ref_form_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-it-id")]],
      ["ref_form_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-it-name")]],
      ["ref_form_it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-it-ending-time")]],
      ["ref_form_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-buyer-id")]],
      ["ref_form_buyer_login", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-buyer-login")]],
      ["ref_form_buyer_email", ["SOAP::SOAPString", XSD::QName.new(nil, "ref-form-buyer-email")]],
      ["ref_form_buy_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "ref-form-buy-date")]],
      ["ref_form_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-reason-id")]],
      ["ref_form_it_quantity_sold", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-it-quantity-sold")]],
      ["ref_form_reminder_sent", ["SOAP::SOAPInt", XSD::QName.new(nil, "ref-form-reminder-sent")]]
    ]
  )

  LiteralRegistry.register(
    :class => RefundFormStatusResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["refund_form_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-form-status")]]
    ]
  )

  LiteralRegistry.register(
    :class => RefundFormStatusStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundFormStatusStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => RefundReasonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RefundReasonStruct"),
    :schema_element => [
      ["refund_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-reason-id")]],
      ["refund_reason_name", ["SOAP::SOAPString", XSD::QName.new(nil, "refund-reason-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedItemStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["item_title", ["SOAP::SOAPString", XSD::QName.new(nil, "item-title")]],
      ["item_thumbnail", ["SOAP::SOAPString", XSD::QName.new(nil, "item-thumbnail")]],
      ["item_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "item-price")]],
      ["item_bought_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-bought-count")]],
      ["item_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "item-amount")]],
      ["item_payment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-payment-type")]],
      ["item_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-seller-id")]],
      ["item_seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "item-seller-name")]],
      ["item_invoice_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-invoice-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedItemsShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemsShipmentDataStruct"),
    :schema_element => [
      ["seller_shipment_data", ["ArrayOfSellerShipmentDataStruct", XSD::QName.new(nil, "seller-shipment-data")]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedItemsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedItemsStruct"),
    :schema_element => [
      ["related_items_info", ["ArrayOfRelatedItemStruct", XSD::QName.new(nil, "related-items-info")]],
      ["related_items_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "related-items-amount")]]
    ]
  )

  LiteralRegistry.register(
    :class => RelatedPersonsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RelatedPersonsStruct"),
    :schema_element => [
      ["spouse_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "spouse-first-name")]],
      ["spouse_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "spouse-last-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => RemovedItemTemplatesStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RemovedItemTemplatesStruct"),
    :schema_element => [
      ["item_template_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-ids")]],
      ["item_template_incorrect_ids", ["ArrayOfTemplatesID", XSD::QName.new(nil, "item-template-incorrect-ids")]]
    ]
  )

  LiteralRegistry.register(
    :class => RequestPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "RequestPayoutStruct"),
    :schema_element => [
      ["payout_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "payout-id")]],
      ["payout_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "payout-amount")]],
      ["payout_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "payout-time")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchOptType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SearchOptType"),
    :schema_element => [
      ["search_string", ["SOAP::SOAPString", XSD::QName.new(nil, "search-string")]],
      ["search_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-options")]],
      ["search_order", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order")]],
      ["search_order_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order-type")]],
      ["search_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-country")]],
      ["search_category", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-category")]],
      ["search_offset", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-offset")]],
      ["search_city", ["SOAP::SOAPString", XSD::QName.new(nil, "search-city")]],
      ["search_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-state")]],
      ["search_price_from", ["SOAP::SOAPFloat", XSD::QName.new(nil, "search-price-from")]],
      ["search_price_to", ["SOAP::SOAPFloat", XSD::QName.new(nil, "search-price-to")]],
      ["search_limit", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-limit")]],
      ["search_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-order-fulfillment-time")]],
      ["search_user", ["SOAP::SOAPInt", XSD::QName.new(nil, "search-user")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResponseType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SearchResponseType"),
    :schema_element => [
      ["s_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-id")]],
      ["s_it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-name")]],
      ["s_it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-price")]],
      ["s_it_starting_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-starting-price")]],
      ["s_it_is_buy_now", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-buy-now")]],
      ["s_it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-buy-now-price")]],
      ["s_it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-bid-count")]],
      ["s_it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-foto-count")]],
      ["s_it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-starting-time")]],
      ["s_it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-ending-time")]],
      ["s_it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "s-it-time-left")]],
      ["s_it_city", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-city")]],
      ["s_it_state", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-state")]],
      ["s_it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-country")]],
      ["s_it_category_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-category-id")]],
      ["s_it_featured", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-featured")]],
      ["s_it_thumb_url", ["SOAP::SOAPString", XSD::QName.new(nil, "s-it-thumb-url")]],
      ["s_it_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-thumb")]],
      ["s_it_postage", ["SOAP::SOAPFloat", XSD::QName.new(nil, "s-it-postage")]],
      ["s_it_is_for_guests", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-for-guests")]],
      ["s_it_is_tablica_advert", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-tablica-advert")]],
      ["s_it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-is-allegro-standard")]],
      ["s_it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-has-free-shipping")]],
      ["s_it_order_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-order-fulfillment-time")]],
      ["s_it_advert_info", ["AdvertInfoStruct", XSD::QName.new(nil, "s-it-advert-info")]],
      ["s_it_seller_info", ["SellerInfoStruct", XSD::QName.new(nil, "s-it-seller-info")]],
      ["s_it_attribs_list", ["ArrayOfAttribStruct", XSD::QName.new(nil, "s-it-attribs-list")]],
      ["s_it_fulfillment_time", ["SOAP::SOAPInt", XSD::QName.new(nil, "s-it-fulfillment-time")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellFormFieldsForCategoryStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellFormFieldsForCategoryStruct"),
    :schema_element => [
      ["sell_form_fields_list", ["ArrayOfSellForms", XSD::QName.new(nil, "sell-form-fields-list")]],
      ["sell_form_fields_version_key", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-form-fields-version-key")]],
      ["sell_form_fields_component_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-fields-component-value")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellFormType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellFormType"),
    :schema_element => [
      ["sell_form_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-id")]],
      ["sell_form_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-title")]],
      ["sell_form_cat", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-cat")]],
      ["sell_form_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-type")]],
      ["sell_form_res_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-res-type")]],
      ["sell_form_def_value", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-def-value")]],
      ["sell_form_opt", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-opt")]],
      ["sell_form_pos", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-pos")]],
      ["sell_form_length", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-length")]],
      ["sell_min_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-min-value")]],
      ["sell_max_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-max-value")]],
      ["sell_form_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-desc")]],
      ["sell_form_opts_values", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-opts-values")]],
      ["sell_form_field_desc", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-field-desc")]],
      ["sell_form_param_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-param-id")]],
      ["sell_form_param_values", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-param-values")]],
      ["sell_form_parent_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-parent-id")]],
      ["sell_form_parent_value", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-parent-value")]],
      ["sell_form_unit", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-form-unit")]],
      ["sell_form_options", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-form-options")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingAveragePerMonthStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingAveragePerMonthStruct"),
    :schema_element => [
      ["sell_rating_month", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-month")]],
      ["sell_rating_average_values", ["ArrayOfSellRatingStatsStruct", XSD::QName.new(nil, "sell-rating-average-values")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingAverageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingAverageStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_group_average", ["SOAP::SOAPFloat", XSD::QName.new(nil, "sell-rating-group-average")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingDetailStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingDetailStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_reasons_summary", ["ArrayOfSellRatingReasonSumStruct", XSD::QName.new(nil, "sell-rating-reasons-summary")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingEstimationStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingEstimationStruct"),
    :schema_element => [
      ["sell_rating_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-id")]],
      ["sell_rating_group_estimation", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-estimation")]],
      ["sell_rating_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingInfoStruct"),
    :schema_element => [
      ["sell_rating_group_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-group-id")]],
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_reasons", ["ArrayOfSellRatingReasonStruct", XSD::QName.new(nil, "sell-rating-reasons")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingReasonStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonStruct"),
    :schema_element => [
      ["sell_rating_reason_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-id")]],
      ["sell_rating_reason_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-reason-title")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingReasonSumStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingReasonSumStruct"),
    :schema_element => [
      ["sell_rating_reason_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-reason-title")]],
      ["sell_rating_reason_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-rating-reason-count")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellRatingStatsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellRatingStatsStruct"),
    :schema_element => [
      ["sell_rating_group_title", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-title")]],
      ["sell_rating_group_stats", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-rating-group-stats")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellerInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerInfoStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_name", ["SOAP::SOAPString", XSD::QName.new(nil, "seller-name")]],
      ["seller_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-rating")]],
      ["seller_info", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellerPaymentInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerPaymentInfoStruct"),
    :schema_element => [
      ["shipment_payment_info_pza", ["ArrayOfShipmentPaymentInfoStruct", XSD::QName.new(nil, "shipment-payment-info-pza")]],
      ["shipment_payment_info_non_pza", ["ArrayOfShipmentPaymentInfoStruct", XSD::QName.new(nil, "shipment-payment-info-non-pza")]]
    ]
  )

  LiteralRegistry.register(
    :class => SellerShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SellerShipmentDataStruct"),
    :schema_element => [
      ["seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "seller-id")]],
      ["seller_payment_info", ["SellerPaymentInfoStruct", XSD::QName.new(nil, "seller-payment-info")]]
    ]
  )

  LiteralRegistry.register(
    :class => SendRefundFormResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["send_refund_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "send-refund-result")]],
      ["send_refund_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "send-refund-err-code")]],
      ["send_refund_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "send-refund-err-msg")]]
    ]
  )

  LiteralRegistry.register(
    :class => SendRefundFormStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendRefundFormStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["refund_reason", ["SOAP::SOAPInt", XSD::QName.new(nil, "refund-reason")]],
      ["item_quantity_sold", ["SOAP::SOAPInt", XSD::QName.new(nil, "item-quantity-sold")]]
    ]
  )

  LiteralRegistry.register(
    :class => SendReminderMessageResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageResultStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["reminder_msg_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "reminder-msg-result")]],
      ["reminder_msg_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder-msg-err-code")]],
      ["reminder_msg_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "reminder-msg-err-msg")]]
    ]
  )

  LiteralRegistry.register(
    :class => SendReminderMessageStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SendReminderMessageStruct"),
    :schema_element => [
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "buyer-id")]],
      ["message_body", ["SOAP::SOAPString", XSD::QName.new(nil, "message-body")]],
      ["include_my_data", ["SOAP::SOAPInt", XSD::QName.new(nil, "include-my-data")]],
      ["send_cc_to_me", ["SOAP::SOAPInt", XSD::QName.new(nil, "send-cc-to-me")]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceInfoCatStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoCatStruct"),
    :schema_element => [
      ["an_cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-cat-id")]],
      ["an_cat_name", ["SOAP::SOAPString", XSD::QName.new(nil, "an-cat-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => ServiceInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ServiceInfoStruct"),
    :schema_element => [
      ["an_it_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-it-id")]],
      ["an_cat_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "an-cat-id")]],
      ["an_it_title", ["SOAP::SOAPString", XSD::QName.new(nil, "an-it-title")]],
      ["an_it_body", ["SOAP::SOAPBase64", XSD::QName.new(nil, "an-it-body")]],
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["an_it_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "an-it-date")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShipmentDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentDataStruct"),
    :schema_element => [
      ["shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-id")]],
      ["shipment_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment-name")]],
      ["shipment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-type")]],
      ["shipment_time", ["ShipmentTimeStruct", XSD::QName.new(nil, "shipment-time")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShipmentPaymentInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentPaymentInfoStruct"),
    :schema_element => [
      ["shipment_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-id")]],
      ["shipment_name", ["SOAP::SOAPString", XSD::QName.new(nil, "shipment-name")]],
      ["shipment_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "shipment-amount")]],
      ["shipment_payment_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-payment-type")]],
      ["shipment_item_ids", ["ArrayOfItemsID", XSD::QName.new(nil, "shipment-item-ids")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShipmentTimeStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShipmentTimeStruct"),
    :schema_element => [
      ["shipment_time_from", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-time-from")]],
      ["shipment_time_to", ["SOAP::SOAPInt", XSD::QName.new(nil, "shipment-time-to")]]
    ]
  )

  LiteralRegistry.register(
    :class => ShowUserFeedbacks,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "ShowUserFeedbacks"),
    :schema_element => [
      ["user_f_last_week", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-last-week")]],
      ["user_f_last_month", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-last-month")]],
      ["user_f_all", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-all")]],
      ["user_f_sold_items", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-sold-items")]],
      ["user_f_buy_items", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-f-buy-items")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteFlagInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteFlagInfoType"),
    :schema_element => [
      ["site_name", ["SOAP::SOAPString", XSD::QName.new(nil, "site-name")]],
      ["site_url", ["SOAP::SOAPString", XSD::QName.new(nil, "site-url")]],
      ["site_country_code", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-code")]],
      ["site_code_page", ["SOAP::SOAPString", XSD::QName.new(nil, "site-code-page")]],
      ["site_logo_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-logo-gif")]],
      ["site_flag_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-flag-gif")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteInfoType"),
    :schema_element => [
      ["site_name", ["SOAP::SOAPString", XSD::QName.new(nil, "site-name")]],
      ["site_url", ["SOAP::SOAPString", XSD::QName.new(nil, "site-url")]],
      ["site_country_code", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-code")]],
      ["site_code_page", ["SOAP::SOAPString", XSD::QName.new(nil, "site-code-page")]],
      ["site_logo_gif", ["SOAP::SOAPBase64", XSD::QName.new(nil, "site-logo-gif")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteJournal,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournal"),
    :schema_element => [
      ["row_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "row-id")]],
      ["item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-id")]],
      ["change_type", ["SOAP::SOAPString", XSD::QName.new(nil, "change-type")]],
      ["change_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "change-date")]],
      ["current_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "current-price")]],
      ["item_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "item-seller-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteJournalDealsInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalDealsInfoStruct"),
    :schema_element => [
      ["deal_events_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-events-count")]],
      ["deal_last_event_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-last-event-time")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteJournalDealsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalDealsStruct"),
    :schema_element => [
      ["deal_event_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-event-id")]],
      ["deal_event_type", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-event-type")]],
      ["deal_event_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-event-time")]],
      ["deal_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-id")]],
      ["deal_transaction_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-transaction-id")]],
      ["deal_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-seller-id")]],
      ["deal_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "deal-item-id")]],
      ["deal_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-buyer-id")]],
      ["deal_quantity", ["SOAP::SOAPInt", XSD::QName.new(nil, "deal-quantity")]]
    ]
  )

  LiteralRegistry.register(
    :class => SiteJournalInfo,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SiteJournalInfo"),
    :schema_element => [
      ["items_number", ["SOAP::SOAPInt", XSD::QName.new(nil, "items-number")]],
      ["last_item_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "last-item-date")]]
    ]
  )

  LiteralRegistry.register(
    :class => SpecialAuctionStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SpecialAuctionStruct"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-time-left")]],
      ["it_ending_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-ending-time")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_is_listing_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-listing-thumb")]],
      ["it_is_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-escrow")]],
      ["it_seller_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-seller-id")]],
      ["it_send_cost_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-send-cost-price")]],
      ["it_is_bold_title", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-bold-title")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-free-shipping")]],
      ["it_attribs_list", ["ArrayOfAttribStruct", XSD::QName.new(nil, "it-attribs-list")]]
    ]
  )

  LiteralRegistry.register(
    :class => StateInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StateInfoStruct"),
    :schema_element => [
      ["state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "state-id")]],
      ["state_name", ["SOAP::SOAPString", XSD::QName.new(nil, "state-name")]]
    ]
  )

  LiteralRegistry.register(
    :class => StructSellAgain,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StructSellAgain"),
    :schema_element => [
      ["sell_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-item-id")]],
      ["sell_item_info", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-item-info")]],
      ["sell_item_local_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "sell-item-local-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => StructSellFailed,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "StructSellFailed"),
    :schema_element => [
      ["sell_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "sell-item-id")]],
      ["sell_fault_code", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-fault-code")]],
      ["sell_fault_string", ["SOAP::SOAPString", XSD::QName.new(nil, "sell-fault-string")]]
    ]
  )

  LiteralRegistry.register(
    :class => SysStatusType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "SysStatusType"),
    :schema_element => [
      ["country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "country-id")]],
      ["program_version", ["SOAP::SOAPString", XSD::QName.new(nil, "program-version")]],
      ["cats_version", ["SOAP::SOAPString", XSD::QName.new(nil, "cats-version")]],
      ["api_version", ["SOAP::SOAPString", XSD::QName.new(nil, "api-version")]],
      ["attrib_version", ["SOAP::SOAPString", XSD::QName.new(nil, "attrib-version")]],
      ["form_sell_version", ["SOAP::SOAPString", XSD::QName.new(nil, "form-sell-version")]],
      ["site_version", ["SOAP::SOAPString", XSD::QName.new(nil, "site-version")]],
      ["ver_key", ["SOAP::SOAPLong", XSD::QName.new(nil, "ver-key")]]
    ]
  )

  LiteralRegistry.register(
    :class => TemplateInfoType,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TemplateInfoType"),
    :schema_element => [
      ["template_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "template-id")]],
      ["template_name", ["SOAP::SOAPString", XSD::QName.new(nil, "template-name")]],
      ["template_thumb", ["SOAP::SOAPBase64", XSD::QName.new(nil, "template-thumb")]],
      ["template_desc_images", ["SOAP::SOAPBase64", XSD::QName.new(nil, "template-desc-images")]]
    ]
  )

  LiteralRegistry.register(
    :class => TransactionPayByLinkStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TransactionPayByLinkStruct"),
    :schema_element => [
      ["action_http_method", ["SOAP::SOAPString", XSD::QName.new(nil, "action-http-method")]],
      ["action_url", ["SOAP::SOAPString", XSD::QName.new(nil, "action-url")]],
      ["action_data", ["ArrayOfActionDataStruct", XSD::QName.new(nil, "action-data")]]
    ]
  )

  LiteralRegistry.register(
    :class => TranslatedProductStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "TranslatedProductStruct"),
    :schema_element => [
      ["product_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "product-id")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserBlackListAddResultStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserBlackListAddResultStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-id")]],
      ["add_to_black_list_result", ["SOAP::SOAPInt", XSD::QName.new(nil, "add-to-black-list-result")]],
      ["add_to_black_list_err_code", ["SOAP::SOAPString", XSD::QName.new(nil, "add-to-black-list-err-code")]],
      ["add_to_black_list_err_msg", ["SOAP::SOAPString", XSD::QName.new(nil, "add-to-black-list-err-msg")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserBlackListStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserBlackListStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-id")]],
      ["user_black_list_note", ["SOAP::SOAPString", XSD::QName.new(nil, "user-black-list-note")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserDataStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_login", ["SOAP::SOAPString", XSD::QName.new(nil, "user-login")]],
      ["user_rating", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-rating")]],
      ["user_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-first-name")]],
      ["user_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-last-name")]],
      ["user_maiden_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-maiden-name")]],
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country-id")]],
      ["user_state_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-state-id")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]],
      ["user_email", ["SOAP::SOAPString", XSD::QName.new(nil, "user-email")]],
      ["user_phone", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone")]],
      ["user_phone2", ["SOAP::SOAPString", XSD::QName.new(nil, "user-phone2")]],
      ["user_ss_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-ss-status")]],
      ["site_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "site-country-id")]],
      ["user_junior_status", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-junior-status")]],
      ["user_birth_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-birth-date")]],
      ["user_has_shop", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-has-shop")]],
      ["user_company_icon", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-company-icon")]],
      ["user_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-is-allegro-standard")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserIncomingPaymentRefundsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentRefundsStruct"),
    :schema_element => [
      ["pay_refund_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-trans-id")]],
      ["pay_refund_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-it-id")]],
      ["pay_refund_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-refund-buyer-id")]],
      ["pay_refund_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-refund-value")]],
      ["pay_refund_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-refund-reason")]],
      ["pay_refund_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-date")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserIncomingPaymentStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserIncomingPaymentStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-it-id")]],
      ["pay_trans_buyer_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-buyer-id")]],
      ["pay_trans_type", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-type")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_recv_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-recv-date")]],
      ["pay_trans_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-price")]],
      ["pay_trans_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-count")]],
      ["pay_trans_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-postage-amount")]],
      ["pay_trans_details", ["ArrayOfPaymentDetailsStruct", XSD::QName.new(nil, "pay-trans-details")]],
      ["pay_trans_incomplete", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-incomplete")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserItemList,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserItemList"),
    :schema_element => [
      ["it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-id")]],
      ["it_name", ["SOAP::SOAPString", XSD::QName.new(nil, "it-name")]],
      ["it_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-price")]],
      ["it_buy_now_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "it-buy-now-price")]],
      ["it_bid_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-bid-count")]],
      ["it_time_left", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-time-left")]],
      ["it_foto_count", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-foto-count")]],
      ["it_is_listing_thumb", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-listing-thumb")]],
      ["it_is_bold_title", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-bold-title")]],
      ["it_is_buy_now", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-buy-now")]],
      ["it_country", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-country")]],
      ["it_is_escrow", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-escrow")]],
      ["it_starting_time", ["SOAP::SOAPLong", XSD::QName.new(nil, "it-starting-time")]],
      ["it_is_reserved_price", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-reserved-price")]],
      ["it_thumb_url", ["SOAP::SOAPString", XSD::QName.new(nil, "it-thumb-url")]],
      ["it_is_allegro_standard", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-is-allegro-standard")]],
      ["it_has_free_shipping", ["SOAP::SOAPInt", XSD::QName.new(nil, "it-has-free-shipping")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserPaymentRefundsStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPaymentRefundsStruct"),
    :schema_element => [
      ["pay_refund_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-trans-id")]],
      ["pay_refund_it_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-it-id")]],
      ["pay_refund_seller_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-refund-seller-id")]],
      ["pay_refund_value", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-refund-value")]],
      ["pay_refund_reason", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-refund-reason")]],
      ["pay_refund_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-refund-date")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserPaymentStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPaymentStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_sellers", ["ArrayOfPaymentSellersStruct", XSD::QName.new(nil, "pay-trans-sellers")]],
      ["pay_trans_type", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-type")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_price", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-price")]],
      ["pay_trans_postage_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-postage-amount")]],
      ["pay_trans_incomplete", ["SOAP::SOAPInt", XSD::QName.new(nil, "pay-trans-incomplete")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserPayoutStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPayoutStruct"),
    :schema_element => [
      ["pay_trans_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-id")]],
      ["pay_trans_status", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-status")]],
      ["pay_trans_amount", ["SOAP::SOAPFloat", XSD::QName.new(nil, "pay-trans-amount")]],
      ["pay_trans_create_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-create-date")]],
      ["pay_trans_recv_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-recv-date")]],
      ["pay_trans_cancel_date", ["SOAP::SOAPLong", XSD::QName.new(nil, "pay-trans-cancel-date")]],
      ["pay_trans_report", ["SOAP::SOAPString", XSD::QName.new(nil, "pay-trans-report")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserPostBuyDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserPostBuyDataStruct"),
    :schema_element => [
      ["user_data", ["UserDataStruct", XSD::QName.new(nil, "user-data")]],
      ["user_sent_to_data", ["UserSentToDataStruct", XSD::QName.new(nil, "user-sent-to-data")]],
      ["user_bank_accounts", ["ArrayOfBankAccounts", XSD::QName.new(nil, "user-bank-accounts")]],
      ["company_second_address", ["CompanySecondAddressStruct", XSD::QName.new(nil, "company-second-address")]]
    ]
  )

  LiteralRegistry.register(
    :class => UserSentToDataStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "UserSentToDataStruct"),
    :schema_element => [
      ["user_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "user-id")]],
      ["user_first_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-first-name")]],
      ["user_last_name", ["SOAP::SOAPString", XSD::QName.new(nil, "user-last-name")]],
      ["user_company", ["SOAP::SOAPString", XSD::QName.new(nil, "user-company")]],
      ["user_country_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "user-country-id")]],
      ["user_postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "user-postcode")]],
      ["user_city", ["SOAP::SOAPString", XSD::QName.new(nil, "user-city")]],
      ["user_address", ["SOAP::SOAPString", XSD::QName.new(nil, "user-address")]]
    ]
  )

  LiteralRegistry.register(
    :class => WaitFeedbackStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "WaitFeedbackStruct"),
    :schema_element => [
      ["fe_item_id", ["SOAP::SOAPLong", XSD::QName.new(nil, "fe-item-id")]],
      ["fe_item_name", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-item-name")]],
      ["fe_to_user_id", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-to-user-id")]],
      ["fe_op", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-op")]],
      ["fe_ans_comment_type", ["SOAP::SOAPString", XSD::QName.new(nil, "fe-ans-comment-type")]],
      ["fe_possibility_to_add", ["SOAP::SOAPInt", XSD::QName.new(nil, "fe-possibility-to-add")]]
    ]
  )

  LiteralRegistry.register(
    :class => WatchListInfoStruct,
    :schema_type => XSD::QName.new(NsAllegroWebApi, "WatchListInfoStruct"),
    :schema_element => [
      ["items_added", ["ArrayOfItemsAdded", XSD::QName.new(nil, "items-added")]],
      ["items_not_added", ["ArrayOfItemsNotAddedStruct", XSD::QName.new(nil, "items-not-added")]]
    ]
  )
end
