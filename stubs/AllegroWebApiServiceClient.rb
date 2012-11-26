#!/usr/bin/env ruby
require 'AllegroWebApiDriver.rb'

endpoint_url = ARGV.shift
obj = AllegroWebApiPortType.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   doAddDescToItems(session_handle, items_id_array, it_description)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_id_array  ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   it_description  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   array_items_add_id ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   array_items_desc_to_long ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   array_items_not_found ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
session_handle = items_id_array = it_description = nil
puts obj.doAddDescToItems(session_handle, items_id_array, it_description)

# SYNOPSIS
#   doAddPackageInfoToPostBuyForm(session_id, transaction_id, package_info)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   transaction_id  Long - {http://www.w3.org/2001/XMLSchema}long
#   package_info    ArrayOfPackageInfoStruct - {urn:AllegroWebApi}ArrayOfPackageInfoStruct
#
# RETURNS
#   post_buy_form_package_info PostBuyFormPackageInfoStruct - {urn:AllegroWebApi}PostBuyFormPackageInfoStruct
#
session_id = transaction_id = package_info = nil
puts obj.doAddPackageInfoToPostBuyForm(session_id, transaction_id, package_info)

# SYNOPSIS
#   doAddToBlackList(session_handle, users_black_list_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   users_black_list_array ArrayOfUserBlackListStruct - {urn:AllegroWebApi}ArrayOfUserBlackListStruct
#
# RETURNS
#   user_black_list_results_arr ArrayOfUserBlackListAddResultStruct - {urn:AllegroWebApi}ArrayOfUserBlackListAddResultStruct
#
session_handle = users_black_list_array = nil
puts obj.doAddToBlackList(session_handle, users_black_list_array)

# SYNOPSIS
#   doAddToWatchList(session_id, item_ids)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_ids        ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
# RETURNS
#   watch_list_info WatchListInfoStruct - {urn:AllegroWebApi}WatchListInfoStruct
#
session_id = item_ids = nil
puts obj.doAddToWatchList(session_id, item_ids)

# SYNOPSIS
#   doBidItem(session_handle, bid_it_id, bid_user_price, bid_quantity, bid_buy_now, pharmacy_recipient_data)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   bid_it_id       Long - {http://www.w3.org/2001/XMLSchema}long
#   bid_user_price  C_Float - {http://www.w3.org/2001/XMLSchema}float
#   bid_quantity    Long - {http://www.w3.org/2001/XMLSchema}long
#   bid_buy_now     Long - {http://www.w3.org/2001/XMLSchema}long
#   pharmacy_recipient_data PharmacyRecipientDataStruct - {urn:AllegroWebApi}PharmacyRecipientDataStruct
#
# RETURNS
#   bid_price       C_String - {http://www.w3.org/2001/XMLSchema}string
#
session_handle = bid_it_id = bid_user_price = bid_quantity = bid_buy_now = pharmacy_recipient_data = nil
puts obj.doBidItem(session_handle, bid_it_id, bid_user_price, bid_quantity, bid_buy_now, pharmacy_recipient_data)

# SYNOPSIS
#   doCancelBidItem(session_handle, cancel_item_id, cancel_bids_array, cancel_bids_reason, cancel_add_to_black_list)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   cancel_item_id  Long - {http://www.w3.org/2001/XMLSchema}long
#   cancel_bids_array ArrayOfCancelBidsID - {urn:AllegroWebApi}ArrayOfCancelBidsID
#   cancel_bids_reason C_String - {http://www.w3.org/2001/XMLSchema}string
#   cancel_add_to_black_list Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   cancel_bid_value Int - {http://www.w3.org/2001/XMLSchema}int
#   cancelled_bids  ArrayOfCancelBidsID - {urn:AllegroWebApi}ArrayOfCancelBidsID
#   not_cancelled_bids ArrayOfCancelBidsID - {urn:AllegroWebApi}ArrayOfCancelBidsID
#
session_handle = cancel_item_id = cancel_bids_array = cancel_bids_reason = cancel_add_to_black_list = nil
puts obj.doCancelBidItem(session_handle, cancel_item_id, cancel_bids_array, cancel_bids_reason, cancel_add_to_black_list)

# SYNOPSIS
#   doCancelRefundForms(session_handle, refund_cancel_data_arr)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   refund_cancel_data_arr ArrayOfCancelRefundDataStruct - {urn:AllegroWebApi}ArrayOfCancelRefundDataStruct
#
# RETURNS
#   cancel_refund_forms_results_arr ArrayOfCancelRefundFormResultStruct - {urn:AllegroWebApi}ArrayOfCancelRefundFormResultStruct
#
session_handle = refund_cancel_data_arr = nil
puts obj.doCancelRefundForms(session_handle, refund_cancel_data_arr)

# SYNOPSIS
#   doCancelRefundWarnings(session_handle, cancel_refund_warnings_data_arr)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   cancel_refund_warnings_data_arr ArrayOfCancelRefundWarningStruct - {urn:AllegroWebApi}ArrayOfCancelRefundWarningStruct
#
# RETURNS
#   cancel_refund_warnings_results_arr ArrayOfCancelRefundWarningResultStruct - {urn:AllegroWebApi}ArrayOfCancelRefundWarningResultStruct
#
session_handle = cancel_refund_warnings_data_arr = nil
puts obj.doCancelRefundWarnings(session_handle, cancel_refund_warnings_data_arr)

# SYNOPSIS
#   doChangeItemFields(session_id, item_id, fields_to_modify, fields_to_remove, preview_only)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   fields_to_modify ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#   fields_to_remove ArrayOfFieldsId - {urn:AllegroWebApi}ArrayOfFieldsId
#   preview_only    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   changed_item    ChangedItemStruct - {urn:AllegroWebApi}ChangedItemStruct
#
session_id = item_id = fields_to_modify = fields_to_remove = preview_only = nil
puts obj.doChangeItemFields(session_id, item_id, fields_to_modify, fields_to_remove, preview_only)

# SYNOPSIS
#   doChangePriceItem(session_handle, item_id, new_starting_price, new_reserve_price, new_buy_now_price)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   new_starting_price C_Float - {http://www.w3.org/2001/XMLSchema}float
#   new_reserve_price C_Float - {http://www.w3.org/2001/XMLSchema}float
#   new_buy_now_price C_Float - {http://www.w3.org/2001/XMLSchema}float
#
# RETURNS
#   item_info       C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#
session_handle = item_id = new_starting_price = new_reserve_price = new_buy_now_price = nil
puts obj.doChangePriceItem(session_handle, item_id, new_starting_price, new_reserve_price, new_buy_now_price)

# SYNOPSIS
#   doChangeQuantityItem(session_handle, item_id, new_item_quantity)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   new_item_quantity Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   item_info       C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_quantity_left Int - {http://www.w3.org/2001/XMLSchema}int
#   item_quantity_sold Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = item_id = new_item_quantity = nil
puts obj.doChangeQuantityItem(session_handle, item_id, new_item_quantity)

# SYNOPSIS
#   doCheckExternalKey(webapi_key, user_id, item_id, hash_key)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   hash_key        C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   result          Int - {http://www.w3.org/2001/XMLSchema}int
#
webapi_key = user_id = item_id = hash_key = nil
puts obj.doCheckExternalKey(webapi_key, user_id, item_id, hash_key)

# SYNOPSIS
#   doCheckItemDescription(session_id, description_content)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   description_content C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   item_description ItemDescriptionStruct - {urn:AllegroWebApi}ItemDescriptionStruct
#
session_id = description_content = nil
puts obj.doCheckItemDescription(session_id, description_content)

# SYNOPSIS
#   doCheckNewAuction(session_handle, fields)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#
# RETURNS
#   item_price      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_price_desc C_String - {http://www.w3.org/2001/XMLSchema}string
#
session_handle = fields = nil
puts obj.doCheckNewAuction(session_handle, fields)

# SYNOPSIS
#   doCheckNewAuctionExt(session_handle, fields)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#
# RETURNS
#   item_price      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_price_desc C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_is_allegro_standard Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = fields = nil
puts obj.doCheckNewAuctionExt(session_handle, fields)

# SYNOPSIS
#   doCreateItemTemplate(session_id, item_template_name, item_template_fields)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_template_name C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_template_fields ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#
# RETURNS
#   created_item_template CreatedItemTemplateStruct - {urn:AllegroWebApi}CreatedItemTemplateStruct
#
session_id = item_template_name = item_template_fields = nil
puts obj.doCreateItemTemplate(session_id, item_template_name, item_template_fields)

# SYNOPSIS
#   doFeedback(session_handle, fe_item_id, fe_use_comment_template, fe_to_user_id, fe_comment, fe_comment_type, fe_op, fe_rating)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   fe_item_id      Long - {http://www.w3.org/2001/XMLSchema}long
#   fe_use_comment_template Int - {http://www.w3.org/2001/XMLSchema}int
#   fe_to_user_id   Int - {http://www.w3.org/2001/XMLSchema}int
#   fe_comment      C_String - {http://www.w3.org/2001/XMLSchema}string
#   fe_comment_type C_String - {http://www.w3.org/2001/XMLSchema}string
#   fe_op           Int - {http://www.w3.org/2001/XMLSchema}int
#   fe_rating       ArrayOfSellRatingEstimationStruct - {urn:AllegroWebApi}ArrayOfSellRatingEstimationStruct
#
# RETURNS
#   feedback_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = fe_item_id = fe_use_comment_template = fe_to_user_id = fe_comment = fe_comment_type = fe_op = fe_rating = nil
puts obj.doFeedback(session_handle, fe_item_id, fe_use_comment_template, fe_to_user_id, fe_comment, fe_comment_type, fe_op, fe_rating)

# SYNOPSIS
#   doFeedbackMany(session_handle, feedbacks_list)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   feedbacks_list  ArrayOfFeedbackManyStruct - {urn:AllegroWebApi}ArrayOfFeedbackManyStruct
#
# RETURNS
#   fe_results      ArrayOfFeedbacksResult - {urn:AllegroWebApi}ArrayOfFeedbacksResult
#
session_handle = feedbacks_list = nil
puts obj.doFeedbackMany(session_handle, feedbacks_list)

# SYNOPSIS
#   doFindProductByCode(session_handle, product_code)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   product_code    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   products_info   ArrayOfProductStruct - {urn:AllegroWebApi}ArrayOfProductStruct
#
session_handle = product_code = nil
puts obj.doFindProductByCode(session_handle, product_code)

# SYNOPSIS
#   doFindProductByName(session_handle, product_name, category_id)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   product_name    C_String - {http://www.w3.org/2001/XMLSchema}string
#   category_id     Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   products_info   ArrayOfProductStruct - {urn:AllegroWebApi}ArrayOfProductStruct
#
session_handle = product_name = category_id = nil
puts obj.doFindProductByName(session_handle, product_name, category_id)

# SYNOPSIS
#   doFinishItem(session_handle, finish_item_id, finish_cancel_all_bids, finish_cancel_reason)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   finish_item_id  Long - {http://www.w3.org/2001/XMLSchema}long
#   finish_cancel_all_bids Int - {http://www.w3.org/2001/XMLSchema}int
#   finish_cancel_reason C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   finish_value    Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = finish_item_id = finish_cancel_all_bids = finish_cancel_reason = nil
puts obj.doFinishItem(session_handle, finish_item_id, finish_cancel_all_bids, finish_cancel_reason)

# SYNOPSIS
#   doFinishItems(session_handle, finish_items_list)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   finish_items_list ArrayOfFinishItemsStruct - {urn:AllegroWebApi}ArrayOfFinishItemsStruct
#
# RETURNS
#   finish_items_succeed ArrayOfFinishSuccessStruct - {urn:AllegroWebApi}ArrayOfFinishSuccessStruct
#   finish_items_failed ArrayOfFinishFailureStruct - {urn:AllegroWebApi}ArrayOfFinishFailureStruct
#
session_handle = finish_items_list = nil
puts obj.doFinishItems(session_handle, finish_items_list)

# SYNOPSIS
#   doGetAdminUserLicenceDate(admin_session_handle, user_lic_login)
#
# ARGS
#   admin_session_handle C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_lic_login  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   get_date_value  C_Float - {http://www.w3.org/2001/XMLSchema}float
#
admin_session_handle = user_lic_login = nil
puts obj.doGetAdminUserLicenceDate(admin_session_handle, user_lic_login)

# SYNOPSIS
#   doGetBidItem2(session_handle, item_id)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   biditem_list    ArrayOfBidList2 - {urn:AllegroWebApi}ArrayOfBidList2
#
session_handle = item_id = nil
puts obj.doGetBidItem2(session_handle, item_id)

# SYNOPSIS
#   doGetBlackListUsers(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   black_list_users ArrayOfBlackListStruct - {urn:AllegroWebApi}ArrayOfBlackListStruct
#
session_handle = nil
puts obj.doGetBlackListUsers(session_handle)

# SYNOPSIS
#   doGetCategoryPath(session_id, category_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   category_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   category_path   ArrayOfCategoryData - {urn:AllegroWebApi}ArrayOfCategoryData
#
session_id = category_id = nil
puts obj.doGetCategoryPath(session_id, category_id)

# SYNOPSIS
#   doGetCatsData(country_id, local_version, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   cats_list       ArrayOfCats - {urn:AllegroWebApi}ArrayOfCats
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_id = local_version = webapi_key = nil
puts obj.doGetCatsData(country_id, local_version, webapi_key)

# SYNOPSIS
#   doGetCatsDataCount(country_id, local_version, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   cats_count      Int - {http://www.w3.org/2001/XMLSchema}int
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_id = local_version = webapi_key = nil
puts obj.doGetCatsDataCount(country_id, local_version, webapi_key)

# SYNOPSIS
#   doGetCatsDataLimit(country_id, local_version, webapi_key, offset, package_element)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   package_element Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   cats_list       ArrayOfCats - {urn:AllegroWebApi}ArrayOfCats
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_id = local_version = webapi_key = offset = package_element = nil
puts obj.doGetCatsDataLimit(country_id, local_version, webapi_key, offset, package_element)

# SYNOPSIS
#   doGetCountries(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   country_array   ArrayOfCountries - {urn:AllegroWebApi}ArrayOfCountries
#
country_code = webapi_key = nil
puts obj.doGetCountries(country_code, webapi_key)

# SYNOPSIS
#   doGetDeals(session_handle, item_id, buyer_id)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   buyer_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   deals_list      ArrayOfDealsStruct - {urn:AllegroWebApi}ArrayOfDealsStruct
#
session_handle = item_id = buyer_id = nil
puts obj.doGetDeals(session_handle, item_id, buyer_id)

# SYNOPSIS
#   doGetFavouriteCategories(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   s_favourite_categories_list ArrayOfFavouritesCategories - {urn:AllegroWebApi}ArrayOfFavouritesCategories
#
session_handle = nil
puts obj.doGetFavouriteCategories(session_handle)

# SYNOPSIS
#   doGetFavouriteSellers(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   s_favourite_sellers_list ArrayOfFavouritesSellers - {urn:AllegroWebApi}ArrayOfFavouritesSellers
#
session_handle = nil
puts obj.doGetFavouriteSellers(session_handle)

# SYNOPSIS
#   doGetFeedback(session_handle, feedback_from, feedback_to, feedback_offset, feedback_kind_list)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   feedback_from   Int - {http://www.w3.org/2001/XMLSchema}int
#   feedback_to     Int - {http://www.w3.org/2001/XMLSchema}int
#   feedback_offset Int - {http://www.w3.org/2001/XMLSchema}int
#   feedback_kind_list C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   feedback_list   ArrayOfFeedbackList - {urn:AllegroWebApi}ArrayOfFeedbackList
#   feedback_count  Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = feedback_from = feedback_to = feedback_offset = feedback_kind_list = nil
puts obj.doGetFeedback(session_handle, feedback_from, feedback_to, feedback_offset, feedback_kind_list)

# SYNOPSIS
#   doGetFilledPostBuyForms(session_id, payment_type, user_role, filling_time_from, filling_time_to)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   payment_type    Int - {http://www.w3.org/2001/XMLSchema}int
#   user_role       Int - {http://www.w3.org/2001/XMLSchema}int
#   filling_time_from Long - {http://www.w3.org/2001/XMLSchema}long
#   filling_time_to Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   filled_post_buy_forms FilledPostBuyFormsStruct - {urn:AllegroWebApi}FilledPostBuyFormsStruct
#
session_id = payment_type = user_role = filling_time_from = filling_time_to = nil
puts obj.doGetFilledPostBuyForms(session_id, payment_type, user_role, filling_time_from, filling_time_to)

# SYNOPSIS
#   doGetItemFields(session_id, item_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   item_fields     ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#
session_id = item_id = nil
puts obj.doGetItemFields(session_id, item_id)

# SYNOPSIS
#   doGetItemTemplates(session_id, item_template_ids)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_template_ids ArrayOfTemplatesID - {urn:AllegroWebApi}ArrayOfTemplatesID
#
# RETURNS
#   item_templates  ItemTemplatesStruct - {urn:AllegroWebApi}ItemTemplatesStruct
#
session_id = item_template_ids = nil
puts obj.doGetItemTemplates(session_id, item_template_ids)

# SYNOPSIS
#   doGetItemsImages(session_handle, items_array, image_type)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_array     ArrayOfItemGetImage - {urn:AllegroWebApi}ArrayOfItemGetImage
#   image_type      Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   get_items_images_result ArrayOfItemImagesStruct - {urn:AllegroWebApi}ArrayOfItemImagesStruct
#
session_handle = items_array = image_type = nil
puts obj.doGetItemsImages(session_handle, items_array, image_type)

# SYNOPSIS
#   doGetItemsInfo(session_handle, items_id_array, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info, get_product_info)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_id_array  ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   get_desc        Int - {http://www.w3.org/2001/XMLSchema}int
#   get_image_url   Int - {http://www.w3.org/2001/XMLSchema}int
#   get_attribs     Int - {http://www.w3.org/2001/XMLSchema}int
#   get_postage_options Int - {http://www.w3.org/2001/XMLSchema}int
#   get_company_info Int - {http://www.w3.org/2001/XMLSchema}int
#   get_product_info Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   array_item_list_info ArrayOfStructItemInfoList - {urn:AllegroWebApi}ArrayOfStructItemInfoList
#   array_items_not_found ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   array_items_admin_killed ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
session_handle = items_id_array = get_desc = get_image_url = get_attribs = get_postage_options = get_company_info = get_product_info = nil
puts obj.doGetItemsInfo(session_handle, items_id_array, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info, get_product_info)

# SYNOPSIS
#   doGetMessageToBuyer(session_id, item_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   message_to_buyer MessageToBuyerStruct - {urn:AllegroWebApi}MessageToBuyerStruct
#
session_id = item_id = nil
puts obj.doGetMessageToBuyer(session_id, item_id)

# SYNOPSIS
#   doGetMyAddresses(session_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   addresses_info  AddressesInfoStruct - {urn:AllegroWebApi}AddressesInfoStruct
#
session_id = nil
puts obj.doGetMyAddresses(session_id)

# SYNOPSIS
#   doGetMyData(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   user_data       UserDataStruct - {urn:AllegroWebApi}UserDataStruct
#   invoice_data    InvoiceDataStruct - {urn:AllegroWebApi}InvoiceDataStruct
#   company_extra_data CompanyExtraDataStruct - {urn:AllegroWebApi}CompanyExtraDataStruct
#   company_second_address CompanySecondAddressStruct - {urn:AllegroWebApi}CompanySecondAddressStruct
#   pharmacy_data   PharmacyDataStruct - {urn:AllegroWebApi}PharmacyDataStruct
#   alcohol_data    AlcoholDataStruct - {urn:AllegroWebApi}AlcoholDataStruct
#   related_persons RelatedPersonsStruct - {urn:AllegroWebApi}RelatedPersonsStruct
#
session_handle = nil
puts obj.doGetMyData(session_handle)

# SYNOPSIS
#   doGetMyIncomingPayments(session_handle, buyer_id, item_id, trans_recv_date_from, trans_recv_date_to, trans_page_limit, trans_offset)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   buyer_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   trans_recv_date_from Long - {http://www.w3.org/2001/XMLSchema}long
#   trans_recv_date_to Long - {http://www.w3.org/2001/XMLSchema}long
#   trans_page_limit Int - {http://www.w3.org/2001/XMLSchema}int
#   trans_offset    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   pay_trans_income ArrayOfUserIncomingPaymentStruct - {urn:AllegroWebApi}ArrayOfUserIncomingPaymentStruct
#
session_handle = buyer_id = item_id = trans_recv_date_from = trans_recv_date_to = trans_page_limit = trans_offset = nil
puts obj.doGetMyIncomingPayments(session_handle, buyer_id, item_id, trans_recv_date_from, trans_recv_date_to, trans_page_limit, trans_offset)

# SYNOPSIS
#   doGetMyIncomingPaymentsRefunds(session_handle, buyer_id, item_id, limit, offset)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   buyer_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   limit           Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   pay_trans_income_refunds ArrayOfUserIncomingPaymentRefundsStruct - {urn:AllegroWebApi}ArrayOfUserIncomingPaymentRefundsStruct
#
session_handle = buyer_id = item_id = limit = offset = nil
puts obj.doGetMyIncomingPaymentsRefunds(session_handle, buyer_id, item_id, limit, offset)

# SYNOPSIS
#   doGetMyPayments(session_id, seller_id, item_id, payment_time_from, payment_time_to, page_size, page_number)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   seller_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   payment_time_from Long - {http://www.w3.org/2001/XMLSchema}long
#   payment_time_to Long - {http://www.w3.org/2001/XMLSchema}long
#   page_size       Int - {http://www.w3.org/2001/XMLSchema}int
#   page_number     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   pay_trans_payment ArrayOfUserPaymentStruct - {urn:AllegroWebApi}ArrayOfUserPaymentStruct
#
session_id = seller_id = item_id = payment_time_from = payment_time_to = page_size = page_number = nil
puts obj.doGetMyPayments(session_id, seller_id, item_id, payment_time_from, payment_time_to, page_size, page_number)

# SYNOPSIS
#   doGetMyPaymentsInfo(session_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   payments_info   PaymentsInfoStruct - {urn:AllegroWebApi}PaymentsInfoStruct
#
session_id = nil
puts obj.doGetMyPaymentsInfo(session_id)

# SYNOPSIS
#   doGetMyPaymentsRefunds(session_handle, seller_id, item_id, limit, offset)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   seller_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   limit           Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   pay_trans_payment_refunds ArrayOfUserPaymentRefundsStruct - {urn:AllegroWebApi}ArrayOfUserPaymentRefundsStruct
#
session_handle = seller_id = item_id = limit = offset = nil
puts obj.doGetMyPaymentsRefunds(session_handle, seller_id, item_id, limit, offset)

# SYNOPSIS
#   doGetMyPayouts(session_handle, trans_create_date_from, trans_create_date_to, trans_page_limit, trans_offset)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   trans_create_date_from Long - {http://www.w3.org/2001/XMLSchema}long
#   trans_create_date_to Long - {http://www.w3.org/2001/XMLSchema}long
#   trans_page_limit Int - {http://www.w3.org/2001/XMLSchema}int
#   trans_offset    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   pay_trans_payout ArrayOfUserPayoutStruct - {urn:AllegroWebApi}ArrayOfUserPayoutStruct
#
session_handle = trans_create_date_from = trans_create_date_to = trans_page_limit = trans_offset = nil
puts obj.doGetMyPayouts(session_handle, trans_create_date_from, trans_create_date_to, trans_page_limit, trans_offset)

# SYNOPSIS
#   doGetMySellRating(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sell_rating_total_count Int - {http://www.w3.org/2001/XMLSchema}int
#   sell_rating_average ArrayOfSellRatingAverageStruct - {urn:AllegroWebApi}ArrayOfSellRatingAverageStruct
#   sell_rating_details ArrayOfSellRatingDetailStruct - {urn:AllegroWebApi}ArrayOfSellRatingDetailStruct
#   sell_rating_stats_per_month ArrayOfSellRatingAveragePerMonth - {urn:AllegroWebApi}ArrayOfSellRatingAveragePerMonth
#
session_handle = nil
puts obj.doGetMySellRating(session_handle)

# SYNOPSIS
#   doGetPaymentData(country_id, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   payment_list    ArrayOfBilling - {urn:AllegroWebApi}ArrayOfBilling
#
country_id = webapi_key = nil
puts obj.doGetPaymentData(country_id, webapi_key)

# SYNOPSIS
#   doGetPaymentMethods(session_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   payment_methods ArrayOfPaymentMethodStruct - {urn:AllegroWebApi}ArrayOfPaymentMethodStruct
#
session_id = nil
puts obj.doGetPaymentMethods(session_id)

# SYNOPSIS
#   doGetPostBuyData(session_handle, items_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_array     ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#
# RETURNS
#   items_post_buy_data ArrayOfItemsPostBuyData - {urn:AllegroWebApi}ArrayOfItemsPostBuyData
#
session_handle = items_array = nil
puts obj.doGetPostBuyData(session_handle, items_array)

# SYNOPSIS
#   doGetPostBuyFormsDataForBuyers(session_id, transactions_ids_array)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   transactions_ids_array ArrayOfTransactionsID - {urn:AllegroWebApi}ArrayOfTransactionsID
#
# RETURNS
#   post_buy_form_data_for_buyers ArrayOfPostBuyFormForBuyersDataStruct - {urn:AllegroWebApi}ArrayOfPostBuyFormForBuyersDataStruct
#
session_id = transactions_ids_array = nil
puts obj.doGetPostBuyFormsDataForBuyers(session_id, transactions_ids_array)

# SYNOPSIS
#   doGetPostBuyFormsDataForSellers(session_id, transactions_ids_array)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   transactions_ids_array ArrayOfTransactionsID - {urn:AllegroWebApi}ArrayOfTransactionsID
#
# RETURNS
#   post_buy_form_data ArrayOfPostBuyFormDataStruct - {urn:AllegroWebApi}ArrayOfPostBuyFormDataStruct
#
session_id = transactions_ids_array = nil
puts obj.doGetPostBuyFormsDataForSellers(session_id, transactions_ids_array)

# SYNOPSIS
#   doGetProductCatalogueCategories(session_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   product_catalogue_categories ArrayOfCatInfoType - {urn:AllegroWebApi}ArrayOfCatInfoType
#
session_id = nil
puts obj.doGetProductCatalogueCategories(session_id)

# SYNOPSIS
#   doGetProductCategories(session_id, product_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   product_id      Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   product_categories ArrayOfCatInfoType - {urn:AllegroWebApi}ArrayOfCatInfoType
#
session_id = product_id = nil
puts obj.doGetProductCategories(session_id, product_id)

# SYNOPSIS
#   doGetProductItems(session_id, product_id, category_id, page_size, page_number)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   product_id      Long - {http://www.w3.org/2001/XMLSchema}long
#   category_id     Int - {http://www.w3.org/2001/XMLSchema}int
#   page_size       Int - {http://www.w3.org/2001/XMLSchema}int
#   page_number     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   product_items_count Int - {http://www.w3.org/2001/XMLSchema}int
#   product_items_ids ArrayOfProductItemsIds - {urn:AllegroWebApi}ArrayOfProductItemsIds
#
session_id = product_id = category_id = page_size = page_number = nil
puts obj.doGetProductItems(session_id, product_id, category_id, page_size, page_number)

# SYNOPSIS
#   doGetRefundFormsStatuses(session_handle, refund_forms_statuses_data_arr)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   refund_forms_statuses_data_arr ArrayOfRefundFormStatusStruct - {urn:AllegroWebApi}ArrayOfRefundFormStatusStruct
#
# RETURNS
#   refund_forms_statuses_results_arr ArrayOfRefundFormStatusResultStruct - {urn:AllegroWebApi}ArrayOfRefundFormStatusResultStruct
#
session_handle = refund_forms_statuses_data_arr = nil
puts obj.doGetRefundFormsStatuses(session_handle, refund_forms_statuses_data_arr)

# SYNOPSIS
#   doGetRefundReasons(webapi_key, country_code)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   refund_reasons_arr ArrayOfRefundReasonStruct - {urn:AllegroWebApi}ArrayOfRefundReasonStruct
#
webapi_key = country_code = nil
puts obj.doGetRefundReasons(webapi_key, country_code)

# SYNOPSIS
#   doGetRefundTransactions(session_handle, offset, limit)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   limit           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   refund_forms_count Int - {http://www.w3.org/2001/XMLSchema}int
#   refund_forms_list ArrayOfRefundFormDataStruct - {urn:AllegroWebApi}ArrayOfRefundFormDataStruct
#
session_handle = offset = limit = nil
puts obj.doGetRefundTransactions(session_handle, offset, limit)

# SYNOPSIS
#   doGetRelatedItems(session_id, item_ids)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_ids        ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
# RETURNS
#   related_items   RelatedItemsStruct - {urn:AllegroWebApi}RelatedItemsStruct
#
session_id = item_ids = nil
puts obj.doGetRelatedItems(session_id, item_ids)

# SYNOPSIS
#   doGetSellFormAttribs(country_id, webapi_key, local_version, cat_id)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   cat_id          Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   sell_form_fields ArrayOfSellForms - {urn:AllegroWebApi}ArrayOfSellForms
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_id = webapi_key = local_version = cat_id = nil
puts obj.doGetSellFormAttribs(country_id, webapi_key, local_version, cat_id)

# SYNOPSIS
#   doGetSellFormFields(country_code, local_version, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sell_form_fields ArrayOfSellForms - {urn:AllegroWebApi}ArrayOfSellForms
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_code = local_version = webapi_key = nil
puts obj.doGetSellFormFields(country_code, local_version, webapi_key)

# SYNOPSIS
#   doGetSellFormFieldsExt(country_code, local_version, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sell_form_fields ArrayOfSellForms - {urn:AllegroWebApi}ArrayOfSellForms
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_code = local_version = webapi_key = nil
puts obj.doGetSellFormFieldsExt(country_code, local_version, webapi_key)

# SYNOPSIS
#   doGetSellFormFieldsExtLimit(country_code, local_version, webapi_key, offset, package_element)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   package_element Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   sell_form_fields ArrayOfSellForms - {urn:AllegroWebApi}ArrayOfSellForms
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#   form_fields_count Int - {http://www.w3.org/2001/XMLSchema}int
#
country_code = local_version = webapi_key = offset = package_element = nil
puts obj.doGetSellFormFieldsExtLimit(country_code, local_version, webapi_key, offset, package_element)

# SYNOPSIS
#   doGetSellFormFieldsForCategory(webapi_key, country_id, category_id)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   category_id     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   sell_form_fields_for_category SellFormFieldsForCategoryStruct - {urn:AllegroWebApi}SellFormFieldsForCategoryStruct
#
webapi_key = country_id = category_id = nil
puts obj.doGetSellFormFieldsForCategory(webapi_key, country_id, category_id)

# SYNOPSIS
#   doGetSellFormFieldsLimit(country_code, local_version, webapi_key, offset, package_element)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   package_element Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   sell_form_fields ArrayOfSellForms - {urn:AllegroWebApi}ArrayOfSellForms
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#   form_fields_count Int - {http://www.w3.org/2001/XMLSchema}int
#
country_code = local_version = webapi_key = offset = package_element = nil
puts obj.doGetSellFormFieldsLimit(country_code, local_version, webapi_key, offset, package_element)

# SYNOPSIS
#   doGetSellRatingReasons(webapi_key, country_code)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   sell_rating_info ArrayOfSellRatingInfoStruct - {urn:AllegroWebApi}ArrayOfSellRatingInfoStruct
#
webapi_key = country_code = nil
puts obj.doGetSellRatingReasons(webapi_key, country_code)

# SYNOPSIS
#   doGetServiceInfo(country_code, an_cat_id, an_it_date, an_it_id, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   an_cat_id       Int - {http://www.w3.org/2001/XMLSchema}int
#   an_it_date      Long - {http://www.w3.org/2001/XMLSchema}long
#   an_it_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   service_info_items_list ArrayOfServiceInfoStruct - {urn:AllegroWebApi}ArrayOfServiceInfoStruct
#
country_code = an_cat_id = an_it_date = an_it_id = webapi_key = nil
puts obj.doGetServiceInfo(country_code, an_cat_id, an_it_date, an_it_id, webapi_key)

# SYNOPSIS
#   doGetServiceInfoCategories(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   service_info_cats_list ArrayOfServiceInfoCatStruct - {urn:AllegroWebApi}ArrayOfServiceInfoCatStruct
#
country_code = webapi_key = nil
puts obj.doGetServiceInfoCategories(country_code, webapi_key)

# SYNOPSIS
#   doGetServiceTemplates(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   templates_array ArrayOfTemplates - {urn:AllegroWebApi}ArrayOfTemplates
#
country_code = webapi_key = nil
puts obj.doGetServiceTemplates(country_code, webapi_key)

# SYNOPSIS
#   doGetSessionHandleForWidget(webapi_key, country_code)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   server_time     Long - {http://www.w3.org/2001/XMLSchema}long
#
webapi_key = country_code = nil
puts obj.doGetSessionHandleForWidget(webapi_key, country_code)

# SYNOPSIS
#   doGetShipmentData(country_id, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   shipment_data_list ArrayOfShipmentDataStruct - {urn:AllegroWebApi}ArrayOfShipmentDataStruct
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#
country_id = webapi_key = nil
puts obj.doGetShipmentData(country_id, webapi_key)

# SYNOPSIS
#   doGetShipmentDataForRelatedItems(session_id, item_ids)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_ids        ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
# RETURNS
#   related_items_shipment_data RelatedItemsShipmentDataStruct - {urn:AllegroWebApi}RelatedItemsShipmentDataStruct
#
session_id = item_ids = nil
puts obj.doGetShipmentDataForRelatedItems(session_id, item_ids)

# SYNOPSIS
#   doGetShopCatsData(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   shop_cats_list  ArrayOfCats - {urn:AllegroWebApi}ArrayOfCats
#
session_handle = nil
puts obj.doGetShopCatsData(session_handle)

# SYNOPSIS
#   doGetSiteJournal(session_handle, starting_point, info_type)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   starting_point  Long - {http://www.w3.org/2001/XMLSchema}long
#   info_type       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   site_journal_array SiteJournalArray - {urn:AllegroWebApi}SiteJournalArray
#
session_handle = starting_point = info_type = nil
puts obj.doGetSiteJournal(session_handle, starting_point, info_type)

# SYNOPSIS
#   doGetSiteJournalDeals(session_id, journal_start)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   journal_start   Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   site_journal_deals ArrayOfSiteJournalDealsStruct - {urn:AllegroWebApi}ArrayOfSiteJournalDealsStruct
#
session_id = journal_start = nil
puts obj.doGetSiteJournalDeals(session_id, journal_start)

# SYNOPSIS
#   doGetSiteJournalDealsInfo(session_id, journal_start)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   journal_start   Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   site_journal_deals_info SiteJournalDealsInfoStruct - {urn:AllegroWebApi}SiteJournalDealsInfoStruct
#
session_id = journal_start = nil
puts obj.doGetSiteJournalDealsInfo(session_id, journal_start)

# SYNOPSIS
#   doGetSiteJournalInfo(session_handle, starting_point, info_type)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   starting_point  Long - {http://www.w3.org/2001/XMLSchema}long
#   info_type       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   site_journal_info SiteJournalInfo - {urn:AllegroWebApi}SiteJournalInfo
#
session_handle = starting_point = info_type = nil
puts obj.doGetSiteJournalInfo(session_handle, starting_point, info_type)

# SYNOPSIS
#   doGetSitesFlagInfo(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sites_info_list ArrayOfSitesFlagInfo - {urn:AllegroWebApi}ArrayOfSitesFlagInfo
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_code = webapi_key = nil
puts obj.doGetSitesFlagInfo(country_code, webapi_key)

# SYNOPSIS
#   doGetSitesInfo(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sites_info_list ArrayOfSitesInfo - {urn:AllegroWebApi}ArrayOfSitesInfo
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#   ver_str         C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_code = webapi_key = nil
puts obj.doGetSitesInfo(country_code, webapi_key)

# SYNOPSIS
#   doGetSpecialItems(session_handle, special_type, special_group, offset, order_fulfillment_time)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   special_type    Int - {http://www.w3.org/2001/XMLSchema}int
#   special_group   Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   order_fulfillment_time Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   s_special_list  ArrayOfSpecialAuction - {urn:AllegroWebApi}ArrayOfSpecialAuction
#
session_handle = special_type = special_group = offset = order_fulfillment_time = nil
puts obj.doGetSpecialItems(session_handle, special_type, special_group, offset, order_fulfillment_time)

# SYNOPSIS
#   doGetStatesInfo(country_code, webapi_key)
#
# ARGS
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   states_info_array ArrayOfStateInfoStruct - {urn:AllegroWebApi}ArrayOfStateInfoStruct
#
country_code = webapi_key = nil
puts obj.doGetStatesInfo(country_code, webapi_key)

# SYNOPSIS
#   doGetSystemTime(country_id, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   server_time     Long - {http://www.w3.org/2001/XMLSchema}long
#
country_id = webapi_key = nil
puts obj.doGetSystemTime(country_id, webapi_key)

# SYNOPSIS
#   doGetTransactionsIDs(session_handle, items_id_array, user_role, shipment_id_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_id_array  ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   user_role       C_String - {http://www.w3.org/2001/XMLSchema}string
#   shipment_id_array ArrayOfShipmentIds - {urn:AllegroWebApi}ArrayOfShipmentIds
#
# RETURNS
#   transactions_ids_array ArrayOfTransactionsID - {urn:AllegroWebApi}ArrayOfTransactionsID
#
session_handle = items_id_array = user_role = shipment_id_array = nil
puts obj.doGetTransactionsIDs(session_handle, items_id_array, user_role, shipment_id_array)

# SYNOPSIS
#   doGetUserID(country_id, user_login, user_email, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_email      C_String - {http://www.w3.org/2001/XMLSchema}string
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   user_id         Int - {http://www.w3.org/2001/XMLSchema}int
#
country_id = user_login = user_email = webapi_key = nil
puts obj.doGetUserID(country_id, user_login, user_email, webapi_key)

# SYNOPSIS
#   doGetUserItems(user_id, webapi_key, country_id, offset, limit)
#
# ARGS
#   user_id         Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   limit           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   user_item_list  ArrayOfUserItemList - {urn:AllegroWebApi}ArrayOfUserItemList
#   user_item_count Int - {http://www.w3.org/2001/XMLSchema}int
#
user_id = webapi_key = country_id = offset = limit = nil
puts obj.doGetUserItems(user_id, webapi_key, country_id, offset, limit)

# SYNOPSIS
#   doGetUserLicenceDate(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   get_date_value  C_Float - {http://www.w3.org/2001/XMLSchema}float
#
session_handle = nil
puts obj.doGetUserLicenceDate(session_handle)

# SYNOPSIS
#   doGetUserLogin(country_id, user_id, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   user_id         Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#
country_id = user_id = webapi_key = nil
puts obj.doGetUserLogin(country_id, user_id, webapi_key)

# SYNOPSIS
#   doGetWaitingFeedbacks(session_handle, offset, package_size)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   package_size    Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   fe_wait_list    ArrayOfWaitFeedbackStruct - {urn:AllegroWebApi}ArrayOfWaitFeedbackStruct
#
session_handle = offset = package_size = nil
puts obj.doGetWaitingFeedbacks(session_handle, offset, package_size)

# SYNOPSIS
#   doGetWaitingFeedbacksCount(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   feedback_count  Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = nil
puts obj.doGetWaitingFeedbacksCount(session_handle)

# SYNOPSIS
#   doInternalIStoreChange(webapi_key, user_id, istore_id, action_type, action_date, valid_date)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   istore_id       Long - {http://www.w3.org/2001/XMLSchema}long
#   action_type     C_String - {http://www.w3.org/2001/XMLSchema}string
#   action_date     Long - {http://www.w3.org/2001/XMLSchema}long
#   valid_date      Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   result          Int - {http://www.w3.org/2001/XMLSchema}int
#
webapi_key = user_id = istore_id = action_type = action_date = valid_date = nil
puts obj.doInternalIStoreChange(webapi_key, user_id, istore_id, action_type, action_date, valid_date)

# SYNOPSIS
#   doInternalSendMessage(session_handle, user_id, mail_template_id, array_of_additional_data)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_id         Int - {http://www.w3.org/2001/XMLSchema}int
#   mail_template_id Int - {http://www.w3.org/2001/XMLSchema}int
#   array_of_additional_data ArrayOfAdditionalData - {urn:AllegroWebApi}ArrayOfAdditionalData
#
# RETURNS
#   result          Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = user_id = mail_template_id = array_of_additional_data = nil
puts obj.doInternalSendMessage(session_handle, user_id, mail_template_id, array_of_additional_data)

# SYNOPSIS
#   doLogin(user_login, user_password, country_code, webapi_key, local_version)
#
# ARGS
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_password   C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   session_handle_part C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   server_time     Long - {http://www.w3.org/2001/XMLSchema}long
#
user_login = user_password = country_code = webapi_key = local_version = nil
puts obj.doLogin(user_login, user_password, country_code, webapi_key, local_version)

# SYNOPSIS
#   doLoginEnc(user_login, user_hash_password, country_code, webapi_key, local_version)
#
# ARGS
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_hash_password C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_code    Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   local_version   Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   session_handle_part C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   server_time     Long - {http://www.w3.org/2001/XMLSchema}long
#
user_login = user_hash_password = country_code = webapi_key = local_version = nil
puts obj.doLoginEnc(user_login, user_hash_password, country_code, webapi_key, local_version)

# SYNOPSIS
#   doMakeDiscount(session_handle, deal_id, discount_amount, discount_percentage)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   deal_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   discount_amount C_Float - {http://www.w3.org/2001/XMLSchema}float
#   discount_percentage C_Float - {http://www.w3.org/2001/XMLSchema}float
#
# RETURNS
#   deal_amount_discounted C_Float - {http://www.w3.org/2001/XMLSchema}float
#
session_handle = deal_id = discount_amount = discount_percentage = nil
puts obj.doMakeDiscount(session_handle, deal_id, discount_amount, discount_percentage)

# SYNOPSIS
#   doMakeDiscountByCoupon(session_id, discount_data)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   discount_data   DiscountDataStruct - {urn:AllegroWebApi}DiscountDataStruct
#
# RETURNS
#   item_discount_coupon ItemDiscountCouponStruct - {urn:AllegroWebApi}ItemDiscountCouponStruct
#
session_id = discount_data = nil
puts obj.doMakeDiscountByCoupon(session_id, discount_data)

# SYNOPSIS
#   doMyAccount2(session_handle, account_type, offset, items_array, limit)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   account_type    C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   items_array     ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#   limit           Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   myaccount_list  ArrayOfMyAccountList2 - {urn:AllegroWebApi}ArrayOfMyAccountList2
#
session_handle = account_type = offset = items_array = limit = nil
puts obj.doMyAccount2(session_handle, account_type, offset, items_array, limit)

# SYNOPSIS
#   doMyAccountItemsCount(session_handle, account_type, items_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   account_type    C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_array     ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#
# RETURNS
#   myaccount_items_count Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = account_type = items_array = nil
puts obj.doMyAccountItemsCount(session_handle, account_type, items_array)

# SYNOPSIS
#   doMyBilling(session_handle)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   my_billing      C_String - {http://www.w3.org/2001/XMLSchema}string
#
session_handle = nil
puts obj.doMyBilling(session_handle)

# SYNOPSIS
#   doMyBillingItem(session_handle, item_id, option)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   option          C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   entry_fees      ItemBillingList - {urn:AllegroWebApi}ItemBillingList
#   ending_fees     ItemBillingList - {urn:AllegroWebApi}ItemBillingList
#
session_handle = item_id = option = nil
puts obj.doMyBillingItem(session_handle, item_id, option)

# SYNOPSIS
#   doMyContact(session_handle, auction_id_list, offset, desc)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   auction_id_list ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   desc            Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   mycontact_list  ArrayOfMyContactList - {urn:AllegroWebApi}ArrayOfMyContactList
#
session_handle = auction_id_list = offset = desc = nil
puts obj.doMyContact(session_handle, auction_id_list, offset, desc)

# SYNOPSIS
#   doMyFeedback2(session_handle, feedback_type, offset, desc, items_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   feedback_type   C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   desc            Int - {http://www.w3.org/2001/XMLSchema}int
#   items_array     ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#
# RETURNS
#   myfeedback_list ArrayOfMyFeedbackList2 - {urn:AllegroWebApi}ArrayOfMyFeedbackList2
#
session_handle = feedback_type = offset = desc = items_array = nil
puts obj.doMyFeedback2(session_handle, feedback_type, offset, desc, items_array)

# SYNOPSIS
#   doMyFeedback2Limit(session_handle, feedback_type, offset, desc, items_array, package_element)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   feedback_type   C_String - {http://www.w3.org/2001/XMLSchema}string
#   offset          Int - {http://www.w3.org/2001/XMLSchema}int
#   desc            Int - {http://www.w3.org/2001/XMLSchema}int
#   items_array     ArrayOfAuctionID - {urn:AllegroWebApi}ArrayOfAuctionID
#   package_element Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   myfeedback_list ArrayOfMyFeedbackList2 - {urn:AllegroWebApi}ArrayOfMyFeedbackList2
#
session_handle = feedback_type = offset = desc = items_array = package_element = nil
puts obj.doMyFeedback2Limit(session_handle, feedback_type, offset, desc, items_array, package_element)

# SYNOPSIS
#   doNewAuction(session_handle, fields, private, local_id)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#   private         Int - {http://www.w3.org/2001/XMLSchema}int
#   local_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   item_info       C_String - {http://www.w3.org/2001/XMLSchema}string
#
session_handle = fields = private = local_id = nil
puts obj.doNewAuction(session_handle, fields, private, local_id)

# SYNOPSIS
#   doNewAuctionExt(session_handle, fields, item_template_id, local_id, item_template_create)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   fields          ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#   item_template_id Int - {http://www.w3.org/2001/XMLSchema}int
#   local_id        Int - {http://www.w3.org/2001/XMLSchema}int
#   item_template_create ItemTemplateCreateStruct - {urn:AllegroWebApi}ItemTemplateCreateStruct
#
# RETURNS
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   item_info       C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_is_allegro_standard Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = fields = item_template_id = local_id = item_template_create = nil
puts obj.doNewAuctionExt(session_handle, fields, item_template_id, local_id, item_template_create)

# SYNOPSIS
#   doQueryAllSysStatus(country_id, webapi_key)
#
# ARGS
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sys_country_status ArrayOfSysStatus - {urn:AllegroWebApi}ArrayOfSysStatus
#
country_id = webapi_key = nil
puts obj.doQueryAllSysStatus(country_id, webapi_key)

# SYNOPSIS
#   doQuerySysStatus(sysvar, country_id, webapi_key)
#
# ARGS
#   sysvar          Int - {http://www.w3.org/2001/XMLSchema}int
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   info            C_String - {http://www.w3.org/2001/XMLSchema}string
#   ver_key         Long - {http://www.w3.org/2001/XMLSchema}long
#
sysvar = country_id = webapi_key = nil
puts obj.doQuerySysStatus(sysvar, country_id, webapi_key)

# SYNOPSIS
#   doRemoveFromBlackList(session_handle, users_id_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   users_id_array  ArrayOfUsersID - {urn:AllegroWebApi}ArrayOfUsersID
#
# RETURNS
#   black_list_result ArrayOfBlackListResStruct - {urn:AllegroWebApi}ArrayOfBlackListResStruct
#
session_handle = users_id_array = nil
puts obj.doRemoveFromBlackList(session_handle, users_id_array)

# SYNOPSIS
#   doRemoveFromWatchList(session_handle, items_id_array)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   items_id_array  ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
# RETURNS
#   watch_list_result ArrayOfItemRemoveWatchStruct - {urn:AllegroWebApi}ArrayOfItemRemoveWatchStruct
#
session_handle = items_id_array = nil
puts obj.doRemoveFromWatchList(session_handle, items_id_array)

# SYNOPSIS
#   doRemoveItemTemplates(session_id, item_template_ids)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_template_ids ArrayOfTemplatesID - {urn:AllegroWebApi}ArrayOfTemplatesID
#
# RETURNS
#   removed_item_templates RemovedItemTemplatesStruct - {urn:AllegroWebApi}RemovedItemTemplatesStruct
#
session_id = item_template_ids = nil
puts obj.doRemoveItemTemplates(session_id, item_template_ids)

# SYNOPSIS
#   doRequestCancelBid(session_handle, request_item_id, request_cancel_reason)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   request_item_id Long - {http://www.w3.org/2001/XMLSchema}long
#   request_cancel_reason C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   request_value   Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = request_item_id = request_cancel_reason = nil
puts obj.doRequestCancelBid(session_handle, request_item_id, request_cancel_reason)

# SYNOPSIS
#   doRequestPayout(session_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   request_payout  RequestPayoutStruct - {urn:AllegroWebApi}RequestPayoutStruct
#
session_id = nil
puts obj.doRequestPayout(session_id)

# SYNOPSIS
#   doRequestSurcharge(session_handle, transaction_id, surcharge_value, surcharge_message_to_buyer)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   transaction_id  Long - {http://www.w3.org/2001/XMLSchema}long
#   surcharge_value C_Float - {http://www.w3.org/2001/XMLSchema}float
#   surcharge_message_to_buyer C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   surcharge_result Int - {http://www.w3.org/2001/XMLSchema}int
#
session_handle = transaction_id = surcharge_value = surcharge_message_to_buyer = nil
puts obj.doRequestSurcharge(session_handle, transaction_id, surcharge_value, surcharge_message_to_buyer)

# SYNOPSIS
#   doSearch(session_handle, search_query)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   search_query    SearchOptType - {urn:AllegroWebApi}SearchOptType
#
# RETURNS
#   search_count    Int - {http://www.w3.org/2001/XMLSchema}int
#   search_count_featured Int - {http://www.w3.org/2001/XMLSchema}int
#   search_array    ArrayOfSearchResponse - {urn:AllegroWebApi}ArrayOfSearchResponse
#   search_excluded_words ArrayOfExcludedWords - {urn:AllegroWebApi}ArrayOfExcludedWords
#   search_categories ArrayOfCategoriesStruct - {urn:AllegroWebApi}ArrayOfCategoriesStruct
#
session_handle = search_query = nil
puts obj.doSearch(session_handle, search_query)

# SYNOPSIS
#   doSellSomeAgain(session_handle, sell_items_array, sell_starting_time, sell_auction_duration, sell_options, local_ids)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   sell_items_array ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   sell_starting_time Long - {http://www.w3.org/2001/XMLSchema}long
#   sell_auction_duration Int - {http://www.w3.org/2001/XMLSchema}int
#   sell_options    Int - {http://www.w3.org/2001/XMLSchema}int
#   local_ids       ArrayOfLocalIds - {urn:AllegroWebApi}ArrayOfLocalIds
#
# RETURNS
#   items_sell_again ArrayOfStructSellAgain - {urn:AllegroWebApi}ArrayOfStructSellAgain
#   items_sell_failed ArrayOfStructSellFailed - {urn:AllegroWebApi}ArrayOfStructSellFailed
#   items_sell_not_found ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
session_handle = sell_items_array = sell_starting_time = sell_auction_duration = sell_options = local_ids = nil
puts obj.doSellSomeAgain(session_handle, sell_items_array, sell_starting_time, sell_auction_duration, sell_options, local_ids)

# SYNOPSIS
#   doSellSomeAgainInShop(session_handle, sell_items_array, sell_starting_time, sell_shop_duration, sell_shop_options, sell_prolong_options, sell_shop_category, local_ids)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   sell_items_array ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#   sell_starting_time Long - {http://www.w3.org/2001/XMLSchema}long
#   sell_shop_duration Int - {http://www.w3.org/2001/XMLSchema}int
#   sell_shop_options Int - {http://www.w3.org/2001/XMLSchema}int
#   sell_prolong_options Int - {http://www.w3.org/2001/XMLSchema}int
#   sell_shop_category Long - {http://www.w3.org/2001/XMLSchema}long
#   local_ids       ArrayOfLocalIds - {urn:AllegroWebApi}ArrayOfLocalIds
#
# RETURNS
#   items_sell_again ArrayOfStructSellAgain - {urn:AllegroWebApi}ArrayOfStructSellAgain
#   items_sell_failed ArrayOfStructSellFailed - {urn:AllegroWebApi}ArrayOfStructSellFailed
#   items_sell_not_found ArrayOfItemsID - {urn:AllegroWebApi}ArrayOfItemsID
#
session_handle = sell_items_array = sell_starting_time = sell_shop_duration = sell_shop_options = sell_prolong_options = sell_shop_category = local_ids = nil
puts obj.doSellSomeAgainInShop(session_handle, sell_items_array, sell_starting_time, sell_shop_duration, sell_shop_options, sell_prolong_options, sell_shop_category, local_ids)

# SYNOPSIS
#   doSendEmailToUser(session_handle, mail_to_user_item_id, mail_to_user_receiver_id, mail_to_user_subject_id, mail_to_user_option, mail_to_user_message)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   mail_to_user_item_id Long - {http://www.w3.org/2001/XMLSchema}long
#   mail_to_user_receiver_id Long - {http://www.w3.org/2001/XMLSchema}long
#   mail_to_user_subject_id Int - {http://www.w3.org/2001/XMLSchema}int
#   mail_to_user_option Int - {http://www.w3.org/2001/XMLSchema}int
#   mail_to_user_message C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   mail_to_user_receiver_id Long - {http://www.w3.org/2001/XMLSchema}long
#   mail_to_user_result C_String - {http://www.w3.org/2001/XMLSchema}string
#
session_handle = mail_to_user_item_id = mail_to_user_receiver_id = mail_to_user_subject_id = mail_to_user_option = mail_to_user_message = nil
puts obj.doSendEmailToUser(session_handle, mail_to_user_item_id, mail_to_user_receiver_id, mail_to_user_subject_id, mail_to_user_option, mail_to_user_message)

# SYNOPSIS
#   doSendPostBuyForm(session_id, new_post_buy_form_seller, new_post_buy_form_common)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   new_post_buy_form_seller ArrayOfNewPostBuyFormSellerStruct - {urn:AllegroWebApi}ArrayOfNewPostBuyFormSellerStruct
#   new_post_buy_form_common NewPostBuyFormCommonStruct - {urn:AllegroWebApi}NewPostBuyFormCommonStruct
#
# RETURNS
#   post_buy_form   PostBuyFormStruct - {urn:AllegroWebApi}PostBuyFormStruct
#
session_id = new_post_buy_form_seller = new_post_buy_form_common = nil
puts obj.doSendPostBuyForm(session_id, new_post_buy_form_seller, new_post_buy_form_common)

# SYNOPSIS
#   doSendRefundForms(session_handle, send_refund_forms_data_arr)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   send_refund_forms_data_arr ArrayOfSendRefundFormStruct - {urn:AllegroWebApi}ArrayOfSendRefundFormStruct
#
# RETURNS
#   send_refund_forms_results_arr ArrayOfSendRefundFormResultStruct - {urn:AllegroWebApi}ArrayOfSendRefundFormResultStruct
#
session_handle = send_refund_forms_data_arr = nil
puts obj.doSendRefundForms(session_handle, send_refund_forms_data_arr)

# SYNOPSIS
#   doSendReminderMessages(session_handle, send_reminder_messages_data_arr)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   send_reminder_messages_data_arr ArrayOfSendReminderMessageStruct - {urn:AllegroWebApi}ArrayOfSendReminderMessageStruct
#
# RETURNS
#   send_reminder_messages_results_arr ArrayOfSendReminderMessageResultStruct - {urn:AllegroWebApi}ArrayOfSendReminderMessageResultStruct
#
session_handle = send_reminder_messages_data_arr = nil
puts obj.doSendReminderMessages(session_handle, send_reminder_messages_data_arr)

# SYNOPSIS
#   doSetUserLicenceDate(admin_session_handle, user_lic_login, user_lic_country, user_lic_date)
#
# ARGS
#   admin_session_handle C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_lic_login  C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_lic_country Int - {http://www.w3.org/2001/XMLSchema}int
#   user_lic_date   C_Float - {http://www.w3.org/2001/XMLSchema}float
#
# RETURNS
#   set_date_value  Int - {http://www.w3.org/2001/XMLSchema}int
#
admin_session_handle = user_lic_login = user_lic_country = user_lic_date = nil
puts obj.doSetUserLicenceDate(admin_session_handle, user_lic_login, user_lic_country, user_lic_date)

# SYNOPSIS
#   doShowCat(session_handle, cat_id, cat_item_state, cat_item_option, cat_item_duration_option, cat_attrib_fields, cat_sort_options, cat_items_price, cat_items_offset, cat_items_limit, cat_order_fulfillment_time)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   cat_id          Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_item_state  Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_item_option Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_item_duration_option DurationTimeInfo - {urn:AllegroWebApi}DurationTimeInfo
#   cat_attrib_fields ArrayOfFieldsValue - {urn:AllegroWebApi}ArrayOfFieldsValue
#   cat_sort_options Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_items_price PriceCatInfo - {urn:AllegroWebApi}PriceCatInfo
#   cat_items_offset Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_items_limit Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_order_fulfillment_time Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   cat_parent_array ArrayOfCatInfoStruct - {urn:AllegroWebApi}ArrayOfCatInfoStruct
#   cat_child_array ArrayOfCatInfoStruct - {urn:AllegroWebApi}ArrayOfCatInfoStruct
#   cat_sister_array ArrayOfCatInfoStruct - {urn:AllegroWebApi}ArrayOfCatInfoStruct
#   cat_items_count Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_items_count_featured Int - {http://www.w3.org/2001/XMLSchema}int
#   cat_items_array ArrayOfSearchResponse - {urn:AllegroWebApi}ArrayOfSearchResponse
#
session_handle = cat_id = cat_item_state = cat_item_option = cat_item_duration_option = cat_attrib_fields = cat_sort_options = cat_items_price = cat_items_offset = cat_items_limit = cat_order_fulfillment_time = nil
puts obj.doShowCat(session_handle, cat_id, cat_item_state, cat_item_option, cat_item_duration_option, cat_attrib_fields, cat_sort_options, cat_items_price, cat_items_offset, cat_items_limit, cat_order_fulfillment_time)

# SYNOPSIS
#   doShowItemInfo(session_handle, item_id, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   get_desc        Int - {http://www.w3.org/2001/XMLSchema}int
#   get_image_url   Int - {http://www.w3.org/2001/XMLSchema}int
#   get_attribs     Int - {http://www.w3.org/2001/XMLSchema}int
#   get_postage_options Int - {http://www.w3.org/2001/XMLSchema}int
#   get_company_info Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   item_list_info  ItemInfo - {urn:AllegroWebApi}ItemInfo
#   item_cat_path   ArrayOfItemCatList - {urn:AllegroWebApi}ArrayOfItemCatList
#   item_img_list   ArrayOfItemImageList - {urn:AllegroWebApi}ArrayOfItemImageList
#   item_attrib_list ArrayOfAttribStruct - {urn:AllegroWebApi}ArrayOfAttribStruct
#   item_postage_options ArrayOfPostageStruct - {urn:AllegroWebApi}ArrayOfPostageStruct
#   item_payment_options ItemPaymentOptions - {urn:AllegroWebApi}ItemPaymentOptions
#   item_company_info CompanyInfoStruct - {urn:AllegroWebApi}CompanyInfoStruct
#
session_handle = item_id = get_desc = get_image_url = get_attribs = get_postage_options = get_company_info = nil
puts obj.doShowItemInfo(session_handle, item_id, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info)

# SYNOPSIS
#   doShowItemInfoExt(session_handle, item_id, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info, get_product_info)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   get_desc        Int - {http://www.w3.org/2001/XMLSchema}int
#   get_image_url   Int - {http://www.w3.org/2001/XMLSchema}int
#   get_attribs     Int - {http://www.w3.org/2001/XMLSchema}int
#   get_postage_options Int - {http://www.w3.org/2001/XMLSchema}int
#   get_company_info Int - {http://www.w3.org/2001/XMLSchema}int
#   get_product_info Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   item_list_info_ext ItemInfoExt - {urn:AllegroWebApi}ItemInfoExt
#   item_cat_path   ArrayOfItemCatList - {urn:AllegroWebApi}ArrayOfItemCatList
#   item_img_list   ArrayOfItemImageList - {urn:AllegroWebApi}ArrayOfItemImageList
#   item_attrib_list ArrayOfAttribStruct - {urn:AllegroWebApi}ArrayOfAttribStruct
#   item_postage_options ArrayOfPostageStruct - {urn:AllegroWebApi}ArrayOfPostageStruct
#   item_payment_options ItemPaymentOptions - {urn:AllegroWebApi}ItemPaymentOptions
#   item_company_info CompanyInfoStruct - {urn:AllegroWebApi}CompanyInfoStruct
#   item_product_info ProductStruct - {urn:AllegroWebApi}ProductStruct
#
session_handle = item_id = get_desc = get_image_url = get_attribs = get_postage_options = get_company_info = get_product_info = nil
puts obj.doShowItemInfoExt(session_handle, item_id, get_desc, get_image_url, get_attribs, get_postage_options, get_company_info, get_product_info)

# SYNOPSIS
#   doShowUser(webapi_key, country_id, user_id, user_login)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   user_login      C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_country    Int - {http://www.w3.org/2001/XMLSchema}int
#   user_create_date Long - {http://www.w3.org/2001/XMLSchema}long
#   user_login_date Long - {http://www.w3.org/2001/XMLSchema}long
#   user_rating     Int - {http://www.w3.org/2001/XMLSchema}int
#   user_is_new_user Int - {http://www.w3.org/2001/XMLSchema}int
#   user_not_activated Int - {http://www.w3.org/2001/XMLSchema}int
#   user_closed     Int - {http://www.w3.org/2001/XMLSchema}int
#   user_blocked    Int - {http://www.w3.org/2001/XMLSchema}int
#   user_terminated Int - {http://www.w3.org/2001/XMLSchema}int
#   user_has_page   Int - {http://www.w3.org/2001/XMLSchema}int
#   user_is_sseller Int - {http://www.w3.org/2001/XMLSchema}int
#   user_is_eco     Int - {http://www.w3.org/2001/XMLSchema}int
#   user_positive_feedback ShowUserFeedbacks - {urn:AllegroWebApi}ShowUserFeedbacks
#   user_negative_feedback ShowUserFeedbacks - {urn:AllegroWebApi}ShowUserFeedbacks
#   user_neutral_feedback ShowUserFeedbacks - {urn:AllegroWebApi}ShowUserFeedbacks
#   user_junior_status Int - {http://www.w3.org/2001/XMLSchema}int
#   user_has_shop   Int - {http://www.w3.org/2001/XMLSchema}int
#   user_company_icon Int - {http://www.w3.org/2001/XMLSchema}int
#   user_sell_rating_count Int - {http://www.w3.org/2001/XMLSchema}int
#   user_sell_rating_average ArrayOfSellRatingAverageStruct - {urn:AllegroWebApi}ArrayOfSellRatingAverageStruct
#   user_is_allegro_standard Int - {http://www.w3.org/2001/XMLSchema}int
#   user_is_b2c_seller Int - {http://www.w3.org/2001/XMLSchema}int
#
webapi_key = country_id = user_id = user_login = nil
puts obj.doShowUser(webapi_key, country_id, user_id, user_login)

# SYNOPSIS
#   doShowUserPage(webapi_key, country_id, user_id)
#
# ARGS
#   webapi_key      C_String - {http://www.w3.org/2001/XMLSchema}string
#   country_id      Int - {http://www.w3.org/2001/XMLSchema}int
#   user_id         Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   user_page_content C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_page_pharmacy_permit C_String - {http://www.w3.org/2001/XMLSchema}string
#   user_page_alcohol_permit C_String - {http://www.w3.org/2001/XMLSchema}string
#
webapi_key = country_id = user_id = nil
puts obj.doShowUserPage(webapi_key, country_id, user_id)

# SYNOPSIS
#   doTranslateProductID(session_id, bdk_product_id)
#
# ARGS
#   session_id      C_String - {http://www.w3.org/2001/XMLSchema}string
#   bdk_product_id  Long - {http://www.w3.org/2001/XMLSchema}long
#
# RETURNS
#   translated_product TranslatedProductStruct - {urn:AllegroWebApi}TranslatedProductStruct
#
session_id = bdk_product_id = nil
puts obj.doTranslateProductID(session_id, bdk_product_id)

# SYNOPSIS
#   doVerifyItem(session_handle, local_id)
#
# ARGS
#   session_handle  C_String - {http://www.w3.org/2001/XMLSchema}string
#   local_id        Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   item_id         Long - {http://www.w3.org/2001/XMLSchema}long
#   item_listed     Int - {http://www.w3.org/2001/XMLSchema}int
#   item_starting_time Long - {http://www.w3.org/2001/XMLSchema}long
#
session_handle = local_id = nil
puts obj.doVerifyItem(session_handle, local_id)


