require 'xsd/qname'

# {urn:AllegroWebApi}ActionDataStruct
#   action_key - SOAP::SOAPString
#   action_value - SOAP::SOAPString
class ActionDataStruct
  attr_accessor :action_key
  attr_accessor :action_value

  def initialize(action_key = nil, action_value = nil)
    @action_key = action_key
    @action_value = action_value
  end
end

# {urn:AllegroWebApi}AddressInfoStruct
#   address_type - SOAP::SOAPInt
#   address_user_data - AddressUserDataStruct
class AddressInfoStruct
  attr_accessor :address_type
  attr_accessor :address_user_data

  def initialize(address_type = nil, address_user_data = nil)
    @address_type = address_type
    @address_user_data = address_user_data
  end
end

# {urn:AllegroWebApi}AddressUserDataStruct
#   user_company - SOAP::SOAPString
#   user_full_name - SOAP::SOAPString
#   user_address - SOAP::SOAPString
#   user_postcode - SOAP::SOAPString
#   user_city - SOAP::SOAPString
class AddressUserDataStruct
  attr_accessor :user_company
  attr_accessor :user_full_name
  attr_accessor :user_address
  attr_accessor :user_postcode
  attr_accessor :user_city

  def initialize(user_company = nil, user_full_name = nil, user_address = nil, user_postcode = nil, user_city = nil)
    @user_company = user_company
    @user_full_name = user_full_name
    @user_address = user_address
    @user_postcode = user_postcode
    @user_city = user_city
  end
end

# {urn:AllegroWebApi}AdvertInfoStruct
#   item_is_advert - SOAP::SOAPInt
#   item_advert_id - SOAP::SOAPString
class AdvertInfoStruct
  attr_accessor :item_is_advert
  attr_accessor :item_advert_id

  def initialize(item_is_advert = nil, item_advert_id = nil)
    @item_is_advert = item_is_advert
    @item_advert_id = item_advert_id
  end
end

# {urn:AllegroWebApi}AlcoholDataStruct
#   alcohol_opening_date - SOAP::SOAPString
#   alcohol_expiration_date - SOAP::SOAPString
#   alcohol_shop_name - SOAP::SOAPString
#   alcohol_shop_address - SOAP::SOAPString
#   alcohol_shop_postcode - SOAP::SOAPString
#   alcohol_shop_city - SOAP::SOAPString
#   alcohol_shop_commune - SOAP::SOAPString
#   alcohol_shop_country_id - SOAP::SOAPInt
#   alcohol_shop_state_id - SOAP::SOAPInt
#   alcohol_permit_number - SOAP::SOAPString
#   alcohol_permit_authority - SOAP::SOAPString
#   alcohol_permit_info - SOAP::SOAPString
class AlcoholDataStruct
  attr_accessor :alcohol_opening_date
  attr_accessor :alcohol_expiration_date
  attr_accessor :alcohol_shop_name
  attr_accessor :alcohol_shop_address
  attr_accessor :alcohol_shop_postcode
  attr_accessor :alcohol_shop_city
  attr_accessor :alcohol_shop_commune
  attr_accessor :alcohol_shop_country_id
  attr_accessor :alcohol_shop_state_id
  attr_accessor :alcohol_permit_number
  attr_accessor :alcohol_permit_authority
  attr_accessor :alcohol_permit_info

  def initialize(alcohol_opening_date = nil, alcohol_expiration_date = nil, alcohol_shop_name = nil, alcohol_shop_address = nil, alcohol_shop_postcode = nil, alcohol_shop_city = nil, alcohol_shop_commune = nil, alcohol_shop_country_id = nil, alcohol_shop_state_id = nil, alcohol_permit_number = nil, alcohol_permit_authority = nil, alcohol_permit_info = nil)
    @alcohol_opening_date = alcohol_opening_date
    @alcohol_expiration_date = alcohol_expiration_date
    @alcohol_shop_name = alcohol_shop_name
    @alcohol_shop_address = alcohol_shop_address
    @alcohol_shop_postcode = alcohol_shop_postcode
    @alcohol_shop_city = alcohol_shop_city
    @alcohol_shop_commune = alcohol_shop_commune
    @alcohol_shop_country_id = alcohol_shop_country_id
    @alcohol_shop_state_id = alcohol_shop_state_id
    @alcohol_permit_number = alcohol_permit_number
    @alcohol_permit_authority = alcohol_permit_authority
    @alcohol_permit_info = alcohol_permit_info
  end
end

# {urn:AllegroWebApi}AmountStruct
#   amount_value - SOAP::SOAPFloat
#   amount_currency_sign - SOAP::SOAPString
class AmountStruct
  attr_accessor :amount_value
  attr_accessor :amount_currency_sign

  def initialize(amount_value = nil, amount_currency_sign = nil)
    @amount_value = amount_value
    @amount_currency_sign = amount_currency_sign
  end
end

# {urn:AllegroWebApi}AttribStruct
#   attrib_name - SOAP::SOAPString
#   attrib_values - ArrayOfAttribValues
class AttribStruct
  attr_accessor :attrib_name
  attr_accessor :attrib_values

  def initialize(attrib_name = nil, attrib_values = nil)
    @attrib_name = attrib_name
    @attrib_values = attrib_values
  end
end

# {urn:AllegroWebApi}BidListStruct2
#   bids_array - BidList2
class BidListStruct2
  attr_accessor :bids_array

  def initialize(bids_array = nil)
    @bids_array = bids_array
  end
end

# {urn:AllegroWebApi}BillingDataType
#   billing_id - SOAP::SOAPInt
#   billing_type - SOAP::SOAPString
#   billing_fixperc - SOAP::SOAPString
#   billing_name - SOAP::SOAPString
#   billing_range_from - SOAP::SOAPString
#   billing_range_to - SOAP::SOAPString
#   billing_cat - SOAP::SOAPString
#   billing_rate - SOAP::SOAPString
#   billing_auction_type - SOAP::SOAPInt
class BillingDataType
  attr_accessor :billing_id
  attr_accessor :billing_type
  attr_accessor :billing_fixperc
  attr_accessor :billing_name
  attr_accessor :billing_range_from
  attr_accessor :billing_range_to
  attr_accessor :billing_cat
  attr_accessor :billing_rate
  attr_accessor :billing_auction_type

  def initialize(billing_id = nil, billing_type = nil, billing_fixperc = nil, billing_name = nil, billing_range_from = nil, billing_range_to = nil, billing_cat = nil, billing_rate = nil, billing_auction_type = nil)
    @billing_id = billing_id
    @billing_type = billing_type
    @billing_fixperc = billing_fixperc
    @billing_name = billing_name
    @billing_range_from = billing_range_from
    @billing_range_to = billing_range_to
    @billing_cat = billing_cat
    @billing_rate = billing_rate
    @billing_auction_type = billing_auction_type
  end
end

# {urn:AllegroWebApi}BlackListResStruct
#   user_id - SOAP::SOAPLong
#   result - SOAP::SOAPInt
class BlackListResStruct
  attr_accessor :user_id
  attr_accessor :result

  def initialize(user_id = nil, result = nil)
    @user_id = user_id
    @result = result
  end
end

# {urn:AllegroWebApi}BlackListStruct
#   user_id - SOAP::SOAPLong
#   user_login - SOAP::SOAPString
#   user_rating - SOAP::SOAPInt
#   user_country - SOAP::SOAPInt
class BlackListStruct
  attr_accessor :user_id
  attr_accessor :user_login
  attr_accessor :user_rating
  attr_accessor :user_country

  def initialize(user_id = nil, user_login = nil, user_rating = nil, user_country = nil)
    @user_id = user_id
    @user_login = user_login
    @user_rating = user_rating
    @user_country = user_country
  end
end

# {urn:AllegroWebApi}CancelRefundDataStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
class CancelRefundDataStruct
  attr_accessor :item_id
  attr_accessor :buyer_id

  def initialize(item_id = nil, buyer_id = nil)
    @item_id = item_id
    @buyer_id = buyer_id
  end
end

# {urn:AllegroWebApi}CancelRefundFormResultStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   cancel_refund_result - SOAP::SOAPInt
#   cancel_refund_err_code - SOAP::SOAPString
#   cancel_refund_err_msg - SOAP::SOAPString
class CancelRefundFormResultStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :cancel_refund_result
  attr_accessor :cancel_refund_err_code
  attr_accessor :cancel_refund_err_msg

  def initialize(item_id = nil, buyer_id = nil, cancel_refund_result = nil, cancel_refund_err_code = nil, cancel_refund_err_msg = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @cancel_refund_result = cancel_refund_result
    @cancel_refund_err_code = cancel_refund_err_code
    @cancel_refund_err_msg = cancel_refund_err_msg
  end
end

# {urn:AllegroWebApi}CancelRefundWarningResultStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   cancel_warning_result - SOAP::SOAPInt
#   cancel_warning_err_code - SOAP::SOAPString
#   cancel_warning_err_msg - SOAP::SOAPString
class CancelRefundWarningResultStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :cancel_warning_result
  attr_accessor :cancel_warning_err_code
  attr_accessor :cancel_warning_err_msg

  def initialize(item_id = nil, buyer_id = nil, cancel_warning_result = nil, cancel_warning_err_code = nil, cancel_warning_err_msg = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @cancel_warning_result = cancel_warning_result
    @cancel_warning_err_code = cancel_warning_err_code
    @cancel_warning_err_msg = cancel_warning_err_msg
  end
end

# {urn:AllegroWebApi}CancelRefundWarningStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
class CancelRefundWarningStruct
  attr_accessor :item_id
  attr_accessor :buyer_id

  def initialize(item_id = nil, buyer_id = nil)
    @item_id = item_id
    @buyer_id = buyer_id
  end
end

# {urn:AllegroWebApi}CatInfoType
#   cat_id - SOAP::SOAPInt
#   cat_name - SOAP::SOAPString
#   cat_parent - SOAP::SOAPInt
#   cat_position - SOAP::SOAPInt
#   cat_is_product_catalogue_enabled - SOAP::SOAPInt
class CatInfoType
  attr_accessor :cat_id
  attr_accessor :cat_name
  attr_accessor :cat_parent
  attr_accessor :cat_position
  attr_accessor :cat_is_product_catalogue_enabled

  def initialize(cat_id = nil, cat_name = nil, cat_parent = nil, cat_position = nil, cat_is_product_catalogue_enabled = nil)
    @cat_id = cat_id
    @cat_name = cat_name
    @cat_parent = cat_parent
    @cat_position = cat_position
    @cat_is_product_catalogue_enabled = cat_is_product_catalogue_enabled
  end
end

# {urn:AllegroWebApi}CategoriesStruct
#   category_id - SOAP::SOAPInt
#   category_name - SOAP::SOAPString
#   category_parent_id - SOAP::SOAPInt
#   category_items_count - SOAP::SOAPInt
class CategoriesStruct
  attr_accessor :category_id
  attr_accessor :category_name
  attr_accessor :category_parent_id
  attr_accessor :category_items_count

  def initialize(category_id = nil, category_name = nil, category_parent_id = nil, category_items_count = nil)
    @category_id = category_id
    @category_name = category_name
    @category_parent_id = category_parent_id
    @category_items_count = category_items_count
  end
end

# {urn:AllegroWebApi}CategoryData
#   cat_id - SOAP::SOAPInt
#   cat_parent - SOAP::SOAPInt
#   cat_country - SOAP::SOAPInt
#   cat_level - SOAP::SOAPInt
#   cat_is_leaf - SOAP::SOAPInt
#   cat_name - SOAP::SOAPString
#   cat_options - SOAP::SOAPInt
class CategoryData
  attr_accessor :cat_id
  attr_accessor :cat_parent
  attr_accessor :cat_country
  attr_accessor :cat_level
  attr_accessor :cat_is_leaf
  attr_accessor :cat_name
  attr_accessor :cat_options

  def initialize(cat_id = nil, cat_parent = nil, cat_country = nil, cat_level = nil, cat_is_leaf = nil, cat_name = nil, cat_options = nil)
    @cat_id = cat_id
    @cat_parent = cat_parent
    @cat_country = cat_country
    @cat_level = cat_level
    @cat_is_leaf = cat_is_leaf
    @cat_name = cat_name
    @cat_options = cat_options
  end
end

# {urn:AllegroWebApi}ChangedItemStruct
#   item_id - SOAP::SOAPLong
#   item_fields - ArrayOfFieldsValue
#   item_surcharge - ArrayOfItemSurchargeStruct
class ChangedItemStruct
  attr_accessor :item_id
  attr_accessor :item_fields
  attr_accessor :item_surcharge

  def initialize(item_id = nil, item_fields = nil, item_surcharge = nil)
    @item_id = item_id
    @item_fields = item_fields
    @item_surcharge = item_surcharge
  end
end

# {urn:AllegroWebApi}CompanyExtraDataStruct
#   company_type - SOAP::SOAPString
#   company_nip - SOAP::SOAPString
#   company_regon - SOAP::SOAPString
#   company_krs - SOAP::SOAPString
#   company_activity_sort - SOAP::SOAPString
class CompanyExtraDataStruct
  attr_accessor :company_type
  attr_accessor :company_nip
  attr_accessor :company_regon
  attr_accessor :company_krs
  attr_accessor :company_activity_sort

  def initialize(company_type = nil, company_nip = nil, company_regon = nil, company_krs = nil, company_activity_sort = nil)
    @company_type = company_type
    @company_nip = company_nip
    @company_regon = company_regon
    @company_krs = company_krs
    @company_activity_sort = company_activity_sort
  end
end

# {urn:AllegroWebApi}CompanyInfoStruct
#   company_first_name - SOAP::SOAPString
#   company_last_name - SOAP::SOAPString
#   company_name - SOAP::SOAPString
#   company_address - SOAP::SOAPString
#   company_postcode - SOAP::SOAPString
#   company_city - SOAP::SOAPString
#   company_nip - SOAP::SOAPString
class CompanyInfoStruct
  attr_accessor :company_first_name
  attr_accessor :company_last_name
  attr_accessor :company_name
  attr_accessor :company_address
  attr_accessor :company_postcode
  attr_accessor :company_city
  attr_accessor :company_nip

  def initialize(company_first_name = nil, company_last_name = nil, company_name = nil, company_address = nil, company_postcode = nil, company_city = nil, company_nip = nil)
    @company_first_name = company_first_name
    @company_last_name = company_last_name
    @company_name = company_name
    @company_address = company_address
    @company_postcode = company_postcode
    @company_city = company_city
    @company_nip = company_nip
  end
end

# {urn:AllegroWebApi}CompanySecondAddressStruct
#   company_worker_first_name - SOAP::SOAPString
#   company_worker_last_name - SOAP::SOAPString
#   company_address - SOAP::SOAPString
#   company_postcode - SOAP::SOAPString
#   company_city - SOAP::SOAPString
#   company_country_id - SOAP::SOAPInt
#   company_state_id - SOAP::SOAPInt
class CompanySecondAddressStruct
  attr_accessor :company_worker_first_name
  attr_accessor :company_worker_last_name
  attr_accessor :company_address
  attr_accessor :company_postcode
  attr_accessor :company_city
  attr_accessor :company_country_id
  attr_accessor :company_state_id

  def initialize(company_worker_first_name = nil, company_worker_last_name = nil, company_address = nil, company_postcode = nil, company_city = nil, company_country_id = nil, company_state_id = nil)
    @company_worker_first_name = company_worker_first_name
    @company_worker_last_name = company_worker_last_name
    @company_address = company_address
    @company_postcode = company_postcode
    @company_city = company_city
    @company_country_id = company_country_id
    @company_state_id = company_state_id
  end
end

# {urn:AllegroWebApi}CountryInfoType
#   country_id - SOAP::SOAPInt
#   country_name - SOAP::SOAPString
class CountryInfoType
  attr_accessor :country_id
  attr_accessor :country_name

  def initialize(country_id = nil, country_name = nil)
    @country_id = country_id
    @country_name = country_name
  end
end

# {urn:AllegroWebApi}CreatedItemTemplateStruct
#   item_template_id - SOAP::SOAPInt
class CreatedItemTemplateStruct
  attr_accessor :item_template_id

  def initialize(item_template_id = nil)
    @item_template_id = item_template_id
  end
end

# {urn:AllegroWebApi}DealsStruct
#   deal_id - SOAP::SOAPLong
#   deal_date - SOAP::SOAPLong
#   deal_quantity - SOAP::SOAPInt
#   deal_amount_original - SOAP::SOAPFloat
#   deal_amount_discounted - SOAP::SOAPFloat
class DealsStruct
  attr_accessor :deal_id
  attr_accessor :deal_date
  attr_accessor :deal_quantity
  attr_accessor :deal_amount_original
  attr_accessor :deal_amount_discounted

  def initialize(deal_id = nil, deal_date = nil, deal_quantity = nil, deal_amount_original = nil, deal_amount_discounted = nil)
    @deal_id = deal_id
    @deal_date = deal_date
    @deal_quantity = deal_quantity
    @deal_amount_original = deal_amount_original
    @deal_amount_discounted = deal_amount_discounted
  end
end

# {urn:AllegroWebApi}DiscountDataStruct
#   item_id - SOAP::SOAPLong
#   coupon_id - SOAP::SOAPString
class DiscountDataStruct
  attr_accessor :item_id
  attr_accessor :coupon_id

  def initialize(item_id = nil, coupon_id = nil)
    @item_id = item_id
    @coupon_id = coupon_id
  end
end

# {urn:AllegroWebApi}DurationTimeInfo
#   duration_option - SOAP::SOAPInt
#   duration_value - SOAP::SOAPInt
class DurationTimeInfo
  attr_accessor :duration_option
  attr_accessor :duration_value

  def initialize(duration_option = nil, duration_value = nil)
    @duration_option = duration_option
    @duration_value = duration_value
  end
end

# {urn:AllegroWebApi}FavouritesCategoriesStruct
#   s_category_id - SOAP::SOAPInt
#   s_subscription_status - SOAP::SOAPInt
#   s_position - SOAP::SOAPInt
#   s_buy_now_only - SOAP::SOAPInt
class FavouritesCategoriesStruct
  attr_accessor :s_category_id
  attr_accessor :s_subscription_status
  attr_accessor :s_position
  attr_accessor :s_buy_now_only

  def initialize(s_category_id = nil, s_subscription_status = nil, s_position = nil, s_buy_now_only = nil)
    @s_category_id = s_category_id
    @s_subscription_status = s_subscription_status
    @s_position = s_position
    @s_buy_now_only = s_buy_now_only
  end
end

# {urn:AllegroWebApi}FavouritesSellersStruct
#   s_fav_user_id - SOAP::SOAPInt
#   s_subscription_status - SOAP::SOAPInt
#   s_position - SOAP::SOAPInt
#   s_buy_now_only - SOAP::SOAPInt
class FavouritesSellersStruct
  attr_accessor :s_fav_user_id
  attr_accessor :s_subscription_status
  attr_accessor :s_position
  attr_accessor :s_buy_now_only

  def initialize(s_fav_user_id = nil, s_subscription_status = nil, s_position = nil, s_buy_now_only = nil)
    @s_fav_user_id = s_fav_user_id
    @s_subscription_status = s_subscription_status
    @s_position = s_position
    @s_buy_now_only = s_buy_now_only
  end
end

# {urn:AllegroWebApi}FeedbackList
#   f_id - SOAP::SOAPInt
#   f_item_id - SOAP::SOAPLong
#   f_from_id - SOAP::SOAPInt
#   f_to_id - SOAP::SOAPInt
#   f_date - SOAP::SOAPLong
#   f_type - SOAP::SOAPString
#   f_desc - SOAP::SOAPString
#   f_correct_date - SOAP::SOAPLong
#   f_correct_text - SOAP::SOAPString
#   f_receiver_type - SOAP::SOAPString
#   f_user_login - SOAP::SOAPString
#   f_user_rating - SOAP::SOAPString
#   f_user_country - SOAP::SOAPString
#   f_user_blocked - SOAP::SOAPInt
#   f_user_sseller - SOAP::SOAPInt
#   f_cancelled - SOAP::SOAPLong
class FeedbackList
  attr_accessor :f_id
  attr_accessor :f_item_id
  attr_accessor :f_from_id
  attr_accessor :f_to_id
  attr_accessor :f_date
  attr_accessor :f_type
  attr_accessor :f_desc
  attr_accessor :f_correct_date
  attr_accessor :f_correct_text
  attr_accessor :f_receiver_type
  attr_accessor :f_user_login
  attr_accessor :f_user_rating
  attr_accessor :f_user_country
  attr_accessor :f_user_blocked
  attr_accessor :f_user_sseller
  attr_accessor :f_cancelled

  def initialize(f_id = nil, f_item_id = nil, f_from_id = nil, f_to_id = nil, f_date = nil, f_type = nil, f_desc = nil, f_correct_date = nil, f_correct_text = nil, f_receiver_type = nil, f_user_login = nil, f_user_rating = nil, f_user_country = nil, f_user_blocked = nil, f_user_sseller = nil, f_cancelled = nil)
    @f_id = f_id
    @f_item_id = f_item_id
    @f_from_id = f_from_id
    @f_to_id = f_to_id
    @f_date = f_date
    @f_type = f_type
    @f_desc = f_desc
    @f_correct_date = f_correct_date
    @f_correct_text = f_correct_text
    @f_receiver_type = f_receiver_type
    @f_user_login = f_user_login
    @f_user_rating = f_user_rating
    @f_user_country = f_user_country
    @f_user_blocked = f_user_blocked
    @f_user_sseller = f_user_sseller
    @f_cancelled = f_cancelled
  end
end

# {urn:AllegroWebApi}FeedbackManyStruct
#   fe_item_id - SOAP::SOAPLong
#   fe_use_comment_template - SOAP::SOAPInt
#   fe_to_user_id - SOAP::SOAPInt
#   fe_comment - SOAP::SOAPString
#   fe_comment_type - SOAP::SOAPString
#   fe_op - SOAP::SOAPInt
#   fe_rating - ArrayOfSellRatingEstimationStruct
class FeedbackManyStruct
  attr_accessor :fe_item_id
  attr_accessor :fe_use_comment_template
  attr_accessor :fe_to_user_id
  attr_accessor :fe_comment
  attr_accessor :fe_comment_type
  attr_accessor :fe_op
  attr_accessor :fe_rating

  def initialize(fe_item_id = nil, fe_use_comment_template = nil, fe_to_user_id = nil, fe_comment = nil, fe_comment_type = nil, fe_op = nil, fe_rating = nil)
    @fe_item_id = fe_item_id
    @fe_use_comment_template = fe_use_comment_template
    @fe_to_user_id = fe_to_user_id
    @fe_comment = fe_comment
    @fe_comment_type = fe_comment_type
    @fe_op = fe_op
    @fe_rating = fe_rating
  end
end

# {urn:AllegroWebApi}FeedbackResultStruct
#   fe_item_id - SOAP::SOAPLong
#   fe_id - SOAP::SOAPInt
#   fe_fault_code - SOAP::SOAPString
#   fe_fault_desc - SOAP::SOAPString
class FeedbackResultStruct
  attr_accessor :fe_item_id
  attr_accessor :fe_id
  attr_accessor :fe_fault_code
  attr_accessor :fe_fault_desc

  def initialize(fe_item_id = nil, fe_id = nil, fe_fault_code = nil, fe_fault_desc = nil)
    @fe_item_id = fe_item_id
    @fe_id = fe_id
    @fe_fault_code = fe_fault_code
    @fe_fault_desc = fe_fault_desc
  end
end

# {urn:AllegroWebApi}FieldsValue
#   fid - SOAP::SOAPInt
#   fvalue_string - SOAP::SOAPString
#   fvalue_int - SOAP::SOAPInt
#   fvalue_float - SOAP::SOAPFloat
#   fvalue_image - SOAP::SOAPBase64
#   fvalue_datetime - SOAP::SOAPFloat
#   fvalue_date - SOAP::SOAPString
#   fvalue_range_int - RangeIntValueStruct
#   fvalue_range_float - RangeFloatValueStruct
#   fvalue_range_date - RangeDateValueStruct
class FieldsValue
  attr_accessor :fid
  attr_accessor :fvalue_string
  attr_accessor :fvalue_int
  attr_accessor :fvalue_float
  attr_accessor :fvalue_image
  attr_accessor :fvalue_datetime
  attr_accessor :fvalue_date
  attr_accessor :fvalue_range_int
  attr_accessor :fvalue_range_float
  attr_accessor :fvalue_range_date

  def initialize(fid = nil, fvalue_string = nil, fvalue_int = nil, fvalue_float = nil, fvalue_image = nil, fvalue_datetime = nil, fvalue_date = nil, fvalue_range_int = nil, fvalue_range_float = nil, fvalue_range_date = nil)
    @fid = fid
    @fvalue_string = fvalue_string
    @fvalue_int = fvalue_int
    @fvalue_float = fvalue_float
    @fvalue_image = fvalue_image
    @fvalue_datetime = fvalue_datetime
    @fvalue_date = fvalue_date
    @fvalue_range_int = fvalue_range_int
    @fvalue_range_float = fvalue_range_float
    @fvalue_range_date = fvalue_range_date
  end
end

# {urn:AllegroWebApi}FilledPostBuyFormsStruct
#   transaction_ids - ArrayOfTransactionsID
class FilledPostBuyFormsStruct
  attr_accessor :transaction_ids

  def initialize(transaction_ids = nil)
    @transaction_ids = transaction_ids
  end
end

# {urn:AllegroWebApi}FinishFailureStruct
#   finish_item_id - SOAP::SOAPLong
#   finish_error_code - SOAP::SOAPString
#   finish_error_message - SOAP::SOAPString
class FinishFailureStruct
  attr_accessor :finish_item_id
  attr_accessor :finish_error_code
  attr_accessor :finish_error_message

  def initialize(finish_item_id = nil, finish_error_code = nil, finish_error_message = nil)
    @finish_item_id = finish_item_id
    @finish_error_code = finish_error_code
    @finish_error_message = finish_error_message
  end
end

# {urn:AllegroWebApi}FinishItemsStruct
#   finish_item_id - SOAP::SOAPLong
#   finish_cancel_all_bids - SOAP::SOAPInt
#   finish_cancel_reason - SOAP::SOAPString
class FinishItemsStruct
  attr_accessor :finish_item_id
  attr_accessor :finish_cancel_all_bids
  attr_accessor :finish_cancel_reason

  def initialize(finish_item_id = nil, finish_cancel_all_bids = nil, finish_cancel_reason = nil)
    @finish_item_id = finish_item_id
    @finish_cancel_all_bids = finish_cancel_all_bids
    @finish_cancel_reason = finish_cancel_reason
  end
end

# {urn:AllegroWebApi}FulfillmentTimeStruct
#   fulfillment_time_from - SOAP::SOAPInt
#   fulfillment_time_to - SOAP::SOAPInt
class FulfillmentTimeStruct
  attr_accessor :fulfillment_time_from
  attr_accessor :fulfillment_time_to

  def initialize(fulfillment_time_from = nil, fulfillment_time_to = nil)
    @fulfillment_time_from = fulfillment_time_from
    @fulfillment_time_to = fulfillment_time_to
  end
end

# {urn:AllegroWebApi}InfoCatList
#   cat_id - SOAP::SOAPLong
#   cat_name - SOAP::SOAPString
#   cat_items_count - SOAP::SOAPLong
class InfoCatList
  attr_accessor :cat_id
  attr_accessor :cat_name
  attr_accessor :cat_items_count

  def initialize(cat_id = nil, cat_name = nil, cat_items_count = nil)
    @cat_id = cat_id
    @cat_name = cat_name
    @cat_items_count = cat_items_count
  end
end

# {urn:AllegroWebApi}InvoiceDataStruct
#   company_name - SOAP::SOAPString
#   company_nip - SOAP::SOAPString
class InvoiceDataStruct
  attr_accessor :company_name
  attr_accessor :company_nip

  def initialize(company_name = nil, company_nip = nil)
    @company_name = company_name
    @company_nip = company_nip
  end
end

# {urn:AllegroWebApi}InvoiceInfoStruct
#   invoice_address_type - SOAP::SOAPInt
#   invoice_address_data - AddressUserDataStruct
#   invoice_nip - SOAP::SOAPString
class InvoiceInfoStruct
  attr_accessor :invoice_address_type
  attr_accessor :invoice_address_data
  attr_accessor :invoice_nip

  def initialize(invoice_address_type = nil, invoice_address_data = nil, invoice_nip = nil)
    @invoice_address_type = invoice_address_type
    @invoice_address_data = invoice_address_data
    @invoice_nip = invoice_nip
  end
end

# {urn:AllegroWebApi}ItemBilling
#   bi_name - SOAP::SOAPString
#   bi_value - SOAP::SOAPString
class ItemBilling
  attr_accessor :bi_name
  attr_accessor :bi_value

  def initialize(bi_name = nil, bi_value = nil)
    @bi_name = bi_name
    @bi_value = bi_value
  end
end

# {urn:AllegroWebApi}ItemCatList
#   cat_level - SOAP::SOAPInt
#   cat_id - SOAP::SOAPLong
#   cat_name - SOAP::SOAPString
class ItemCatList
  attr_accessor :cat_level
  attr_accessor :cat_id
  attr_accessor :cat_name

  def initialize(cat_level = nil, cat_id = nil, cat_name = nil)
    @cat_level = cat_level
    @cat_id = cat_id
    @cat_name = cat_name
  end
end

# {urn:AllegroWebApi}ItemDescriptionStruct
#   description_result - SOAP::SOAPString
class ItemDescriptionStruct
  attr_accessor :description_result

  def initialize(description_result = nil)
    @description_result = description_result
  end
end

# {urn:AllegroWebApi}ItemDiscountCouponStruct
#   item_price_original - PriceStruct
#   item_price_discounted - PriceStruct
class ItemDiscountCouponStruct
  attr_accessor :item_price_original
  attr_accessor :item_price_discounted

  def initialize(item_price_original = nil, item_price_discounted = nil)
    @item_price_original = item_price_original
    @item_price_discounted = item_price_discounted
  end
end

# {urn:AllegroWebApi}ItemGetImage
#   it_id - SOAP::SOAPLong
#   it_seller_id - SOAP::SOAPLong
#   it_foto_count - SOAP::SOAPInt
class ItemGetImage
  attr_accessor :it_id
  attr_accessor :it_seller_id
  attr_accessor :it_foto_count

  def initialize(it_id = nil, it_seller_id = nil, it_foto_count = nil)
    @it_id = it_id
    @it_seller_id = it_seller_id
    @it_foto_count = it_foto_count
  end
end

# {urn:AllegroWebApi}ItemImageList
#   image_type - SOAP::SOAPInt
#   image_url - SOAP::SOAPString
class ItemImageList
  attr_accessor :image_type
  attr_accessor :image_url

  def initialize(image_type = nil, image_url = nil)
    @image_type = image_type
    @image_url = image_url
  end
end

# {urn:AllegroWebApi}ItemImagesStruct
#   item_id - SOAP::SOAPLong
#   item_images - ArrayOfItemImageList
class ItemImagesStruct
  attr_accessor :item_id
  attr_accessor :item_images

  def initialize(item_id = nil, item_images = nil)
    @item_id = item_id
    @item_images = item_images
  end
end

# {urn:AllegroWebApi}ItemInfo
#   it_id - SOAP::SOAPLong
#   it_country - SOAP::SOAPInt
#   it_name - SOAP::SOAPString
#   it_price - SOAP::SOAPFloat
#   it_bid_count - SOAP::SOAPInt
#   it_ending_time - SOAP::SOAPLong
#   it_seller_id - SOAP::SOAPLong
#   it_seller_login - SOAP::SOAPString
#   it_seller_rating - SOAP::SOAPInt
#   it_starting_time - SOAP::SOAPLong
#   it_starting_price - SOAP::SOAPFloat
#   it_quantity - SOAP::SOAPInt
#   it_foto_count - SOAP::SOAPInt
#   it_reserve_price - SOAP::SOAPFloat
#   it_location - SOAP::SOAPString
#   it_buy_now_price - SOAP::SOAPFloat
#   it_buy_now_active - SOAP::SOAPInt
#   it_high_bidder - SOAP::SOAPInt
#   it_high_bidder_login - SOAP::SOAPString
#   it_description - SOAP::SOAPString
#   it_options - SOAP::SOAPInt
#   it_state - SOAP::SOAPInt
#   it_is_eco - SOAP::SOAPInt
#   it_hit_count - SOAP::SOAPLong
#   it_postcode - SOAP::SOAPString
#   it_vat_invoice - SOAP::SOAPInt
#   it_bank_account1 - SOAP::SOAPString
#   it_bank_account2 - SOAP::SOAPString
#   it_starting_quantity - SOAP::SOAPInt
#   it_is_for_guests - SOAP::SOAPInt
#   it_has_product - SOAP::SOAPInt
#   it_order_fulfillment_time - SOAP::SOAPInt
#   it_ending_info - SOAP::SOAPInt
#   it_is_allegro_standard - SOAP::SOAPInt
class ItemInfo
  attr_accessor :it_id
  attr_accessor :it_country
  attr_accessor :it_name
  attr_accessor :it_price
  attr_accessor :it_bid_count
  attr_accessor :it_ending_time
  attr_accessor :it_seller_id
  attr_accessor :it_seller_login
  attr_accessor :it_seller_rating
  attr_accessor :it_starting_time
  attr_accessor :it_starting_price
  attr_accessor :it_quantity
  attr_accessor :it_foto_count
  attr_accessor :it_reserve_price
  attr_accessor :it_location
  attr_accessor :it_buy_now_price
  attr_accessor :it_buy_now_active
  attr_accessor :it_high_bidder
  attr_accessor :it_high_bidder_login
  attr_accessor :it_description
  attr_accessor :it_options
  attr_accessor :it_state
  attr_accessor :it_is_eco
  attr_accessor :it_hit_count
  attr_accessor :it_postcode
  attr_accessor :it_vat_invoice
  attr_accessor :it_bank_account1
  attr_accessor :it_bank_account2
  attr_accessor :it_starting_quantity
  attr_accessor :it_is_for_guests
  attr_accessor :it_has_product
  attr_accessor :it_order_fulfillment_time
  attr_accessor :it_ending_info
  attr_accessor :it_is_allegro_standard

  def initialize(it_id = nil, it_country = nil, it_name = nil, it_price = nil, it_bid_count = nil, it_ending_time = nil, it_seller_id = nil, it_seller_login = nil, it_seller_rating = nil, it_starting_time = nil, it_starting_price = nil, it_quantity = nil, it_foto_count = nil, it_reserve_price = nil, it_location = nil, it_buy_now_price = nil, it_buy_now_active = nil, it_high_bidder = nil, it_high_bidder_login = nil, it_description = nil, it_options = nil, it_state = nil, it_is_eco = nil, it_hit_count = nil, it_postcode = nil, it_vat_invoice = nil, it_bank_account1 = nil, it_bank_account2 = nil, it_starting_quantity = nil, it_is_for_guests = nil, it_has_product = nil, it_order_fulfillment_time = nil, it_ending_info = nil, it_is_allegro_standard = nil)
    @it_id = it_id
    @it_country = it_country
    @it_name = it_name
    @it_price = it_price
    @it_bid_count = it_bid_count
    @it_ending_time = it_ending_time
    @it_seller_id = it_seller_id
    @it_seller_login = it_seller_login
    @it_seller_rating = it_seller_rating
    @it_starting_time = it_starting_time
    @it_starting_price = it_starting_price
    @it_quantity = it_quantity
    @it_foto_count = it_foto_count
    @it_reserve_price = it_reserve_price
    @it_location = it_location
    @it_buy_now_price = it_buy_now_price
    @it_buy_now_active = it_buy_now_active
    @it_high_bidder = it_high_bidder
    @it_high_bidder_login = it_high_bidder_login
    @it_description = it_description
    @it_options = it_options
    @it_state = it_state
    @it_is_eco = it_is_eco
    @it_hit_count = it_hit_count
    @it_postcode = it_postcode
    @it_vat_invoice = it_vat_invoice
    @it_bank_account1 = it_bank_account1
    @it_bank_account2 = it_bank_account2
    @it_starting_quantity = it_starting_quantity
    @it_is_for_guests = it_is_for_guests
    @it_has_product = it_has_product
    @it_order_fulfillment_time = it_order_fulfillment_time
    @it_ending_info = it_ending_info
    @it_is_allegro_standard = it_is_allegro_standard
  end
end

# {urn:AllegroWebApi}ItemInfoExt
#   it_id - SOAP::SOAPLong
#   it_country - SOAP::SOAPInt
#   it_name - SOAP::SOAPString
#   it_price - SOAP::SOAPFloat
#   it_bid_count - SOAP::SOAPInt
#   it_ending_time - SOAP::SOAPLong
#   it_seller_id - SOAP::SOAPLong
#   it_seller_login - SOAP::SOAPString
#   it_seller_rating - SOAP::SOAPInt
#   it_starting_time - SOAP::SOAPLong
#   it_starting_price - SOAP::SOAPFloat
#   it_quantity - SOAP::SOAPInt
#   it_foto_count - SOAP::SOAPInt
#   it_reserve_price - SOAP::SOAPFloat
#   it_location - SOAP::SOAPString
#   it_buy_now_price - SOAP::SOAPFloat
#   it_buy_now_active - SOAP::SOAPInt
#   it_high_bidder - SOAP::SOAPInt
#   it_high_bidder_login - SOAP::SOAPString
#   it_description - SOAP::SOAPString
#   it_options - SOAP::SOAPInt
#   it_state - SOAP::SOAPInt
#   it_wire_transfer - SOAP::SOAPFloat
#   it_post_delivery - SOAP::SOAPFloat
#   it_post_info - SOAP::SOAPString
#   it_quantity_type - SOAP::SOAPInt
#   it_is_eco - SOAP::SOAPInt
#   it_hit_count - SOAP::SOAPLong
#   it_postcode - SOAP::SOAPString
#   it_vat_invoice - SOAP::SOAPInt
#   it_bank_account1 - SOAP::SOAPString
#   it_bank_account2 - SOAP::SOAPString
#   it_starting_quantity - SOAP::SOAPInt
#   it_is_for_guests - SOAP::SOAPInt
#   it_has_product - SOAP::SOAPInt
#   it_order_fulfillment_time - SOAP::SOAPInt
#   it_ending_info - SOAP::SOAPInt
#   it_is_allegro_standard - SOAP::SOAPInt
#   it_is_new_used - SOAP::SOAPInt
class ItemInfoExt
  attr_accessor :it_id
  attr_accessor :it_country
  attr_accessor :it_name
  attr_accessor :it_price
  attr_accessor :it_bid_count
  attr_accessor :it_ending_time
  attr_accessor :it_seller_id
  attr_accessor :it_seller_login
  attr_accessor :it_seller_rating
  attr_accessor :it_starting_time
  attr_accessor :it_starting_price
  attr_accessor :it_quantity
  attr_accessor :it_foto_count
  attr_accessor :it_reserve_price
  attr_accessor :it_location
  attr_accessor :it_buy_now_price
  attr_accessor :it_buy_now_active
  attr_accessor :it_high_bidder
  attr_accessor :it_high_bidder_login
  attr_accessor :it_description
  attr_accessor :it_options
  attr_accessor :it_state
  attr_accessor :it_wire_transfer
  attr_accessor :it_post_delivery
  attr_accessor :it_post_info
  attr_accessor :it_quantity_type
  attr_accessor :it_is_eco
  attr_accessor :it_hit_count
  attr_accessor :it_postcode
  attr_accessor :it_vat_invoice
  attr_accessor :it_bank_account1
  attr_accessor :it_bank_account2
  attr_accessor :it_starting_quantity
  attr_accessor :it_is_for_guests
  attr_accessor :it_has_product
  attr_accessor :it_order_fulfillment_time
  attr_accessor :it_ending_info
  attr_accessor :it_is_allegro_standard
  attr_accessor :it_is_new_used

  def initialize(it_id = nil, it_country = nil, it_name = nil, it_price = nil, it_bid_count = nil, it_ending_time = nil, it_seller_id = nil, it_seller_login = nil, it_seller_rating = nil, it_starting_time = nil, it_starting_price = nil, it_quantity = nil, it_foto_count = nil, it_reserve_price = nil, it_location = nil, it_buy_now_price = nil, it_buy_now_active = nil, it_high_bidder = nil, it_high_bidder_login = nil, it_description = nil, it_options = nil, it_state = nil, it_wire_transfer = nil, it_post_delivery = nil, it_post_info = nil, it_quantity_type = nil, it_is_eco = nil, it_hit_count = nil, it_postcode = nil, it_vat_invoice = nil, it_bank_account1 = nil, it_bank_account2 = nil, it_starting_quantity = nil, it_is_for_guests = nil, it_has_product = nil, it_order_fulfillment_time = nil, it_ending_info = nil, it_is_allegro_standard = nil, it_is_new_used = nil)
    @it_id = it_id
    @it_country = it_country
    @it_name = it_name
    @it_price = it_price
    @it_bid_count = it_bid_count
    @it_ending_time = it_ending_time
    @it_seller_id = it_seller_id
    @it_seller_login = it_seller_login
    @it_seller_rating = it_seller_rating
    @it_starting_time = it_starting_time
    @it_starting_price = it_starting_price
    @it_quantity = it_quantity
    @it_foto_count = it_foto_count
    @it_reserve_price = it_reserve_price
    @it_location = it_location
    @it_buy_now_price = it_buy_now_price
    @it_buy_now_active = it_buy_now_active
    @it_high_bidder = it_high_bidder
    @it_high_bidder_login = it_high_bidder_login
    @it_description = it_description
    @it_options = it_options
    @it_state = it_state
    @it_wire_transfer = it_wire_transfer
    @it_post_delivery = it_post_delivery
    @it_post_info = it_post_info
    @it_quantity_type = it_quantity_type
    @it_is_eco = it_is_eco
    @it_hit_count = it_hit_count
    @it_postcode = it_postcode
    @it_vat_invoice = it_vat_invoice
    @it_bank_account1 = it_bank_account1
    @it_bank_account2 = it_bank_account2
    @it_starting_quantity = it_starting_quantity
    @it_is_for_guests = it_is_for_guests
    @it_has_product = it_has_product
    @it_order_fulfillment_time = it_order_fulfillment_time
    @it_ending_info = it_ending_info
    @it_is_allegro_standard = it_is_allegro_standard
    @it_is_new_used = it_is_new_used
  end
end

# {urn:AllegroWebApi}ItemInfoStruct
#   item_info - ItemInfo
#   item_cats - ArrayOfItemCatList
#   item_images - ArrayOfItemImageList
#   item_attribs - ArrayOfAttribStruct
#   item_postage_options - ArrayOfPostageStruct
#   item_payment_options - ItemPaymentOptions
#   item_company_info - CompanyInfoStruct
#   item_product_info - ProductStruct
class ItemInfoStruct
  attr_accessor :item_info
  attr_accessor :item_cats
  attr_accessor :item_images
  attr_accessor :item_attribs
  attr_accessor :item_postage_options
  attr_accessor :item_payment_options
  attr_accessor :item_company_info
  attr_accessor :item_product_info

  def initialize(item_info = nil, item_cats = nil, item_images = nil, item_attribs = nil, item_postage_options = nil, item_payment_options = nil, item_company_info = nil, item_product_info = nil)
    @item_info = item_info
    @item_cats = item_cats
    @item_images = item_images
    @item_attribs = item_attribs
    @item_postage_options = item_postage_options
    @item_payment_options = item_payment_options
    @item_company_info = item_company_info
    @item_product_info = item_product_info
  end
end

# {urn:AllegroWebApi}ItemPaymentOptions
#   pay_option_transfer - SOAP::SOAPInt
#   pay_option_on_delivery - SOAP::SOAPInt
#   pay_option_allegro_pay - SOAP::SOAPInt
#   pay_option_see_desc - SOAP::SOAPInt
#   pay_option_payu - SOAP::SOAPInt
#   pay_option_escrow - SOAP::SOAPInt
#   pay_option_qiwi - SOAP::SOAPInt
class ItemPaymentOptions
  attr_accessor :pay_option_transfer
  attr_accessor :pay_option_on_delivery
  attr_accessor :pay_option_allegro_pay
  attr_accessor :pay_option_see_desc
  attr_accessor :pay_option_payu
  attr_accessor :pay_option_escrow
  attr_accessor :pay_option_qiwi

  def initialize(pay_option_transfer = nil, pay_option_on_delivery = nil, pay_option_allegro_pay = nil, pay_option_see_desc = nil, pay_option_payu = nil, pay_option_escrow = nil, pay_option_qiwi = nil)
    @pay_option_transfer = pay_option_transfer
    @pay_option_on_delivery = pay_option_on_delivery
    @pay_option_allegro_pay = pay_option_allegro_pay
    @pay_option_see_desc = pay_option_see_desc
    @pay_option_payu = pay_option_payu
    @pay_option_escrow = pay_option_escrow
    @pay_option_qiwi = pay_option_qiwi
  end
end

# {urn:AllegroWebApi}ItemPostBuyDataStruct
#   item_id - SOAP::SOAPLong
#   users_post_buy_data - ArrayOfUsersPostBuyData
class ItemPostBuyDataStruct
  attr_accessor :item_id
  attr_accessor :users_post_buy_data

  def initialize(item_id = nil, users_post_buy_data = nil)
    @item_id = item_id
    @users_post_buy_data = users_post_buy_data
  end
end

# {urn:AllegroWebApi}ItemRemoveWatchStruct
#   item_id - SOAP::SOAPLong
#   result - SOAP::SOAPInt
class ItemRemoveWatchStruct
  attr_accessor :item_id
  attr_accessor :result

  def initialize(item_id = nil, result = nil)
    @item_id = item_id
    @result = result
  end
end

# {urn:AllegroWebApi}ItemSurchargeStruct
#   surcharge_description - SOAP::SOAPString
#   surcharge_amount - AmountStruct
class ItemSurchargeStruct
  attr_accessor :surcharge_description
  attr_accessor :surcharge_amount

  def initialize(surcharge_description = nil, surcharge_amount = nil)
    @surcharge_description = surcharge_description
    @surcharge_amount = surcharge_amount
  end
end

# {urn:AllegroWebApi}ItemTemplateCreateStruct
#   item_template_option - SOAP::SOAPInt
#   item_template_name - SOAP::SOAPString
class ItemTemplateCreateStruct
  attr_accessor :item_template_option
  attr_accessor :item_template_name

  def initialize(item_template_option = nil, item_template_name = nil)
    @item_template_option = item_template_option
    @item_template_name = item_template_name
  end
end

# {urn:AllegroWebApi}ItemTemplateListStruct
#   item_template_id - SOAP::SOAPInt
#   item_template_name - SOAP::SOAPString
#   item_template_fields - ArrayOfFieldsValue
class ItemTemplateListStruct
  attr_accessor :item_template_id
  attr_accessor :item_template_name
  attr_accessor :item_template_fields

  def initialize(item_template_id = nil, item_template_name = nil, item_template_fields = nil)
    @item_template_id = item_template_id
    @item_template_name = item_template_name
    @item_template_fields = item_template_fields
  end
end

# {urn:AllegroWebApi}ItemTemplatesStruct
#   item_template_list - ArrayOfItemTemplateListStruct
#   item_template_incorrect_ids - ArrayOfTemplatesID
class ItemTemplatesStruct
  attr_accessor :item_template_list
  attr_accessor :item_template_incorrect_ids

  def initialize(item_template_list = nil, item_template_incorrect_ids = nil)
    @item_template_list = item_template_list
    @item_template_incorrect_ids = item_template_incorrect_ids
  end
end

# {urn:AllegroWebApi}ItemsNotAddedStruct
#   item_id - SOAP::SOAPLong
#   item_error_code - SOAP::SOAPString
#   item_error_description - SOAP::SOAPString
class ItemsNotAddedStruct
  attr_accessor :item_id
  attr_accessor :item_error_code
  attr_accessor :item_error_description

  def initialize(item_id = nil, item_error_code = nil, item_error_description = nil)
    @item_id = item_id
    @item_error_code = item_error_code
    @item_error_description = item_error_description
  end
end

# {urn:AllegroWebApi}MessageToBuyerStruct
#   message_seller_id - SOAP::SOAPInt
#   message_content - SOAP::SOAPString
class MessageToBuyerStruct
  attr_accessor :message_seller_id
  attr_accessor :message_content

  def initialize(message_seller_id = nil, message_content = nil)
    @message_seller_id = message_seller_id
    @message_content = message_content
  end
end

# {urn:AllegroWebApi}MyAccountStruct2
#   my_account_array - MyAccountList2
class MyAccountStruct2
  attr_accessor :my_account_array

  def initialize(my_account_array = nil)
    @my_account_array = my_account_array
  end
end

# {urn:AllegroWebApi}MyContactList
#   contact_user_id - SOAP::SOAPInt
#   contact_nick - SOAP::SOAPString
#   contact_first_name - SOAP::SOAPString
#   contact_last_name - SOAP::SOAPString
#   contact_company - SOAP::SOAPString
#   contact_email - SOAP::SOAPString
#   contact_street - SOAP::SOAPString
#   contact_postcode - SOAP::SOAPString
#   contact_city - SOAP::SOAPString
#   contact_country - SOAP::SOAPString
#   contact_phone - SOAP::SOAPString
#   contact_phone2 - SOAP::SOAPString
#   contact_rating - SOAP::SOAPString
#   contact_blocked - SOAP::SOAPString
class MyContactList
  attr_accessor :contact_user_id
  attr_accessor :contact_nick
  attr_accessor :contact_first_name
  attr_accessor :contact_last_name
  attr_accessor :contact_company
  attr_accessor :contact_email
  attr_accessor :contact_street
  attr_accessor :contact_postcode
  attr_accessor :contact_city
  attr_accessor :contact_country
  attr_accessor :contact_phone
  attr_accessor :contact_phone2
  attr_accessor :contact_rating
  attr_accessor :contact_blocked

  def initialize(contact_user_id = nil, contact_nick = nil, contact_first_name = nil, contact_last_name = nil, contact_company = nil, contact_email = nil, contact_street = nil, contact_postcode = nil, contact_city = nil, contact_country = nil, contact_phone = nil, contact_phone2 = nil, contact_rating = nil, contact_blocked = nil)
    @contact_user_id = contact_user_id
    @contact_nick = contact_nick
    @contact_first_name = contact_first_name
    @contact_last_name = contact_last_name
    @contact_company = contact_company
    @contact_email = contact_email
    @contact_street = contact_street
    @contact_postcode = contact_postcode
    @contact_city = contact_city
    @contact_country = contact_country
    @contact_phone = contact_phone
    @contact_phone2 = contact_phone2
    @contact_rating = contact_rating
    @contact_blocked = contact_blocked
  end
end

# {urn:AllegroWebApi}MyFeedbackListStruct2
#   feedback_array - MyFeedbackList2
class MyFeedbackListStruct2
  attr_accessor :feedback_array

  def initialize(feedback_array = nil)
    @feedback_array = feedback_array
  end
end

# {urn:AllegroWebApi}NewPostBuyFormCommonStruct
#   payment_method_id - SOAP::SOAPString
#   shipment_address_type - SOAP::SOAPInt
#   shipment_address_data - AddressUserDataStruct
#   contact_phone - SOAP::SOAPString
#   invoice_option - SOAP::SOAPInt
#   invoice_info - InvoiceInfoStruct
class NewPostBuyFormCommonStruct
  attr_accessor :payment_method_id
  attr_accessor :shipment_address_type
  attr_accessor :shipment_address_data
  attr_accessor :contact_phone
  attr_accessor :invoice_option
  attr_accessor :invoice_info

  def initialize(payment_method_id = nil, shipment_address_type = nil, shipment_address_data = nil, contact_phone = nil, invoice_option = nil, invoice_info = nil)
    @payment_method_id = payment_method_id
    @shipment_address_type = shipment_address_type
    @shipment_address_data = shipment_address_data
    @contact_phone = contact_phone
    @invoice_option = invoice_option
    @invoice_info = invoice_info
  end
end

# {urn:AllegroWebApi}NewPostBuyFormSellerStruct
#   seller_id - SOAP::SOAPInt
#   seller_item_ids - ArrayOfItemsID
#   seller_shipment_id - SOAP::SOAPInt
#   seller_shipment_amount - SOAP::SOAPFloat
#   seller_message_to - SOAP::SOAPString
class NewPostBuyFormSellerStruct
  attr_accessor :seller_id
  attr_accessor :seller_item_ids
  attr_accessor :seller_shipment_id
  attr_accessor :seller_shipment_amount
  attr_accessor :seller_message_to

  def initialize(seller_id = nil, seller_item_ids = nil, seller_shipment_id = nil, seller_shipment_amount = nil, seller_message_to = nil)
    @seller_id = seller_id
    @seller_item_ids = seller_item_ids
    @seller_shipment_id = seller_shipment_id
    @seller_shipment_amount = seller_shipment_amount
    @seller_message_to = seller_message_to
  end
end

# {urn:AllegroWebApi}PackageInfoStruct
#   operator_id - SOAP::SOAPInt
#   package_id - SOAP::SOAPString
class PackageInfoStruct
  attr_accessor :operator_id
  attr_accessor :package_id

  def initialize(operator_id = nil, package_id = nil)
    @operator_id = operator_id
    @package_id = package_id
  end
end

# {urn:AllegroWebApi}PaymentDetailsStruct
#   pay_trans_details_it_id - SOAP::SOAPLong
#   pay_trans_details_price - SOAP::SOAPFloat
#   pay_trans_details_count - SOAP::SOAPInt
class PaymentDetailsStruct
  attr_accessor :pay_trans_details_it_id
  attr_accessor :pay_trans_details_price
  attr_accessor :pay_trans_details_count

  def initialize(pay_trans_details_it_id = nil, pay_trans_details_price = nil, pay_trans_details_count = nil)
    @pay_trans_details_it_id = pay_trans_details_it_id
    @pay_trans_details_price = pay_trans_details_price
    @pay_trans_details_count = pay_trans_details_count
  end
end

# {urn:AllegroWebApi}PaymentItemsStruct
#   pay_trans_it_id - SOAP::SOAPLong
#   pay_trans_it_name - SOAP::SOAPString
#   pay_trans_it_count - SOAP::SOAPInt
#   pay_trans_it_price - SOAP::SOAPFloat
class PaymentItemsStruct
  attr_accessor :pay_trans_it_id
  attr_accessor :pay_trans_it_name
  attr_accessor :pay_trans_it_count
  attr_accessor :pay_trans_it_price

  def initialize(pay_trans_it_id = nil, pay_trans_it_name = nil, pay_trans_it_count = nil, pay_trans_it_price = nil)
    @pay_trans_it_id = pay_trans_it_id
    @pay_trans_it_name = pay_trans_it_name
    @pay_trans_it_count = pay_trans_it_count
    @pay_trans_it_price = pay_trans_it_price
  end
end

# {urn:AllegroWebApi}PaymentMethodStruct
#   payment_method_id - SOAP::SOAPString
#   payment_method_name - SOAP::SOAPString
#   payment_method_image - SOAP::SOAPString
#   payment_method_usage - SOAP::SOAPInt
class PaymentMethodStruct
  attr_accessor :payment_method_id
  attr_accessor :payment_method_name
  attr_accessor :payment_method_image
  attr_accessor :payment_method_usage

  def initialize(payment_method_id = nil, payment_method_name = nil, payment_method_image = nil, payment_method_usage = nil)
    @payment_method_id = payment_method_id
    @payment_method_name = payment_method_name
    @payment_method_image = payment_method_image
    @payment_method_usage = payment_method_usage
  end
end

# {urn:AllegroWebApi}PaymentSellersStruct
#   pay_trans_seller_id - SOAP::SOAPInt
#   pay_trans_seller_name - SOAP::SOAPString
#   pay_trans_items - ArrayOfPaymentItemsStruct
#   pay_trans_seller_postage_amount - SOAP::SOAPFloat
class PaymentSellersStruct
  attr_accessor :pay_trans_seller_id
  attr_accessor :pay_trans_seller_name
  attr_accessor :pay_trans_items
  attr_accessor :pay_trans_seller_postage_amount

  def initialize(pay_trans_seller_id = nil, pay_trans_seller_name = nil, pay_trans_items = nil, pay_trans_seller_postage_amount = nil)
    @pay_trans_seller_id = pay_trans_seller_id
    @pay_trans_seller_name = pay_trans_seller_name
    @pay_trans_items = pay_trans_items
    @pay_trans_seller_postage_amount = pay_trans_seller_postage_amount
  end
end

# {urn:AllegroWebApi}PaymentsInfoStruct
#   payments_balance - SOAP::SOAPFloat
#   payments_bank_account - SOAP::SOAPString
#   payments_user_data - PaymentsUserDataStruct
#   payments_payout - PaymentsPayoutStruct
#   payments_notifications - SOAP::SOAPInt
class PaymentsInfoStruct
  attr_accessor :payments_balance
  attr_accessor :payments_bank_account
  attr_accessor :payments_user_data
  attr_accessor :payments_payout
  attr_accessor :payments_notifications

  def initialize(payments_balance = nil, payments_bank_account = nil, payments_user_data = nil, payments_payout = nil, payments_notifications = nil)
    @payments_balance = payments_balance
    @payments_bank_account = payments_bank_account
    @payments_user_data = payments_user_data
    @payments_payout = payments_payout
    @payments_notifications = payments_notifications
  end
end

# {urn:AllegroWebApi}PaymentsPayoutStruct
#   payout_type - SOAP::SOAPInt
#   payout_auto_settings - PayoutAutoSettingsStruct
class PaymentsPayoutStruct
  attr_accessor :payout_type
  attr_accessor :payout_auto_settings

  def initialize(payout_type = nil, payout_auto_settings = nil)
    @payout_type = payout_type
    @payout_auto_settings = payout_auto_settings
  end
end

# {urn:AllegroWebApi}PaymentsUserDataStruct
#   user_full_name - SOAP::SOAPString
#   user_address - SOAP::SOAPString
#   user_postcode - SOAP::SOAPString
#   user_city - SOAP::SOAPString
#   user_country - SOAP::SOAPInt
#   user_phone - SOAP::SOAPString
class PaymentsUserDataStruct
  attr_accessor :user_full_name
  attr_accessor :user_address
  attr_accessor :user_postcode
  attr_accessor :user_city
  attr_accessor :user_country
  attr_accessor :user_phone

  def initialize(user_full_name = nil, user_address = nil, user_postcode = nil, user_city = nil, user_country = nil, user_phone = nil)
    @user_full_name = user_full_name
    @user_address = user_address
    @user_postcode = user_postcode
    @user_city = user_city
    @user_country = user_country
    @user_phone = user_phone
  end
end

# {urn:AllegroWebApi}PayoutAutoFrequencyStruct
#   frequency_type - SOAP::SOAPShort
#   frequency_week_value - SOAP::SOAPShort
#   frequency_month_value - SOAP::SOAPShort
class PayoutAutoFrequencyStruct
  attr_accessor :frequency_type
  attr_accessor :frequency_week_value
  attr_accessor :frequency_month_value

  def initialize(frequency_type = nil, frequency_week_value = nil, frequency_month_value = nil)
    @frequency_type = frequency_type
    @frequency_week_value = frequency_week_value
    @frequency_month_value = frequency_month_value
  end
end

# {urn:AllegroWebApi}PayoutAutoSettingsStruct
#   payout_auto_amount - SOAP::SOAPFloat
#   payout_auto_frequency - PayoutAutoFrequencyStruct
class PayoutAutoSettingsStruct
  attr_accessor :payout_auto_amount
  attr_accessor :payout_auto_frequency

  def initialize(payout_auto_amount = nil, payout_auto_frequency = nil)
    @payout_auto_amount = payout_auto_amount
    @payout_auto_frequency = payout_auto_frequency
  end
end

# {urn:AllegroWebApi}PharmacyDataStruct
#   pharmacy_opening_date - SOAP::SOAPString
#   pharmacy_expiration_date - SOAP::SOAPString
#   pharmacy_name - SOAP::SOAPString
#   pharmacy_pharmacist_full_name - SOAP::SOAPString
#   pharmacy_address - SOAP::SOAPString
#   pharmacy_postcode - SOAP::SOAPString
#   pharmacy_city - SOAP::SOAPString
#   pharmacy_commune - SOAP::SOAPString
#   pharmacy_country_id - SOAP::SOAPInt
#   pharmacy_state_id - SOAP::SOAPInt
#   pharmacy_permit_number - SOAP::SOAPString
#   pharmacy_permit_info - SOAP::SOAPString
class PharmacyDataStruct
  attr_accessor :pharmacy_opening_date
  attr_accessor :pharmacy_expiration_date
  attr_accessor :pharmacy_name
  attr_accessor :pharmacy_pharmacist_full_name
  attr_accessor :pharmacy_address
  attr_accessor :pharmacy_postcode
  attr_accessor :pharmacy_city
  attr_accessor :pharmacy_commune
  attr_accessor :pharmacy_country_id
  attr_accessor :pharmacy_state_id
  attr_accessor :pharmacy_permit_number
  attr_accessor :pharmacy_permit_info

  def initialize(pharmacy_opening_date = nil, pharmacy_expiration_date = nil, pharmacy_name = nil, pharmacy_pharmacist_full_name = nil, pharmacy_address = nil, pharmacy_postcode = nil, pharmacy_city = nil, pharmacy_commune = nil, pharmacy_country_id = nil, pharmacy_state_id = nil, pharmacy_permit_number = nil, pharmacy_permit_info = nil)
    @pharmacy_opening_date = pharmacy_opening_date
    @pharmacy_expiration_date = pharmacy_expiration_date
    @pharmacy_name = pharmacy_name
    @pharmacy_pharmacist_full_name = pharmacy_pharmacist_full_name
    @pharmacy_address = pharmacy_address
    @pharmacy_postcode = pharmacy_postcode
    @pharmacy_city = pharmacy_city
    @pharmacy_commune = pharmacy_commune
    @pharmacy_country_id = pharmacy_country_id
    @pharmacy_state_id = pharmacy_state_id
    @pharmacy_permit_number = pharmacy_permit_number
    @pharmacy_permit_info = pharmacy_permit_info
  end
end

# {urn:AllegroWebApi}PharmacyRecipientDataStruct
#   recipient_first_name - SOAP::SOAPString
#   recipient_last_name - SOAP::SOAPString
#   recipient_address - SOAP::SOAPString
#   recipient_postcode - SOAP::SOAPString
#   recipient_city - SOAP::SOAPString
class PharmacyRecipientDataStruct
  attr_accessor :recipient_first_name
  attr_accessor :recipient_last_name
  attr_accessor :recipient_address
  attr_accessor :recipient_postcode
  attr_accessor :recipient_city

  def initialize(recipient_first_name = nil, recipient_last_name = nil, recipient_address = nil, recipient_postcode = nil, recipient_city = nil)
    @recipient_first_name = recipient_first_name
    @recipient_last_name = recipient_last_name
    @recipient_address = recipient_address
    @recipient_postcode = recipient_postcode
    @recipient_city = recipient_city
  end
end

# {urn:AllegroWebApi}PostBuyFormAddressStruct
#   post_buy_form_adr_country - SOAP::SOAPInt
#   post_buy_form_adr_street - SOAP::SOAPString
#   post_buy_form_adr_postcode - SOAP::SOAPString
#   post_buy_form_adr_city - SOAP::SOAPString
#   post_buy_form_adr_full_name - SOAP::SOAPString
#   post_buy_form_adr_company - SOAP::SOAPString
#   post_buy_form_adr_phone - SOAP::SOAPString
#   post_buy_form_adr_nip - SOAP::SOAPString
#   post_buy_form_created_date - SOAP::SOAPString
#   post_buy_form_adr_type - SOAP::SOAPInt
class PostBuyFormAddressStruct
  attr_accessor :post_buy_form_adr_country
  attr_accessor :post_buy_form_adr_street
  attr_accessor :post_buy_form_adr_postcode
  attr_accessor :post_buy_form_adr_city
  attr_accessor :post_buy_form_adr_full_name
  attr_accessor :post_buy_form_adr_company
  attr_accessor :post_buy_form_adr_phone
  attr_accessor :post_buy_form_adr_nip
  attr_accessor :post_buy_form_created_date
  attr_accessor :post_buy_form_adr_type

  def initialize(post_buy_form_adr_country = nil, post_buy_form_adr_street = nil, post_buy_form_adr_postcode = nil, post_buy_form_adr_city = nil, post_buy_form_adr_full_name = nil, post_buy_form_adr_company = nil, post_buy_form_adr_phone = nil, post_buy_form_adr_nip = nil, post_buy_form_created_date = nil, post_buy_form_adr_type = nil)
    @post_buy_form_adr_country = post_buy_form_adr_country
    @post_buy_form_adr_street = post_buy_form_adr_street
    @post_buy_form_adr_postcode = post_buy_form_adr_postcode
    @post_buy_form_adr_city = post_buy_form_adr_city
    @post_buy_form_adr_full_name = post_buy_form_adr_full_name
    @post_buy_form_adr_company = post_buy_form_adr_company
    @post_buy_form_adr_phone = post_buy_form_adr_phone
    @post_buy_form_adr_nip = post_buy_form_adr_nip
    @post_buy_form_created_date = post_buy_form_created_date
    @post_buy_form_adr_type = post_buy_form_adr_type
  end
end

# {urn:AllegroWebApi}PostBuyFormDataStruct
#   post_buy_form_id - SOAP::SOAPLong
#   post_buy_form_items - ArrayOfPostBuyFormItemStruct
#   post_buy_form_buyer_id - SOAP::SOAPLong
#   post_buy_form_amount - SOAP::SOAPFloat
#   post_buy_form_postage_amount - SOAP::SOAPFloat
#   post_buy_form_invoice_option - SOAP::SOAPInt
#   post_buy_form_msg_to_seller - SOAP::SOAPString
#   post_buy_form_invoice_data - PostBuyFormAddressStruct
#   post_buy_form_shipment_address - PostBuyFormAddressStruct
#   post_buy_form_pay_type - SOAP::SOAPString
#   post_buy_form_pay_id - SOAP::SOAPLong
#   post_buy_form_pay_status - SOAP::SOAPString
#   post_buy_form_date_init - SOAP::SOAPString
#   post_buy_form_date_recv - SOAP::SOAPString
#   post_buy_form_date_cancel - SOAP::SOAPString
#   post_buy_form_shipment_id - SOAP::SOAPInt
#   post_buy_form_gd_address - PostBuyFormAddressStruct
#   post_buy_form_shipment_tracking - ArrayOfPostBuyFormShipmentTrackingStruct
#   post_buy_form_surcharges_list - ArrayOfPostBuyFormSurcharges
#   post_buy_form_gd_additional_info - SOAP::SOAPString
#   post_buy_form_payment_amount - SOAP::SOAPFloat
#   post_buy_form_sent_by_seller - SOAP::SOAPInt
class PostBuyFormDataStruct
  attr_accessor :post_buy_form_id
  attr_accessor :post_buy_form_items
  attr_accessor :post_buy_form_buyer_id
  attr_accessor :post_buy_form_amount
  attr_accessor :post_buy_form_postage_amount
  attr_accessor :post_buy_form_invoice_option
  attr_accessor :post_buy_form_msg_to_seller
  attr_accessor :post_buy_form_invoice_data
  attr_accessor :post_buy_form_shipment_address
  attr_accessor :post_buy_form_pay_type
  attr_accessor :post_buy_form_pay_id
  attr_accessor :post_buy_form_pay_status
  attr_accessor :post_buy_form_date_init
  attr_accessor :post_buy_form_date_recv
  attr_accessor :post_buy_form_date_cancel
  attr_accessor :post_buy_form_shipment_id
  attr_accessor :post_buy_form_gd_address
  attr_accessor :post_buy_form_shipment_tracking
  attr_accessor :post_buy_form_surcharges_list
  attr_accessor :post_buy_form_gd_additional_info
  attr_accessor :post_buy_form_payment_amount
  attr_accessor :post_buy_form_sent_by_seller

  def initialize(post_buy_form_id = nil, post_buy_form_items = nil, post_buy_form_buyer_id = nil, post_buy_form_amount = nil, post_buy_form_postage_amount = nil, post_buy_form_invoice_option = nil, post_buy_form_msg_to_seller = nil, post_buy_form_invoice_data = nil, post_buy_form_shipment_address = nil, post_buy_form_pay_type = nil, post_buy_form_pay_id = nil, post_buy_form_pay_status = nil, post_buy_form_date_init = nil, post_buy_form_date_recv = nil, post_buy_form_date_cancel = nil, post_buy_form_shipment_id = nil, post_buy_form_gd_address = nil, post_buy_form_shipment_tracking = nil, post_buy_form_surcharges_list = nil, post_buy_form_gd_additional_info = nil, post_buy_form_payment_amount = nil, post_buy_form_sent_by_seller = nil)
    @post_buy_form_id = post_buy_form_id
    @post_buy_form_items = post_buy_form_items
    @post_buy_form_buyer_id = post_buy_form_buyer_id
    @post_buy_form_amount = post_buy_form_amount
    @post_buy_form_postage_amount = post_buy_form_postage_amount
    @post_buy_form_invoice_option = post_buy_form_invoice_option
    @post_buy_form_msg_to_seller = post_buy_form_msg_to_seller
    @post_buy_form_invoice_data = post_buy_form_invoice_data
    @post_buy_form_shipment_address = post_buy_form_shipment_address
    @post_buy_form_pay_type = post_buy_form_pay_type
    @post_buy_form_pay_id = post_buy_form_pay_id
    @post_buy_form_pay_status = post_buy_form_pay_status
    @post_buy_form_date_init = post_buy_form_date_init
    @post_buy_form_date_recv = post_buy_form_date_recv
    @post_buy_form_date_cancel = post_buy_form_date_cancel
    @post_buy_form_shipment_id = post_buy_form_shipment_id
    @post_buy_form_gd_address = post_buy_form_gd_address
    @post_buy_form_shipment_tracking = post_buy_form_shipment_tracking
    @post_buy_form_surcharges_list = post_buy_form_surcharges_list
    @post_buy_form_gd_additional_info = post_buy_form_gd_additional_info
    @post_buy_form_payment_amount = post_buy_form_payment_amount
    @post_buy_form_sent_by_seller = post_buy_form_sent_by_seller
  end
end

# {urn:AllegroWebApi}PostBuyFormForBuyersDataStruct
#   post_buy_form_id - SOAP::SOAPLong
#   post_buy_form_buyer_id - SOAP::SOAPInt
#   post_buy_form_sellers - ArrayOfPostBuyFormSellersStruct
#   post_buy_form_total_amount - SOAP::SOAPFloat
#   post_buy_form_invoice_option - SOAP::SOAPInt
#   post_buy_form_invoice_data - PostBuyFormAddressStruct
#   post_buy_form_shipment_address - PostBuyFormAddressStruct
#   post_buy_form_pay_type - SOAP::SOAPString
#   post_buy_form_pay_id - SOAP::SOAPLong
#   post_buy_form_pay_status - SOAP::SOAPString
#   post_buy_form_date_init - SOAP::SOAPString
#   post_buy_form_date_recv - SOAP::SOAPString
#   post_buy_form_date_cancel - SOAP::SOAPString
#   post_buy_form_payment_amount - SOAP::SOAPFloat
class PostBuyFormForBuyersDataStruct
  attr_accessor :post_buy_form_id
  attr_accessor :post_buy_form_buyer_id
  attr_accessor :post_buy_form_sellers
  attr_accessor :post_buy_form_total_amount
  attr_accessor :post_buy_form_invoice_option
  attr_accessor :post_buy_form_invoice_data
  attr_accessor :post_buy_form_shipment_address
  attr_accessor :post_buy_form_pay_type
  attr_accessor :post_buy_form_pay_id
  attr_accessor :post_buy_form_pay_status
  attr_accessor :post_buy_form_date_init
  attr_accessor :post_buy_form_date_recv
  attr_accessor :post_buy_form_date_cancel
  attr_accessor :post_buy_form_payment_amount

  def initialize(post_buy_form_id = nil, post_buy_form_buyer_id = nil, post_buy_form_sellers = nil, post_buy_form_total_amount = nil, post_buy_form_invoice_option = nil, post_buy_form_invoice_data = nil, post_buy_form_shipment_address = nil, post_buy_form_pay_type = nil, post_buy_form_pay_id = nil, post_buy_form_pay_status = nil, post_buy_form_date_init = nil, post_buy_form_date_recv = nil, post_buy_form_date_cancel = nil, post_buy_form_payment_amount = nil)
    @post_buy_form_id = post_buy_form_id
    @post_buy_form_buyer_id = post_buy_form_buyer_id
    @post_buy_form_sellers = post_buy_form_sellers
    @post_buy_form_total_amount = post_buy_form_total_amount
    @post_buy_form_invoice_option = post_buy_form_invoice_option
    @post_buy_form_invoice_data = post_buy_form_invoice_data
    @post_buy_form_shipment_address = post_buy_form_shipment_address
    @post_buy_form_pay_type = post_buy_form_pay_type
    @post_buy_form_pay_id = post_buy_form_pay_id
    @post_buy_form_pay_status = post_buy_form_pay_status
    @post_buy_form_date_init = post_buy_form_date_init
    @post_buy_form_date_recv = post_buy_form_date_recv
    @post_buy_form_date_cancel = post_buy_form_date_cancel
    @post_buy_form_payment_amount = post_buy_form_payment_amount
  end
end

# {urn:AllegroWebApi}PostBuyFormItemStruct
#   post_buy_form_it_quantity - SOAP::SOAPInt
#   post_buy_form_it_amount - SOAP::SOAPFloat
#   post_buy_form_it_id - SOAP::SOAPLong
#   post_buy_form_it_title - SOAP::SOAPString
#   post_buy_form_it_country - SOAP::SOAPInt
#   post_buy_form_it_price - SOAP::SOAPFloat
class PostBuyFormItemStruct
  attr_accessor :post_buy_form_it_quantity
  attr_accessor :post_buy_form_it_amount
  attr_accessor :post_buy_form_it_id
  attr_accessor :post_buy_form_it_title
  attr_accessor :post_buy_form_it_country
  attr_accessor :post_buy_form_it_price

  def initialize(post_buy_form_it_quantity = nil, post_buy_form_it_amount = nil, post_buy_form_it_id = nil, post_buy_form_it_title = nil, post_buy_form_it_country = nil, post_buy_form_it_price = nil)
    @post_buy_form_it_quantity = post_buy_form_it_quantity
    @post_buy_form_it_amount = post_buy_form_it_amount
    @post_buy_form_it_id = post_buy_form_it_id
    @post_buy_form_it_title = post_buy_form_it_title
    @post_buy_form_it_country = post_buy_form_it_country
    @post_buy_form_it_price = post_buy_form_it_price
  end
end

# {urn:AllegroWebApi}PostBuyFormPackageInfoStruct
#   package_ids_added - ArrayOfPackageIds
#   package_ids_not_added_incorrect_operator_id - ArrayOfPackageIds
#   package_ids_not_added_incorrect_package_id - ArrayOfPackageIds
class PostBuyFormPackageInfoStruct
  attr_accessor :package_ids_added
  attr_accessor :package_ids_not_added_incorrect_operator_id
  attr_accessor :package_ids_not_added_incorrect_package_id

  def initialize(package_ids_added = nil, package_ids_not_added_incorrect_operator_id = nil, package_ids_not_added_incorrect_package_id = nil)
    @package_ids_added = package_ids_added
    @package_ids_not_added_incorrect_operator_id = package_ids_not_added_incorrect_operator_id
    @package_ids_not_added_incorrect_package_id = package_ids_not_added_incorrect_package_id
  end
end

# {urn:AllegroWebApi}PostBuyFormSellersStruct
#   post_buy_form_seller_id - SOAP::SOAPInt
#   post_buy_form_seller_name - SOAP::SOAPString
#   post_buy_form_items - ArrayOfPostBuyFormItemStruct
#   post_buy_form_shipment_id - SOAP::SOAPInt
#   post_buy_form_postage_amount - SOAP::SOAPFloat
#   post_buy_form_msg_to_seller - SOAP::SOAPString
#   post_buy_form_amount - SOAP::SOAPFloat
#   post_buy_form_surcharges_list - ArrayOfPostBuyFormSurcharges
#   post_buy_form_shipment_tracking - ArrayOfPostBuyFormShipmentTrackingStruct
#   post_buy_form_gd_address - PostBuyFormAddressStruct
#   post_buy_form_gd_additional_info - SOAP::SOAPString
#   post_buy_form_sent_by_seller - SOAP::SOAPInt
class PostBuyFormSellersStruct
  attr_accessor :post_buy_form_seller_id
  attr_accessor :post_buy_form_seller_name
  attr_accessor :post_buy_form_items
  attr_accessor :post_buy_form_shipment_id
  attr_accessor :post_buy_form_postage_amount
  attr_accessor :post_buy_form_msg_to_seller
  attr_accessor :post_buy_form_amount
  attr_accessor :post_buy_form_surcharges_list
  attr_accessor :post_buy_form_shipment_tracking
  attr_accessor :post_buy_form_gd_address
  attr_accessor :post_buy_form_gd_additional_info
  attr_accessor :post_buy_form_sent_by_seller

  def initialize(post_buy_form_seller_id = nil, post_buy_form_seller_name = nil, post_buy_form_items = nil, post_buy_form_shipment_id = nil, post_buy_form_postage_amount = nil, post_buy_form_msg_to_seller = nil, post_buy_form_amount = nil, post_buy_form_surcharges_list = nil, post_buy_form_shipment_tracking = nil, post_buy_form_gd_address = nil, post_buy_form_gd_additional_info = nil, post_buy_form_sent_by_seller = nil)
    @post_buy_form_seller_id = post_buy_form_seller_id
    @post_buy_form_seller_name = post_buy_form_seller_name
    @post_buy_form_items = post_buy_form_items
    @post_buy_form_shipment_id = post_buy_form_shipment_id
    @post_buy_form_postage_amount = post_buy_form_postage_amount
    @post_buy_form_msg_to_seller = post_buy_form_msg_to_seller
    @post_buy_form_amount = post_buy_form_amount
    @post_buy_form_surcharges_list = post_buy_form_surcharges_list
    @post_buy_form_shipment_tracking = post_buy_form_shipment_tracking
    @post_buy_form_gd_address = post_buy_form_gd_address
    @post_buy_form_gd_additional_info = post_buy_form_gd_additional_info
    @post_buy_form_sent_by_seller = post_buy_form_sent_by_seller
  end
end

# {urn:AllegroWebApi}PostBuyFormShipmentTrackingStruct
#   post_buy_form_operator_id - SOAP::SOAPInt
#   post_buy_form_package_id - SOAP::SOAPString
#   post_buy_form_package_status - SOAP::SOAPString
class PostBuyFormShipmentTrackingStruct
  attr_accessor :post_buy_form_operator_id
  attr_accessor :post_buy_form_package_id
  attr_accessor :post_buy_form_package_status

  def initialize(post_buy_form_operator_id = nil, post_buy_form_package_id = nil, post_buy_form_package_status = nil)
    @post_buy_form_operator_id = post_buy_form_operator_id
    @post_buy_form_package_id = post_buy_form_package_id
    @post_buy_form_package_status = post_buy_form_package_status
  end
end

# {urn:AllegroWebApi}PostBuyFormStruct
#   transaction_id - SOAP::SOAPLong
#   transaction_package_ids - ArrayOfTransactionsID
#   transaction_pay_by_link - TransactionPayByLinkStruct
class PostBuyFormStruct
  attr_accessor :transaction_id
  attr_accessor :transaction_package_ids
  attr_accessor :transaction_pay_by_link

  def initialize(transaction_id = nil, transaction_package_ids = nil, transaction_pay_by_link = nil)
    @transaction_id = transaction_id
    @transaction_package_ids = transaction_package_ids
    @transaction_pay_by_link = transaction_pay_by_link
  end
end

# {urn:AllegroWebApi}PostageStruct
#   postage_amount - SOAP::SOAPFloat
#   postage_amount_add - SOAP::SOAPFloat
#   postage_pack_size - SOAP::SOAPInt
#   postage_id - SOAP::SOAPInt
#   postage_free_shipping - SOAP::SOAPInt
#   postage_fulfillment_time - FulfillmentTimeStruct
class PostageStruct
  attr_accessor :postage_amount
  attr_accessor :postage_amount_add
  attr_accessor :postage_pack_size
  attr_accessor :postage_id
  attr_accessor :postage_free_shipping
  attr_accessor :postage_fulfillment_time

  def initialize(postage_amount = nil, postage_amount_add = nil, postage_pack_size = nil, postage_id = nil, postage_free_shipping = nil, postage_fulfillment_time = nil)
    @postage_amount = postage_amount
    @postage_amount_add = postage_amount_add
    @postage_pack_size = postage_pack_size
    @postage_id = postage_id
    @postage_free_shipping = postage_free_shipping
    @postage_fulfillment_time = postage_fulfillment_time
  end
end

# {urn:AllegroWebApi}PriceCatInfo
#   price_min - SOAP::SOAPFloat
#   price_max - SOAP::SOAPFloat
class PriceCatInfo
  attr_accessor :price_min
  attr_accessor :price_max

  def initialize(price_min = nil, price_max = nil)
    @price_min = price_min
    @price_max = price_max
  end
end

# {urn:AllegroWebApi}PriceStruct
#   price_amount - SOAP::SOAPFloat
#   price_currency - SOAP::SOAPString
class PriceStruct
  attr_accessor :price_amount
  attr_accessor :price_currency

  def initialize(price_amount = nil, price_currency = nil)
    @price_amount = price_amount
    @price_currency = price_currency
  end
end

# {urn:AllegroWebApi}ProductParametersGroupStruct
#   product_parameters_group_name - SOAP::SOAPString
#   product_parameters_list - ArrayOfProductParametersStruct
class ProductParametersGroupStruct
  attr_accessor :product_parameters_group_name
  attr_accessor :product_parameters_list

  def initialize(product_parameters_group_name = nil, product_parameters_list = nil)
    @product_parameters_group_name = product_parameters_group_name
    @product_parameters_list = product_parameters_list
  end
end

# {urn:AllegroWebApi}ProductParametersStruct
#   product_parameter_name - SOAP::SOAPString
#   product_parameter_values - ArrayOfProductParameterValues
#   product_parameter_description - SOAP::SOAPString
class ProductParametersStruct
  attr_accessor :product_parameter_name
  attr_accessor :product_parameter_values
  attr_accessor :product_parameter_description

  def initialize(product_parameter_name = nil, product_parameter_values = nil, product_parameter_description = nil)
    @product_parameter_name = product_parameter_name
    @product_parameter_values = product_parameter_values
    @product_parameter_description = product_parameter_description
  end
end

# {urn:AllegroWebApi}ProductStruct
#   product_id - SOAP::SOAPLong
#   product_name - SOAP::SOAPString
#   product_description - SOAP::SOAPString
#   product_images_list - ArrayOfProductImagesList
#   product_parameters_group_list - ArrayOfProductParametersGroupStruct
class ProductStruct
  attr_accessor :product_id
  attr_accessor :product_name
  attr_accessor :product_description
  attr_accessor :product_images_list
  attr_accessor :product_parameters_group_list

  def initialize(product_id = nil, product_name = nil, product_description = nil, product_images_list = nil, product_parameters_group_list = nil)
    @product_id = product_id
    @product_name = product_name
    @product_description = product_description
    @product_images_list = product_images_list
    @product_parameters_group_list = product_parameters_group_list
  end
end

# {urn:AllegroWebApi}RangeDateValueStruct
#   fvalue_range_date_min - SOAP::SOAPString
#   fvalue_range_date_max - SOAP::SOAPString
class RangeDateValueStruct
  attr_accessor :fvalue_range_date_min
  attr_accessor :fvalue_range_date_max

  def initialize(fvalue_range_date_min = nil, fvalue_range_date_max = nil)
    @fvalue_range_date_min = fvalue_range_date_min
    @fvalue_range_date_max = fvalue_range_date_max
  end
end

# {urn:AllegroWebApi}RangeFloatValueStruct
#   fvalue_range_float_min - SOAP::SOAPFloat
#   fvalue_range_float_max - SOAP::SOAPFloat
class RangeFloatValueStruct
  attr_accessor :fvalue_range_float_min
  attr_accessor :fvalue_range_float_max

  def initialize(fvalue_range_float_min = nil, fvalue_range_float_max = nil)
    @fvalue_range_float_min = fvalue_range_float_min
    @fvalue_range_float_max = fvalue_range_float_max
  end
end

# {urn:AllegroWebApi}RangeIntValueStruct
#   fvalue_range_int_min - SOAP::SOAPInt
#   fvalue_range_int_max - SOAP::SOAPInt
class RangeIntValueStruct
  attr_accessor :fvalue_range_int_min
  attr_accessor :fvalue_range_int_max

  def initialize(fvalue_range_int_min = nil, fvalue_range_int_max = nil)
    @fvalue_range_int_min = fvalue_range_int_min
    @fvalue_range_int_max = fvalue_range_int_max
  end
end

# {urn:AllegroWebApi}RefundFormDataStruct
#   ref_form_it_id - SOAP::SOAPLong
#   ref_form_it_name - SOAP::SOAPString
#   ref_form_it_ending_time - SOAP::SOAPLong
#   ref_form_buyer_id - SOAP::SOAPInt
#   ref_form_buyer_login - SOAP::SOAPString
#   ref_form_buyer_email - SOAP::SOAPString
#   ref_form_buy_date - SOAP::SOAPLong
#   ref_form_reason_id - SOAP::SOAPInt
#   ref_form_it_quantity_sold - SOAP::SOAPInt
#   ref_form_reminder_sent - SOAP::SOAPInt
class RefundFormDataStruct
  attr_accessor :ref_form_it_id
  attr_accessor :ref_form_it_name
  attr_accessor :ref_form_it_ending_time
  attr_accessor :ref_form_buyer_id
  attr_accessor :ref_form_buyer_login
  attr_accessor :ref_form_buyer_email
  attr_accessor :ref_form_buy_date
  attr_accessor :ref_form_reason_id
  attr_accessor :ref_form_it_quantity_sold
  attr_accessor :ref_form_reminder_sent

  def initialize(ref_form_it_id = nil, ref_form_it_name = nil, ref_form_it_ending_time = nil, ref_form_buyer_id = nil, ref_form_buyer_login = nil, ref_form_buyer_email = nil, ref_form_buy_date = nil, ref_form_reason_id = nil, ref_form_it_quantity_sold = nil, ref_form_reminder_sent = nil)
    @ref_form_it_id = ref_form_it_id
    @ref_form_it_name = ref_form_it_name
    @ref_form_it_ending_time = ref_form_it_ending_time
    @ref_form_buyer_id = ref_form_buyer_id
    @ref_form_buyer_login = ref_form_buyer_login
    @ref_form_buyer_email = ref_form_buyer_email
    @ref_form_buy_date = ref_form_buy_date
    @ref_form_reason_id = ref_form_reason_id
    @ref_form_it_quantity_sold = ref_form_it_quantity_sold
    @ref_form_reminder_sent = ref_form_reminder_sent
  end
end

# {urn:AllegroWebApi}RefundFormStatusResultStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   refund_form_status - SOAP::SOAPInt
class RefundFormStatusResultStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :refund_form_status

  def initialize(item_id = nil, buyer_id = nil, refund_form_status = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @refund_form_status = refund_form_status
  end
end

# {urn:AllegroWebApi}RefundFormStatusStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
class RefundFormStatusStruct
  attr_accessor :item_id
  attr_accessor :buyer_id

  def initialize(item_id = nil, buyer_id = nil)
    @item_id = item_id
    @buyer_id = buyer_id
  end
end

# {urn:AllegroWebApi}RefundReasonStruct
#   refund_reason_id - SOAP::SOAPInt
#   refund_reason_name - SOAP::SOAPString
class RefundReasonStruct
  attr_accessor :refund_reason_id
  attr_accessor :refund_reason_name

  def initialize(refund_reason_id = nil, refund_reason_name = nil)
    @refund_reason_id = refund_reason_id
    @refund_reason_name = refund_reason_name
  end
end

# {urn:AllegroWebApi}RelatedItemStruct
#   item_id - SOAP::SOAPLong
#   item_title - SOAP::SOAPString
#   item_thumbnail - SOAP::SOAPString
#   item_price - SOAP::SOAPFloat
#   item_bought_count - SOAP::SOAPInt
#   item_amount - SOAP::SOAPFloat
#   item_payment_type - SOAP::SOAPInt
#   item_seller_id - SOAP::SOAPLong
#   item_seller_name - SOAP::SOAPString
#   item_invoice_info - SOAP::SOAPInt
class RelatedItemStruct
  attr_accessor :item_id
  attr_accessor :item_title
  attr_accessor :item_thumbnail
  attr_accessor :item_price
  attr_accessor :item_bought_count
  attr_accessor :item_amount
  attr_accessor :item_payment_type
  attr_accessor :item_seller_id
  attr_accessor :item_seller_name
  attr_accessor :item_invoice_info

  def initialize(item_id = nil, item_title = nil, item_thumbnail = nil, item_price = nil, item_bought_count = nil, item_amount = nil, item_payment_type = nil, item_seller_id = nil, item_seller_name = nil, item_invoice_info = nil)
    @item_id = item_id
    @item_title = item_title
    @item_thumbnail = item_thumbnail
    @item_price = item_price
    @item_bought_count = item_bought_count
    @item_amount = item_amount
    @item_payment_type = item_payment_type
    @item_seller_id = item_seller_id
    @item_seller_name = item_seller_name
    @item_invoice_info = item_invoice_info
  end
end

# {urn:AllegroWebApi}RelatedItemsShipmentDataStruct
#   seller_shipment_data - ArrayOfSellerShipmentDataStruct
class RelatedItemsShipmentDataStruct
  attr_accessor :seller_shipment_data

  def initialize(seller_shipment_data = nil)
    @seller_shipment_data = seller_shipment_data
  end
end

# {urn:AllegroWebApi}RelatedItemsStruct
#   related_items_info - ArrayOfRelatedItemStruct
#   related_items_amount - SOAP::SOAPFloat
class RelatedItemsStruct
  attr_accessor :related_items_info
  attr_accessor :related_items_amount

  def initialize(related_items_info = nil, related_items_amount = nil)
    @related_items_info = related_items_info
    @related_items_amount = related_items_amount
  end
end

# {urn:AllegroWebApi}RelatedPersonsStruct
#   spouse_first_name - SOAP::SOAPString
#   spouse_last_name - SOAP::SOAPString
class RelatedPersonsStruct
  attr_accessor :spouse_first_name
  attr_accessor :spouse_last_name

  def initialize(spouse_first_name = nil, spouse_last_name = nil)
    @spouse_first_name = spouse_first_name
    @spouse_last_name = spouse_last_name
  end
end

# {urn:AllegroWebApi}RemovedItemTemplatesStruct
#   item_template_ids - ArrayOfTemplatesID
#   item_template_incorrect_ids - ArrayOfTemplatesID
class RemovedItemTemplatesStruct
  attr_accessor :item_template_ids
  attr_accessor :item_template_incorrect_ids

  def initialize(item_template_ids = nil, item_template_incorrect_ids = nil)
    @item_template_ids = item_template_ids
    @item_template_incorrect_ids = item_template_incorrect_ids
  end
end

# {urn:AllegroWebApi}RequestPayoutStruct
#   payout_id - SOAP::SOAPLong
#   payout_amount - SOAP::SOAPFloat
#   payout_time - SOAP::SOAPLong
class RequestPayoutStruct
  attr_accessor :payout_id
  attr_accessor :payout_amount
  attr_accessor :payout_time

  def initialize(payout_id = nil, payout_amount = nil, payout_time = nil)
    @payout_id = payout_id
    @payout_amount = payout_amount
    @payout_time = payout_time
  end
end

# {urn:AllegroWebApi}SearchOptType
#   search_string - SOAP::SOAPString
#   search_options - SOAP::SOAPInt
#   search_order - SOAP::SOAPInt
#   search_order_type - SOAP::SOAPInt
#   search_country - SOAP::SOAPInt
#   search_category - SOAP::SOAPInt
#   search_offset - SOAP::SOAPInt
#   search_city - SOAP::SOAPString
#   search_state - SOAP::SOAPInt
#   search_price_from - SOAP::SOAPFloat
#   search_price_to - SOAP::SOAPFloat
#   search_limit - SOAP::SOAPInt
#   search_order_fulfillment_time - SOAP::SOAPInt
#   search_user - SOAP::SOAPInt
class SearchOptType
  attr_accessor :search_string
  attr_accessor :search_options
  attr_accessor :search_order
  attr_accessor :search_order_type
  attr_accessor :search_country
  attr_accessor :search_category
  attr_accessor :search_offset
  attr_accessor :search_city
  attr_accessor :search_state
  attr_accessor :search_price_from
  attr_accessor :search_price_to
  attr_accessor :search_limit
  attr_accessor :search_order_fulfillment_time
  attr_accessor :search_user

  def initialize(search_string = nil, search_options = nil, search_order = nil, search_order_type = nil, search_country = nil, search_category = nil, search_offset = nil, search_city = nil, search_state = nil, search_price_from = nil, search_price_to = nil, search_limit = nil, search_order_fulfillment_time = nil, search_user = nil)
    @search_string = search_string
    @search_options = search_options
    @search_order = search_order
    @search_order_type = search_order_type
    @search_country = search_country
    @search_category = search_category
    @search_offset = search_offset
    @search_city = search_city
    @search_state = search_state
    @search_price_from = search_price_from
    @search_price_to = search_price_to
    @search_limit = search_limit
    @search_order_fulfillment_time = search_order_fulfillment_time
    @search_user = search_user
  end
end

# {urn:AllegroWebApi}SearchResponseType
#   s_it_id - SOAP::SOAPLong
#   s_it_name - SOAP::SOAPString
#   s_it_price - SOAP::SOAPFloat
#   s_it_starting_price - SOAP::SOAPFloat
#   s_it_is_buy_now - SOAP::SOAPInt
#   s_it_buy_now_price - SOAP::SOAPFloat
#   s_it_bid_count - SOAP::SOAPInt
#   s_it_foto_count - SOAP::SOAPInt
#   s_it_starting_time - SOAP::SOAPLong
#   s_it_ending_time - SOAP::SOAPLong
#   s_it_time_left - SOAP::SOAPLong
#   s_it_city - SOAP::SOAPString
#   s_it_state - SOAP::SOAPInt
#   s_it_country - SOAP::SOAPInt
#   s_it_category_id - SOAP::SOAPInt
#   s_it_featured - SOAP::SOAPInt
#   s_it_thumb_url - SOAP::SOAPString
#   s_it_thumb - SOAP::SOAPInt
#   s_it_postage - SOAP::SOAPFloat
#   s_it_is_for_guests - SOAP::SOAPInt
#   s_it_is_tablica_advert - SOAP::SOAPInt
#   s_it_is_allegro_standard - SOAP::SOAPInt
#   s_it_has_free_shipping - SOAP::SOAPInt
#   s_it_order_fulfillment_time - SOAP::SOAPInt
#   s_it_advert_info - AdvertInfoStruct
#   s_it_seller_info - SellerInfoStruct
#   s_it_attribs_list - ArrayOfAttribStruct
#   s_it_fulfillment_time - SOAP::SOAPInt
class SearchResponseType
  attr_accessor :s_it_id
  attr_accessor :s_it_name
  attr_accessor :s_it_price
  attr_accessor :s_it_starting_price
  attr_accessor :s_it_is_buy_now
  attr_accessor :s_it_buy_now_price
  attr_accessor :s_it_bid_count
  attr_accessor :s_it_foto_count
  attr_accessor :s_it_starting_time
  attr_accessor :s_it_ending_time
  attr_accessor :s_it_time_left
  attr_accessor :s_it_city
  attr_accessor :s_it_state
  attr_accessor :s_it_country
  attr_accessor :s_it_category_id
  attr_accessor :s_it_featured
  attr_accessor :s_it_thumb_url
  attr_accessor :s_it_thumb
  attr_accessor :s_it_postage
  attr_accessor :s_it_is_for_guests
  attr_accessor :s_it_is_tablica_advert
  attr_accessor :s_it_is_allegro_standard
  attr_accessor :s_it_has_free_shipping
  attr_accessor :s_it_order_fulfillment_time
  attr_accessor :s_it_advert_info
  attr_accessor :s_it_seller_info
  attr_accessor :s_it_attribs_list
  attr_accessor :s_it_fulfillment_time

  def initialize(s_it_id = nil, s_it_name = nil, s_it_price = nil, s_it_starting_price = nil, s_it_is_buy_now = nil, s_it_buy_now_price = nil, s_it_bid_count = nil, s_it_foto_count = nil, s_it_starting_time = nil, s_it_ending_time = nil, s_it_time_left = nil, s_it_city = nil, s_it_state = nil, s_it_country = nil, s_it_category_id = nil, s_it_featured = nil, s_it_thumb_url = nil, s_it_thumb = nil, s_it_postage = nil, s_it_is_for_guests = nil, s_it_is_tablica_advert = nil, s_it_is_allegro_standard = nil, s_it_has_free_shipping = nil, s_it_order_fulfillment_time = nil, s_it_advert_info = nil, s_it_seller_info = nil, s_it_attribs_list = nil, s_it_fulfillment_time = nil)
    @s_it_id = s_it_id
    @s_it_name = s_it_name
    @s_it_price = s_it_price
    @s_it_starting_price = s_it_starting_price
    @s_it_is_buy_now = s_it_is_buy_now
    @s_it_buy_now_price = s_it_buy_now_price
    @s_it_bid_count = s_it_bid_count
    @s_it_foto_count = s_it_foto_count
    @s_it_starting_time = s_it_starting_time
    @s_it_ending_time = s_it_ending_time
    @s_it_time_left = s_it_time_left
    @s_it_city = s_it_city
    @s_it_state = s_it_state
    @s_it_country = s_it_country
    @s_it_category_id = s_it_category_id
    @s_it_featured = s_it_featured
    @s_it_thumb_url = s_it_thumb_url
    @s_it_thumb = s_it_thumb
    @s_it_postage = s_it_postage
    @s_it_is_for_guests = s_it_is_for_guests
    @s_it_is_tablica_advert = s_it_is_tablica_advert
    @s_it_is_allegro_standard = s_it_is_allegro_standard
    @s_it_has_free_shipping = s_it_has_free_shipping
    @s_it_order_fulfillment_time = s_it_order_fulfillment_time
    @s_it_advert_info = s_it_advert_info
    @s_it_seller_info = s_it_seller_info
    @s_it_attribs_list = s_it_attribs_list
    @s_it_fulfillment_time = s_it_fulfillment_time
  end
end

# {urn:AllegroWebApi}SellFormFieldsForCategoryStruct
#   sell_form_fields_list - ArrayOfSellForms
#   sell_form_fields_version_key - SOAP::SOAPLong
#   sell_form_fields_component_value - SOAP::SOAPString
class SellFormFieldsForCategoryStruct
  attr_accessor :sell_form_fields_list
  attr_accessor :sell_form_fields_version_key
  attr_accessor :sell_form_fields_component_value

  def initialize(sell_form_fields_list = nil, sell_form_fields_version_key = nil, sell_form_fields_component_value = nil)
    @sell_form_fields_list = sell_form_fields_list
    @sell_form_fields_version_key = sell_form_fields_version_key
    @sell_form_fields_component_value = sell_form_fields_component_value
  end
end

# {urn:AllegroWebApi}SellFormType
#   sell_form_id - SOAP::SOAPInt
#   sell_form_title - SOAP::SOAPString
#   sell_form_cat - SOAP::SOAPInt
#   sell_form_type - SOAP::SOAPInt
#   sell_form_res_type - SOAP::SOAPInt
#   sell_form_def_value - SOAP::SOAPInt
#   sell_form_opt - SOAP::SOAPInt
#   sell_form_pos - SOAP::SOAPInt
#   sell_form_length - SOAP::SOAPInt
#   sell_min_value - SOAP::SOAPString
#   sell_max_value - SOAP::SOAPString
#   sell_form_desc - SOAP::SOAPString
#   sell_form_opts_values - SOAP::SOAPString
#   sell_form_field_desc - SOAP::SOAPString
#   sell_form_param_id - SOAP::SOAPInt
#   sell_form_param_values - SOAP::SOAPString
#   sell_form_parent_id - SOAP::SOAPInt
#   sell_form_parent_value - SOAP::SOAPString
#   sell_form_unit - SOAP::SOAPString
#   sell_form_options - SOAP::SOAPInt
class SellFormType
  attr_accessor :sell_form_id
  attr_accessor :sell_form_title
  attr_accessor :sell_form_cat
  attr_accessor :sell_form_type
  attr_accessor :sell_form_res_type
  attr_accessor :sell_form_def_value
  attr_accessor :sell_form_opt
  attr_accessor :sell_form_pos
  attr_accessor :sell_form_length
  attr_accessor :sell_min_value
  attr_accessor :sell_max_value
  attr_accessor :sell_form_desc
  attr_accessor :sell_form_opts_values
  attr_accessor :sell_form_field_desc
  attr_accessor :sell_form_param_id
  attr_accessor :sell_form_param_values
  attr_accessor :sell_form_parent_id
  attr_accessor :sell_form_parent_value
  attr_accessor :sell_form_unit
  attr_accessor :sell_form_options

  def initialize(sell_form_id = nil, sell_form_title = nil, sell_form_cat = nil, sell_form_type = nil, sell_form_res_type = nil, sell_form_def_value = nil, sell_form_opt = nil, sell_form_pos = nil, sell_form_length = nil, sell_min_value = nil, sell_max_value = nil, sell_form_desc = nil, sell_form_opts_values = nil, sell_form_field_desc = nil, sell_form_param_id = nil, sell_form_param_values = nil, sell_form_parent_id = nil, sell_form_parent_value = nil, sell_form_unit = nil, sell_form_options = nil)
    @sell_form_id = sell_form_id
    @sell_form_title = sell_form_title
    @sell_form_cat = sell_form_cat
    @sell_form_type = sell_form_type
    @sell_form_res_type = sell_form_res_type
    @sell_form_def_value = sell_form_def_value
    @sell_form_opt = sell_form_opt
    @sell_form_pos = sell_form_pos
    @sell_form_length = sell_form_length
    @sell_min_value = sell_min_value
    @sell_max_value = sell_max_value
    @sell_form_desc = sell_form_desc
    @sell_form_opts_values = sell_form_opts_values
    @sell_form_field_desc = sell_form_field_desc
    @sell_form_param_id = sell_form_param_id
    @sell_form_param_values = sell_form_param_values
    @sell_form_parent_id = sell_form_parent_id
    @sell_form_parent_value = sell_form_parent_value
    @sell_form_unit = sell_form_unit
    @sell_form_options = sell_form_options
  end
end

# {urn:AllegroWebApi}SellRatingAveragePerMonthStruct
#   sell_rating_month - SOAP::SOAPString
#   sell_rating_average_values - ArrayOfSellRatingStatsStruct
class SellRatingAveragePerMonthStruct
  attr_accessor :sell_rating_month
  attr_accessor :sell_rating_average_values

  def initialize(sell_rating_month = nil, sell_rating_average_values = nil)
    @sell_rating_month = sell_rating_month
    @sell_rating_average_values = sell_rating_average_values
  end
end

# {urn:AllegroWebApi}SellRatingAverageStruct
#   sell_rating_group_title - SOAP::SOAPString
#   sell_rating_group_average - SOAP::SOAPFloat
class SellRatingAverageStruct
  attr_accessor :sell_rating_group_title
  attr_accessor :sell_rating_group_average

  def initialize(sell_rating_group_title = nil, sell_rating_group_average = nil)
    @sell_rating_group_title = sell_rating_group_title
    @sell_rating_group_average = sell_rating_group_average
  end
end

# {urn:AllegroWebApi}SellRatingDetailStruct
#   sell_rating_group_title - SOAP::SOAPString
#   sell_rating_reasons_summary - ArrayOfSellRatingReasonSumStruct
class SellRatingDetailStruct
  attr_accessor :sell_rating_group_title
  attr_accessor :sell_rating_reasons_summary

  def initialize(sell_rating_group_title = nil, sell_rating_reasons_summary = nil)
    @sell_rating_group_title = sell_rating_group_title
    @sell_rating_reasons_summary = sell_rating_reasons_summary
  end
end

# {urn:AllegroWebApi}SellRatingEstimationStruct
#   sell_rating_group_id - SOAP::SOAPInt
#   sell_rating_group_estimation - SOAP::SOAPInt
#   sell_rating_reason_id - SOAP::SOAPInt
class SellRatingEstimationStruct
  attr_accessor :sell_rating_group_id
  attr_accessor :sell_rating_group_estimation
  attr_accessor :sell_rating_reason_id

  def initialize(sell_rating_group_id = nil, sell_rating_group_estimation = nil, sell_rating_reason_id = nil)
    @sell_rating_group_id = sell_rating_group_id
    @sell_rating_group_estimation = sell_rating_group_estimation
    @sell_rating_reason_id = sell_rating_reason_id
  end
end

# {urn:AllegroWebApi}SellRatingInfoStruct
#   sell_rating_group_id - SOAP::SOAPInt
#   sell_rating_group_title - SOAP::SOAPString
#   sell_rating_reasons - ArrayOfSellRatingReasonStruct
class SellRatingInfoStruct
  attr_accessor :sell_rating_group_id
  attr_accessor :sell_rating_group_title
  attr_accessor :sell_rating_reasons

  def initialize(sell_rating_group_id = nil, sell_rating_group_title = nil, sell_rating_reasons = nil)
    @sell_rating_group_id = sell_rating_group_id
    @sell_rating_group_title = sell_rating_group_title
    @sell_rating_reasons = sell_rating_reasons
  end
end

# {urn:AllegroWebApi}SellRatingReasonStruct
#   sell_rating_reason_id - SOAP::SOAPInt
#   sell_rating_reason_title - SOAP::SOAPString
class SellRatingReasonStruct
  attr_accessor :sell_rating_reason_id
  attr_accessor :sell_rating_reason_title

  def initialize(sell_rating_reason_id = nil, sell_rating_reason_title = nil)
    @sell_rating_reason_id = sell_rating_reason_id
    @sell_rating_reason_title = sell_rating_reason_title
  end
end

# {urn:AllegroWebApi}SellRatingReasonSumStruct
#   sell_rating_reason_title - SOAP::SOAPString
#   sell_rating_reason_count - SOAP::SOAPInt
class SellRatingReasonSumStruct
  attr_accessor :sell_rating_reason_title
  attr_accessor :sell_rating_reason_count

  def initialize(sell_rating_reason_title = nil, sell_rating_reason_count = nil)
    @sell_rating_reason_title = sell_rating_reason_title
    @sell_rating_reason_count = sell_rating_reason_count
  end
end

# {urn:AllegroWebApi}SellRatingStatsStruct
#   sell_rating_group_title - SOAP::SOAPString
#   sell_rating_group_stats - SOAP::SOAPString
class SellRatingStatsStruct
  attr_accessor :sell_rating_group_title
  attr_accessor :sell_rating_group_stats

  def initialize(sell_rating_group_title = nil, sell_rating_group_stats = nil)
    @sell_rating_group_title = sell_rating_group_title
    @sell_rating_group_stats = sell_rating_group_stats
  end
end

# {urn:AllegroWebApi}SellerInfoStruct
#   seller_id - SOAP::SOAPInt
#   seller_name - SOAP::SOAPString
#   seller_rating - SOAP::SOAPInt
#   seller_info - SOAP::SOAPInt
class SellerInfoStruct
  attr_accessor :seller_id
  attr_accessor :seller_name
  attr_accessor :seller_rating
  attr_accessor :seller_info

  def initialize(seller_id = nil, seller_name = nil, seller_rating = nil, seller_info = nil)
    @seller_id = seller_id
    @seller_name = seller_name
    @seller_rating = seller_rating
    @seller_info = seller_info
  end
end

# {urn:AllegroWebApi}SellerPaymentInfoStruct
#   shipment_payment_info_pza - ArrayOfShipmentPaymentInfoStruct
#   shipment_payment_info_non_pza - ArrayOfShipmentPaymentInfoStruct
class SellerPaymentInfoStruct
  attr_accessor :shipment_payment_info_pza
  attr_accessor :shipment_payment_info_non_pza

  def initialize(shipment_payment_info_pza = nil, shipment_payment_info_non_pza = nil)
    @shipment_payment_info_pza = shipment_payment_info_pza
    @shipment_payment_info_non_pza = shipment_payment_info_non_pza
  end
end

# {urn:AllegroWebApi}SellerShipmentDataStruct
#   seller_id - SOAP::SOAPInt
#   seller_payment_info - SellerPaymentInfoStruct
class SellerShipmentDataStruct
  attr_accessor :seller_id
  attr_accessor :seller_payment_info

  def initialize(seller_id = nil, seller_payment_info = nil)
    @seller_id = seller_id
    @seller_payment_info = seller_payment_info
  end
end

# {urn:AllegroWebApi}SendRefundFormResultStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   send_refund_result - SOAP::SOAPInt
#   send_refund_err_code - SOAP::SOAPString
#   send_refund_err_msg - SOAP::SOAPString
class SendRefundFormResultStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :send_refund_result
  attr_accessor :send_refund_err_code
  attr_accessor :send_refund_err_msg

  def initialize(item_id = nil, buyer_id = nil, send_refund_result = nil, send_refund_err_code = nil, send_refund_err_msg = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @send_refund_result = send_refund_result
    @send_refund_err_code = send_refund_err_code
    @send_refund_err_msg = send_refund_err_msg
  end
end

# {urn:AllegroWebApi}SendRefundFormStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   refund_reason - SOAP::SOAPInt
#   item_quantity_sold - SOAP::SOAPInt
class SendRefundFormStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :refund_reason
  attr_accessor :item_quantity_sold

  def initialize(item_id = nil, buyer_id = nil, refund_reason = nil, item_quantity_sold = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @refund_reason = refund_reason
    @item_quantity_sold = item_quantity_sold
  end
end

# {urn:AllegroWebApi}SendReminderMessageResultStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   reminder_msg_result - SOAP::SOAPInt
#   reminder_msg_err_code - SOAP::SOAPString
#   reminder_msg_err_msg - SOAP::SOAPString
class SendReminderMessageResultStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :reminder_msg_result
  attr_accessor :reminder_msg_err_code
  attr_accessor :reminder_msg_err_msg

  def initialize(item_id = nil, buyer_id = nil, reminder_msg_result = nil, reminder_msg_err_code = nil, reminder_msg_err_msg = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @reminder_msg_result = reminder_msg_result
    @reminder_msg_err_code = reminder_msg_err_code
    @reminder_msg_err_msg = reminder_msg_err_msg
  end
end

# {urn:AllegroWebApi}SendReminderMessageStruct
#   item_id - SOAP::SOAPLong
#   buyer_id - SOAP::SOAPInt
#   message_body - SOAP::SOAPString
#   include_my_data - SOAP::SOAPInt
#   send_cc_to_me - SOAP::SOAPInt
class SendReminderMessageStruct
  attr_accessor :item_id
  attr_accessor :buyer_id
  attr_accessor :message_body
  attr_accessor :include_my_data
  attr_accessor :send_cc_to_me

  def initialize(item_id = nil, buyer_id = nil, message_body = nil, include_my_data = nil, send_cc_to_me = nil)
    @item_id = item_id
    @buyer_id = buyer_id
    @message_body = message_body
    @include_my_data = include_my_data
    @send_cc_to_me = send_cc_to_me
  end
end

# {urn:AllegroWebApi}ServiceInfoCatStruct
#   an_cat_id - SOAP::SOAPInt
#   an_cat_name - SOAP::SOAPString
class ServiceInfoCatStruct
  attr_accessor :an_cat_id
  attr_accessor :an_cat_name

  def initialize(an_cat_id = nil, an_cat_name = nil)
    @an_cat_id = an_cat_id
    @an_cat_name = an_cat_name
  end
end

# {urn:AllegroWebApi}ServiceInfoStruct
#   an_it_id - SOAP::SOAPInt
#   an_cat_id - SOAP::SOAPInt
#   an_it_title - SOAP::SOAPString
#   an_it_body - SOAP::SOAPBase64
#   country_id - SOAP::SOAPInt
#   an_it_date - SOAP::SOAPLong
class ServiceInfoStruct
  attr_accessor :an_it_id
  attr_accessor :an_cat_id
  attr_accessor :an_it_title
  attr_accessor :an_it_body
  attr_accessor :country_id
  attr_accessor :an_it_date

  def initialize(an_it_id = nil, an_cat_id = nil, an_it_title = nil, an_it_body = nil, country_id = nil, an_it_date = nil)
    @an_it_id = an_it_id
    @an_cat_id = an_cat_id
    @an_it_title = an_it_title
    @an_it_body = an_it_body
    @country_id = country_id
    @an_it_date = an_it_date
  end
end

# {urn:AllegroWebApi}ShipmentDataStruct
#   shipment_id - SOAP::SOAPInt
#   shipment_name - SOAP::SOAPString
#   shipment_type - SOAP::SOAPInt
#   shipment_time - ShipmentTimeStruct
class ShipmentDataStruct
  attr_accessor :shipment_id
  attr_accessor :shipment_name
  attr_accessor :shipment_type
  attr_accessor :shipment_time

  def initialize(shipment_id = nil, shipment_name = nil, shipment_type = nil, shipment_time = nil)
    @shipment_id = shipment_id
    @shipment_name = shipment_name
    @shipment_type = shipment_type
    @shipment_time = shipment_time
  end
end

# {urn:AllegroWebApi}ShipmentPaymentInfoStruct
#   shipment_id - SOAP::SOAPInt
#   shipment_name - SOAP::SOAPString
#   shipment_amount - SOAP::SOAPFloat
#   shipment_payment_type - SOAP::SOAPInt
#   shipment_item_ids - ArrayOfItemsID
class ShipmentPaymentInfoStruct
  attr_accessor :shipment_id
  attr_accessor :shipment_name
  attr_accessor :shipment_amount
  attr_accessor :shipment_payment_type
  attr_accessor :shipment_item_ids

  def initialize(shipment_id = nil, shipment_name = nil, shipment_amount = nil, shipment_payment_type = nil, shipment_item_ids = nil)
    @shipment_id = shipment_id
    @shipment_name = shipment_name
    @shipment_amount = shipment_amount
    @shipment_payment_type = shipment_payment_type
    @shipment_item_ids = shipment_item_ids
  end
end

# {urn:AllegroWebApi}ShipmentTimeStruct
#   shipment_time_from - SOAP::SOAPInt
#   shipment_time_to - SOAP::SOAPInt
class ShipmentTimeStruct
  attr_accessor :shipment_time_from
  attr_accessor :shipment_time_to

  def initialize(shipment_time_from = nil, shipment_time_to = nil)
    @shipment_time_from = shipment_time_from
    @shipment_time_to = shipment_time_to
  end
end

# {urn:AllegroWebApi}ShowUserFeedbacks
#   user_f_last_week - SOAP::SOAPInt
#   user_f_last_month - SOAP::SOAPInt
#   user_f_all - SOAP::SOAPInt
#   user_f_sold_items - SOAP::SOAPInt
#   user_f_buy_items - SOAP::SOAPInt
class ShowUserFeedbacks
  attr_accessor :user_f_last_week
  attr_accessor :user_f_last_month
  attr_accessor :user_f_all
  attr_accessor :user_f_sold_items
  attr_accessor :user_f_buy_items

  def initialize(user_f_last_week = nil, user_f_last_month = nil, user_f_all = nil, user_f_sold_items = nil, user_f_buy_items = nil)
    @user_f_last_week = user_f_last_week
    @user_f_last_month = user_f_last_month
    @user_f_all = user_f_all
    @user_f_sold_items = user_f_sold_items
    @user_f_buy_items = user_f_buy_items
  end
end

# {urn:AllegroWebApi}SiteFlagInfoType
#   site_name - SOAP::SOAPString
#   site_url - SOAP::SOAPString
#   site_country_code - SOAP::SOAPInt
#   site_code_page - SOAP::SOAPString
#   site_logo_gif - SOAP::SOAPBase64
#   site_flag_gif - SOAP::SOAPBase64
class SiteFlagInfoType
  attr_accessor :site_name
  attr_accessor :site_url
  attr_accessor :site_country_code
  attr_accessor :site_code_page
  attr_accessor :site_logo_gif
  attr_accessor :site_flag_gif

  def initialize(site_name = nil, site_url = nil, site_country_code = nil, site_code_page = nil, site_logo_gif = nil, site_flag_gif = nil)
    @site_name = site_name
    @site_url = site_url
    @site_country_code = site_country_code
    @site_code_page = site_code_page
    @site_logo_gif = site_logo_gif
    @site_flag_gif = site_flag_gif
  end
end

# {urn:AllegroWebApi}SiteInfoType
#   site_name - SOAP::SOAPString
#   site_url - SOAP::SOAPString
#   site_country_code - SOAP::SOAPInt
#   site_code_page - SOAP::SOAPString
#   site_logo_gif - SOAP::SOAPBase64
class SiteInfoType
  attr_accessor :site_name
  attr_accessor :site_url
  attr_accessor :site_country_code
  attr_accessor :site_code_page
  attr_accessor :site_logo_gif

  def initialize(site_name = nil, site_url = nil, site_country_code = nil, site_code_page = nil, site_logo_gif = nil)
    @site_name = site_name
    @site_url = site_url
    @site_country_code = site_country_code
    @site_code_page = site_code_page
    @site_logo_gif = site_logo_gif
  end
end

# {urn:AllegroWebApi}SiteJournal
#   row_id - SOAP::SOAPLong
#   item_id - SOAP::SOAPLong
#   change_type - SOAP::SOAPString
#   change_date - SOAP::SOAPLong
#   current_price - SOAP::SOAPFloat
#   item_seller_id - SOAP::SOAPLong
class SiteJournal
  attr_accessor :row_id
  attr_accessor :item_id
  attr_accessor :change_type
  attr_accessor :change_date
  attr_accessor :current_price
  attr_accessor :item_seller_id

  def initialize(row_id = nil, item_id = nil, change_type = nil, change_date = nil, current_price = nil, item_seller_id = nil)
    @row_id = row_id
    @item_id = item_id
    @change_type = change_type
    @change_date = change_date
    @current_price = current_price
    @item_seller_id = item_seller_id
  end
end

# {urn:AllegroWebApi}SiteJournalDealsInfoStruct
#   deal_events_count - SOAP::SOAPInt
#   deal_last_event_time - SOAP::SOAPLong
class SiteJournalDealsInfoStruct
  attr_accessor :deal_events_count
  attr_accessor :deal_last_event_time

  def initialize(deal_events_count = nil, deal_last_event_time = nil)
    @deal_events_count = deal_events_count
    @deal_last_event_time = deal_last_event_time
  end
end

# {urn:AllegroWebApi}SiteJournalDealsStruct
#   deal_event_id - SOAP::SOAPLong
#   deal_event_type - SOAP::SOAPInt
#   deal_event_time - SOAP::SOAPLong
#   deal_id - SOAP::SOAPLong
#   deal_transaction_id - SOAP::SOAPLong
#   deal_seller_id - SOAP::SOAPInt
#   deal_item_id - SOAP::SOAPLong
#   deal_buyer_id - SOAP::SOAPInt
#   deal_quantity - SOAP::SOAPInt
class SiteJournalDealsStruct
  attr_accessor :deal_event_id
  attr_accessor :deal_event_type
  attr_accessor :deal_event_time
  attr_accessor :deal_id
  attr_accessor :deal_transaction_id
  attr_accessor :deal_seller_id
  attr_accessor :deal_item_id
  attr_accessor :deal_buyer_id
  attr_accessor :deal_quantity

  def initialize(deal_event_id = nil, deal_event_type = nil, deal_event_time = nil, deal_id = nil, deal_transaction_id = nil, deal_seller_id = nil, deal_item_id = nil, deal_buyer_id = nil, deal_quantity = nil)
    @deal_event_id = deal_event_id
    @deal_event_type = deal_event_type
    @deal_event_time = deal_event_time
    @deal_id = deal_id
    @deal_transaction_id = deal_transaction_id
    @deal_seller_id = deal_seller_id
    @deal_item_id = deal_item_id
    @deal_buyer_id = deal_buyer_id
    @deal_quantity = deal_quantity
  end
end

# {urn:AllegroWebApi}SiteJournalInfo
#   items_number - SOAP::SOAPInt
#   last_item_date - SOAP::SOAPLong
class SiteJournalInfo
  attr_accessor :items_number
  attr_accessor :last_item_date

  def initialize(items_number = nil, last_item_date = nil)
    @items_number = items_number
    @last_item_date = last_item_date
  end
end

# {urn:AllegroWebApi}SpecialAuctionStruct
#   it_id - SOAP::SOAPLong
#   it_name - SOAP::SOAPString
#   it_price - SOAP::SOAPFloat
#   it_buy_now_price - SOAP::SOAPFloat
#   it_bid_count - SOAP::SOAPInt
#   it_foto_count - SOAP::SOAPInt
#   it_time_left - SOAP::SOAPLong
#   it_ending_time - SOAP::SOAPLong
#   it_country - SOAP::SOAPInt
#   it_is_listing_thumb - SOAP::SOAPInt
#   it_is_escrow - SOAP::SOAPInt
#   it_seller_id - SOAP::SOAPLong
#   it_send_cost_price - SOAP::SOAPFloat
#   it_is_bold_title - SOAP::SOAPInt
#   it_starting_time - SOAP::SOAPLong
#   it_is_allegro_standard - SOAP::SOAPInt
#   it_has_free_shipping - SOAP::SOAPInt
#   it_attribs_list - ArrayOfAttribStruct
class SpecialAuctionStruct
  attr_accessor :it_id
  attr_accessor :it_name
  attr_accessor :it_price
  attr_accessor :it_buy_now_price
  attr_accessor :it_bid_count
  attr_accessor :it_foto_count
  attr_accessor :it_time_left
  attr_accessor :it_ending_time
  attr_accessor :it_country
  attr_accessor :it_is_listing_thumb
  attr_accessor :it_is_escrow
  attr_accessor :it_seller_id
  attr_accessor :it_send_cost_price
  attr_accessor :it_is_bold_title
  attr_accessor :it_starting_time
  attr_accessor :it_is_allegro_standard
  attr_accessor :it_has_free_shipping
  attr_accessor :it_attribs_list

  def initialize(it_id = nil, it_name = nil, it_price = nil, it_buy_now_price = nil, it_bid_count = nil, it_foto_count = nil, it_time_left = nil, it_ending_time = nil, it_country = nil, it_is_listing_thumb = nil, it_is_escrow = nil, it_seller_id = nil, it_send_cost_price = nil, it_is_bold_title = nil, it_starting_time = nil, it_is_allegro_standard = nil, it_has_free_shipping = nil, it_attribs_list = nil)
    @it_id = it_id
    @it_name = it_name
    @it_price = it_price
    @it_buy_now_price = it_buy_now_price
    @it_bid_count = it_bid_count
    @it_foto_count = it_foto_count
    @it_time_left = it_time_left
    @it_ending_time = it_ending_time
    @it_country = it_country
    @it_is_listing_thumb = it_is_listing_thumb
    @it_is_escrow = it_is_escrow
    @it_seller_id = it_seller_id
    @it_send_cost_price = it_send_cost_price
    @it_is_bold_title = it_is_bold_title
    @it_starting_time = it_starting_time
    @it_is_allegro_standard = it_is_allegro_standard
    @it_has_free_shipping = it_has_free_shipping
    @it_attribs_list = it_attribs_list
  end
end

# {urn:AllegroWebApi}StateInfoStruct
#   state_id - SOAP::SOAPInt
#   state_name - SOAP::SOAPString
class StateInfoStruct
  attr_accessor :state_id
  attr_accessor :state_name

  def initialize(state_id = nil, state_name = nil)
    @state_id = state_id
    @state_name = state_name
  end
end

# {urn:AllegroWebApi}StructSellAgain
#   sell_item_id - SOAP::SOAPLong
#   sell_item_info - SOAP::SOAPString
#   sell_item_local_id - SOAP::SOAPInt
class StructSellAgain
  attr_accessor :sell_item_id
  attr_accessor :sell_item_info
  attr_accessor :sell_item_local_id

  def initialize(sell_item_id = nil, sell_item_info = nil, sell_item_local_id = nil)
    @sell_item_id = sell_item_id
    @sell_item_info = sell_item_info
    @sell_item_local_id = sell_item_local_id
  end
end

# {urn:AllegroWebApi}StructSellFailed
#   sell_item_id - SOAP::SOAPLong
#   sell_fault_code - SOAP::SOAPString
#   sell_fault_string - SOAP::SOAPString
class StructSellFailed
  attr_accessor :sell_item_id
  attr_accessor :sell_fault_code
  attr_accessor :sell_fault_string

  def initialize(sell_item_id = nil, sell_fault_code = nil, sell_fault_string = nil)
    @sell_item_id = sell_item_id
    @sell_fault_code = sell_fault_code
    @sell_fault_string = sell_fault_string
  end
end

# {urn:AllegroWebApi}SysStatusType
#   country_id - SOAP::SOAPInt
#   program_version - SOAP::SOAPString
#   cats_version - SOAP::SOAPString
#   api_version - SOAP::SOAPString
#   attrib_version - SOAP::SOAPString
#   form_sell_version - SOAP::SOAPString
#   site_version - SOAP::SOAPString
#   ver_key - SOAP::SOAPLong
class SysStatusType
  attr_accessor :country_id
  attr_accessor :program_version
  attr_accessor :cats_version
  attr_accessor :api_version
  attr_accessor :attrib_version
  attr_accessor :form_sell_version
  attr_accessor :site_version
  attr_accessor :ver_key

  def initialize(country_id = nil, program_version = nil, cats_version = nil, api_version = nil, attrib_version = nil, form_sell_version = nil, site_version = nil, ver_key = nil)
    @country_id = country_id
    @program_version = program_version
    @cats_version = cats_version
    @api_version = api_version
    @attrib_version = attrib_version
    @form_sell_version = form_sell_version
    @site_version = site_version
    @ver_key = ver_key
  end
end

# {urn:AllegroWebApi}TemplateInfoType
#   template_id - SOAP::SOAPInt
#   template_name - SOAP::SOAPString
#   template_thumb - SOAP::SOAPBase64
#   template_desc_images - SOAP::SOAPBase64
class TemplateInfoType
  attr_accessor :template_id
  attr_accessor :template_name
  attr_accessor :template_thumb
  attr_accessor :template_desc_images

  def initialize(template_id = nil, template_name = nil, template_thumb = nil, template_desc_images = nil)
    @template_id = template_id
    @template_name = template_name
    @template_thumb = template_thumb
    @template_desc_images = template_desc_images
  end
end

# {urn:AllegroWebApi}TransactionPayByLinkStruct
#   action_http_method - SOAP::SOAPString
#   action_url - SOAP::SOAPString
#   action_data - ArrayOfActionDataStruct
class TransactionPayByLinkStruct
  attr_accessor :action_http_method
  attr_accessor :action_url
  attr_accessor :action_data

  def initialize(action_http_method = nil, action_url = nil, action_data = nil)
    @action_http_method = action_http_method
    @action_url = action_url
    @action_data = action_data
  end
end

# {urn:AllegroWebApi}TranslatedProductStruct
#   product_id - SOAP::SOAPLong
class TranslatedProductStruct
  attr_accessor :product_id

  def initialize(product_id = nil)
    @product_id = product_id
  end
end

# {urn:AllegroWebApi}UserBlackListAddResultStruct
#   user_id - SOAP::SOAPInt
#   add_to_black_list_result - SOAP::SOAPInt
#   add_to_black_list_err_code - SOAP::SOAPString
#   add_to_black_list_err_msg - SOAP::SOAPString
class UserBlackListAddResultStruct
  attr_accessor :user_id
  attr_accessor :add_to_black_list_result
  attr_accessor :add_to_black_list_err_code
  attr_accessor :add_to_black_list_err_msg

  def initialize(user_id = nil, add_to_black_list_result = nil, add_to_black_list_err_code = nil, add_to_black_list_err_msg = nil)
    @user_id = user_id
    @add_to_black_list_result = add_to_black_list_result
    @add_to_black_list_err_code = add_to_black_list_err_code
    @add_to_black_list_err_msg = add_to_black_list_err_msg
  end
end

# {urn:AllegroWebApi}UserBlackListStruct
#   user_id - SOAP::SOAPInt
#   user_black_list_note - SOAP::SOAPString
class UserBlackListStruct
  attr_accessor :user_id
  attr_accessor :user_black_list_note

  def initialize(user_id = nil, user_black_list_note = nil)
    @user_id = user_id
    @user_black_list_note = user_black_list_note
  end
end

# {urn:AllegroWebApi}UserDataStruct
#   user_id - SOAP::SOAPLong
#   user_login - SOAP::SOAPString
#   user_rating - SOAP::SOAPInt
#   user_first_name - SOAP::SOAPString
#   user_last_name - SOAP::SOAPString
#   user_maiden_name - SOAP::SOAPString
#   user_company - SOAP::SOAPString
#   user_country_id - SOAP::SOAPInt
#   user_state_id - SOAP::SOAPInt
#   user_postcode - SOAP::SOAPString
#   user_city - SOAP::SOAPString
#   user_address - SOAP::SOAPString
#   user_email - SOAP::SOAPString
#   user_phone - SOAP::SOAPString
#   user_phone2 - SOAP::SOAPString
#   user_ss_status - SOAP::SOAPInt
#   site_country_id - SOAP::SOAPInt
#   user_junior_status - SOAP::SOAPInt
#   user_birth_date - SOAP::SOAPLong
#   user_has_shop - SOAP::SOAPInt
#   user_company_icon - SOAP::SOAPInt
#   user_is_allegro_standard - SOAP::SOAPInt
class UserDataStruct
  attr_accessor :user_id
  attr_accessor :user_login
  attr_accessor :user_rating
  attr_accessor :user_first_name
  attr_accessor :user_last_name
  attr_accessor :user_maiden_name
  attr_accessor :user_company
  attr_accessor :user_country_id
  attr_accessor :user_state_id
  attr_accessor :user_postcode
  attr_accessor :user_city
  attr_accessor :user_address
  attr_accessor :user_email
  attr_accessor :user_phone
  attr_accessor :user_phone2
  attr_accessor :user_ss_status
  attr_accessor :site_country_id
  attr_accessor :user_junior_status
  attr_accessor :user_birth_date
  attr_accessor :user_has_shop
  attr_accessor :user_company_icon
  attr_accessor :user_is_allegro_standard

  def initialize(user_id = nil, user_login = nil, user_rating = nil, user_first_name = nil, user_last_name = nil, user_maiden_name = nil, user_company = nil, user_country_id = nil, user_state_id = nil, user_postcode = nil, user_city = nil, user_address = nil, user_email = nil, user_phone = nil, user_phone2 = nil, user_ss_status = nil, site_country_id = nil, user_junior_status = nil, user_birth_date = nil, user_has_shop = nil, user_company_icon = nil, user_is_allegro_standard = nil)
    @user_id = user_id
    @user_login = user_login
    @user_rating = user_rating
    @user_first_name = user_first_name
    @user_last_name = user_last_name
    @user_maiden_name = user_maiden_name
    @user_company = user_company
    @user_country_id = user_country_id
    @user_state_id = user_state_id
    @user_postcode = user_postcode
    @user_city = user_city
    @user_address = user_address
    @user_email = user_email
    @user_phone = user_phone
    @user_phone2 = user_phone2
    @user_ss_status = user_ss_status
    @site_country_id = site_country_id
    @user_junior_status = user_junior_status
    @user_birth_date = user_birth_date
    @user_has_shop = user_has_shop
    @user_company_icon = user_company_icon
    @user_is_allegro_standard = user_is_allegro_standard
  end
end

# {urn:AllegroWebApi}UserIncomingPaymentRefundsStruct
#   pay_refund_trans_id - SOAP::SOAPLong
#   pay_refund_it_id - SOAP::SOAPLong
#   pay_refund_buyer_id - SOAP::SOAPInt
#   pay_refund_value - SOAP::SOAPFloat
#   pay_refund_reason - SOAP::SOAPString
#   pay_refund_date - SOAP::SOAPLong
class UserIncomingPaymentRefundsStruct
  attr_accessor :pay_refund_trans_id
  attr_accessor :pay_refund_it_id
  attr_accessor :pay_refund_buyer_id
  attr_accessor :pay_refund_value
  attr_accessor :pay_refund_reason
  attr_accessor :pay_refund_date

  def initialize(pay_refund_trans_id = nil, pay_refund_it_id = nil, pay_refund_buyer_id = nil, pay_refund_value = nil, pay_refund_reason = nil, pay_refund_date = nil)
    @pay_refund_trans_id = pay_refund_trans_id
    @pay_refund_it_id = pay_refund_it_id
    @pay_refund_buyer_id = pay_refund_buyer_id
    @pay_refund_value = pay_refund_value
    @pay_refund_reason = pay_refund_reason
    @pay_refund_date = pay_refund_date
  end
end

# {urn:AllegroWebApi}UserIncomingPaymentStruct
#   pay_trans_id - SOAP::SOAPLong
#   pay_trans_it_id - SOAP::SOAPLong
#   pay_trans_buyer_id - SOAP::SOAPInt
#   pay_trans_type - SOAP::SOAPString
#   pay_trans_status - SOAP::SOAPString
#   pay_trans_amount - SOAP::SOAPFloat
#   pay_trans_create_date - SOAP::SOAPLong
#   pay_trans_recv_date - SOAP::SOAPLong
#   pay_trans_price - SOAP::SOAPFloat
#   pay_trans_count - SOAP::SOAPInt
#   pay_trans_postage_amount - SOAP::SOAPFloat
#   pay_trans_details - ArrayOfPaymentDetailsStruct
#   pay_trans_incomplete - SOAP::SOAPInt
class UserIncomingPaymentStruct
  attr_accessor :pay_trans_id
  attr_accessor :pay_trans_it_id
  attr_accessor :pay_trans_buyer_id
  attr_accessor :pay_trans_type
  attr_accessor :pay_trans_status
  attr_accessor :pay_trans_amount
  attr_accessor :pay_trans_create_date
  attr_accessor :pay_trans_recv_date
  attr_accessor :pay_trans_price
  attr_accessor :pay_trans_count
  attr_accessor :pay_trans_postage_amount
  attr_accessor :pay_trans_details
  attr_accessor :pay_trans_incomplete

  def initialize(pay_trans_id = nil, pay_trans_it_id = nil, pay_trans_buyer_id = nil, pay_trans_type = nil, pay_trans_status = nil, pay_trans_amount = nil, pay_trans_create_date = nil, pay_trans_recv_date = nil, pay_trans_price = nil, pay_trans_count = nil, pay_trans_postage_amount = nil, pay_trans_details = nil, pay_trans_incomplete = nil)
    @pay_trans_id = pay_trans_id
    @pay_trans_it_id = pay_trans_it_id
    @pay_trans_buyer_id = pay_trans_buyer_id
    @pay_trans_type = pay_trans_type
    @pay_trans_status = pay_trans_status
    @pay_trans_amount = pay_trans_amount
    @pay_trans_create_date = pay_trans_create_date
    @pay_trans_recv_date = pay_trans_recv_date
    @pay_trans_price = pay_trans_price
    @pay_trans_count = pay_trans_count
    @pay_trans_postage_amount = pay_trans_postage_amount
    @pay_trans_details = pay_trans_details
    @pay_trans_incomplete = pay_trans_incomplete
  end
end

# {urn:AllegroWebApi}UserItemList
#   it_id - SOAP::SOAPLong
#   it_name - SOAP::SOAPString
#   it_price - SOAP::SOAPFloat
#   it_buy_now_price - SOAP::SOAPFloat
#   it_bid_count - SOAP::SOAPInt
#   it_time_left - SOAP::SOAPLong
#   it_foto_count - SOAP::SOAPInt
#   it_is_listing_thumb - SOAP::SOAPInt
#   it_is_bold_title - SOAP::SOAPInt
#   it_is_buy_now - SOAP::SOAPInt
#   it_country - SOAP::SOAPInt
#   it_is_escrow - SOAP::SOAPInt
#   it_starting_time - SOAP::SOAPLong
#   it_is_reserved_price - SOAP::SOAPInt
#   it_thumb_url - SOAP::SOAPString
#   it_is_allegro_standard - SOAP::SOAPInt
#   it_has_free_shipping - SOAP::SOAPInt
class UserItemList
  attr_accessor :it_id
  attr_accessor :it_name
  attr_accessor :it_price
  attr_accessor :it_buy_now_price
  attr_accessor :it_bid_count
  attr_accessor :it_time_left
  attr_accessor :it_foto_count
  attr_accessor :it_is_listing_thumb
  attr_accessor :it_is_bold_title
  attr_accessor :it_is_buy_now
  attr_accessor :it_country
  attr_accessor :it_is_escrow
  attr_accessor :it_starting_time
  attr_accessor :it_is_reserved_price
  attr_accessor :it_thumb_url
  attr_accessor :it_is_allegro_standard
  attr_accessor :it_has_free_shipping

  def initialize(it_id = nil, it_name = nil, it_price = nil, it_buy_now_price = nil, it_bid_count = nil, it_time_left = nil, it_foto_count = nil, it_is_listing_thumb = nil, it_is_bold_title = nil, it_is_buy_now = nil, it_country = nil, it_is_escrow = nil, it_starting_time = nil, it_is_reserved_price = nil, it_thumb_url = nil, it_is_allegro_standard = nil, it_has_free_shipping = nil)
    @it_id = it_id
    @it_name = it_name
    @it_price = it_price
    @it_buy_now_price = it_buy_now_price
    @it_bid_count = it_bid_count
    @it_time_left = it_time_left
    @it_foto_count = it_foto_count
    @it_is_listing_thumb = it_is_listing_thumb
    @it_is_bold_title = it_is_bold_title
    @it_is_buy_now = it_is_buy_now
    @it_country = it_country
    @it_is_escrow = it_is_escrow
    @it_starting_time = it_starting_time
    @it_is_reserved_price = it_is_reserved_price
    @it_thumb_url = it_thumb_url
    @it_is_allegro_standard = it_is_allegro_standard
    @it_has_free_shipping = it_has_free_shipping
  end
end

# {urn:AllegroWebApi}UserPaymentRefundsStruct
#   pay_refund_trans_id - SOAP::SOAPLong
#   pay_refund_it_id - SOAP::SOAPLong
#   pay_refund_seller_id - SOAP::SOAPInt
#   pay_refund_value - SOAP::SOAPFloat
#   pay_refund_reason - SOAP::SOAPString
#   pay_refund_date - SOAP::SOAPLong
class UserPaymentRefundsStruct
  attr_accessor :pay_refund_trans_id
  attr_accessor :pay_refund_it_id
  attr_accessor :pay_refund_seller_id
  attr_accessor :pay_refund_value
  attr_accessor :pay_refund_reason
  attr_accessor :pay_refund_date

  def initialize(pay_refund_trans_id = nil, pay_refund_it_id = nil, pay_refund_seller_id = nil, pay_refund_value = nil, pay_refund_reason = nil, pay_refund_date = nil)
    @pay_refund_trans_id = pay_refund_trans_id
    @pay_refund_it_id = pay_refund_it_id
    @pay_refund_seller_id = pay_refund_seller_id
    @pay_refund_value = pay_refund_value
    @pay_refund_reason = pay_refund_reason
    @pay_refund_date = pay_refund_date
  end
end

# {urn:AllegroWebApi}UserPaymentStruct
#   pay_trans_id - SOAP::SOAPLong
#   pay_trans_sellers - ArrayOfPaymentSellersStruct
#   pay_trans_type - SOAP::SOAPString
#   pay_trans_status - SOAP::SOAPString
#   pay_trans_amount - SOAP::SOAPFloat
#   pay_trans_create_date - SOAP::SOAPLong
#   pay_trans_price - SOAP::SOAPFloat
#   pay_trans_postage_amount - SOAP::SOAPFloat
#   pay_trans_incomplete - SOAP::SOAPInt
class UserPaymentStruct
  attr_accessor :pay_trans_id
  attr_accessor :pay_trans_sellers
  attr_accessor :pay_trans_type
  attr_accessor :pay_trans_status
  attr_accessor :pay_trans_amount
  attr_accessor :pay_trans_create_date
  attr_accessor :pay_trans_price
  attr_accessor :pay_trans_postage_amount
  attr_accessor :pay_trans_incomplete

  def initialize(pay_trans_id = nil, pay_trans_sellers = nil, pay_trans_type = nil, pay_trans_status = nil, pay_trans_amount = nil, pay_trans_create_date = nil, pay_trans_price = nil, pay_trans_postage_amount = nil, pay_trans_incomplete = nil)
    @pay_trans_id = pay_trans_id
    @pay_trans_sellers = pay_trans_sellers
    @pay_trans_type = pay_trans_type
    @pay_trans_status = pay_trans_status
    @pay_trans_amount = pay_trans_amount
    @pay_trans_create_date = pay_trans_create_date
    @pay_trans_price = pay_trans_price
    @pay_trans_postage_amount = pay_trans_postage_amount
    @pay_trans_incomplete = pay_trans_incomplete
  end
end

# {urn:AllegroWebApi}UserPayoutStruct
#   pay_trans_id - SOAP::SOAPLong
#   pay_trans_status - SOAP::SOAPString
#   pay_trans_amount - SOAP::SOAPFloat
#   pay_trans_create_date - SOAP::SOAPLong
#   pay_trans_recv_date - SOAP::SOAPLong
#   pay_trans_cancel_date - SOAP::SOAPLong
#   pay_trans_report - SOAP::SOAPString
class UserPayoutStruct
  attr_accessor :pay_trans_id
  attr_accessor :pay_trans_status
  attr_accessor :pay_trans_amount
  attr_accessor :pay_trans_create_date
  attr_accessor :pay_trans_recv_date
  attr_accessor :pay_trans_cancel_date
  attr_accessor :pay_trans_report

  def initialize(pay_trans_id = nil, pay_trans_status = nil, pay_trans_amount = nil, pay_trans_create_date = nil, pay_trans_recv_date = nil, pay_trans_cancel_date = nil, pay_trans_report = nil)
    @pay_trans_id = pay_trans_id
    @pay_trans_status = pay_trans_status
    @pay_trans_amount = pay_trans_amount
    @pay_trans_create_date = pay_trans_create_date
    @pay_trans_recv_date = pay_trans_recv_date
    @pay_trans_cancel_date = pay_trans_cancel_date
    @pay_trans_report = pay_trans_report
  end
end

# {urn:AllegroWebApi}UserPostBuyDataStruct
#   user_data - UserDataStruct
#   user_sent_to_data - UserSentToDataStruct
#   user_bank_accounts - ArrayOfBankAccounts
#   company_second_address - CompanySecondAddressStruct
class UserPostBuyDataStruct
  attr_accessor :user_data
  attr_accessor :user_sent_to_data
  attr_accessor :user_bank_accounts
  attr_accessor :company_second_address

  def initialize(user_data = nil, user_sent_to_data = nil, user_bank_accounts = nil, company_second_address = nil)
    @user_data = user_data
    @user_sent_to_data = user_sent_to_data
    @user_bank_accounts = user_bank_accounts
    @company_second_address = company_second_address
  end
end

# {urn:AllegroWebApi}UserSentToDataStruct
#   user_id - SOAP::SOAPLong
#   user_first_name - SOAP::SOAPString
#   user_last_name - SOAP::SOAPString
#   user_company - SOAP::SOAPString
#   user_country_id - SOAP::SOAPInt
#   user_postcode - SOAP::SOAPString
#   user_city - SOAP::SOAPString
#   user_address - SOAP::SOAPString
class UserSentToDataStruct
  attr_accessor :user_id
  attr_accessor :user_first_name
  attr_accessor :user_last_name
  attr_accessor :user_company
  attr_accessor :user_country_id
  attr_accessor :user_postcode
  attr_accessor :user_city
  attr_accessor :user_address

  def initialize(user_id = nil, user_first_name = nil, user_last_name = nil, user_company = nil, user_country_id = nil, user_postcode = nil, user_city = nil, user_address = nil)
    @user_id = user_id
    @user_first_name = user_first_name
    @user_last_name = user_last_name
    @user_company = user_company
    @user_country_id = user_country_id
    @user_postcode = user_postcode
    @user_city = user_city
    @user_address = user_address
  end
end

# {urn:AllegroWebApi}WaitFeedbackStruct
#   fe_item_id - SOAP::SOAPLong
#   fe_item_name - SOAP::SOAPString
#   fe_to_user_id - SOAP::SOAPInt
#   fe_op - SOAP::SOAPInt
#   fe_ans_comment_type - SOAP::SOAPString
#   fe_possibility_to_add - SOAP::SOAPInt
class WaitFeedbackStruct
  attr_accessor :fe_item_id
  attr_accessor :fe_item_name
  attr_accessor :fe_to_user_id
  attr_accessor :fe_op
  attr_accessor :fe_ans_comment_type
  attr_accessor :fe_possibility_to_add

  def initialize(fe_item_id = nil, fe_item_name = nil, fe_to_user_id = nil, fe_op = nil, fe_ans_comment_type = nil, fe_possibility_to_add = nil)
    @fe_item_id = fe_item_id
    @fe_item_name = fe_item_name
    @fe_to_user_id = fe_to_user_id
    @fe_op = fe_op
    @fe_ans_comment_type = fe_ans_comment_type
    @fe_possibility_to_add = fe_possibility_to_add
  end
end

# {urn:AllegroWebApi}WatchListInfoStruct
#   items_added - ArrayOfItemsAdded
#   items_not_added - ArrayOfItemsNotAddedStruct
class WatchListInfoStruct
  attr_accessor :items_added
  attr_accessor :items_not_added

  def initialize(items_added = nil, items_not_added = nil)
    @items_added = items_added
    @items_not_added = items_not_added
  end
end

# {urn:AllegroWebApi}AddressesInfoStruct
class AddressesInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfActionDataStruct
class ArrayOfActionDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfAdditionalData
class ArrayOfAdditionalData < ::Array
end

# {urn:AllegroWebApi}ArrayOfAttribStruct
class ArrayOfAttribStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfAttribValues
class ArrayOfAttribValues < ::Array
end

# {urn:AllegroWebApi}ArrayOfAuctionID
class ArrayOfAuctionID < ::Array
end

# {urn:AllegroWebApi}ArrayOfBankAccounts
class ArrayOfBankAccounts < ::Array
end

# {urn:AllegroWebApi}ArrayOfBidList2
class ArrayOfBidList2 < ::Array
end

# {urn:AllegroWebApi}ArrayOfBilling
class ArrayOfBilling < ::Array
end

# {urn:AllegroWebApi}ArrayOfBlackListResStruct
class ArrayOfBlackListResStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfBlackListStruct
class ArrayOfBlackListStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCancelBidsID
class ArrayOfCancelBidsID < ::Array
end

# {urn:AllegroWebApi}ArrayOfCancelRefundDataStruct
class ArrayOfCancelRefundDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCancelRefundFormResultStruct
class ArrayOfCancelRefundFormResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCancelRefundWarningResultStruct
class ArrayOfCancelRefundWarningResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCancelRefundWarningStruct
class ArrayOfCancelRefundWarningStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCatInfoStruct
class ArrayOfCatInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCatInfoType
class ArrayOfCatInfoType < ::Array
end

# {urn:AllegroWebApi}ArrayOfCategoriesStruct
class ArrayOfCategoriesStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfCategoryData
class ArrayOfCategoryData < ::Array
end

# {urn:AllegroWebApi}ArrayOfCats
class ArrayOfCats < ::Array
end

# {urn:AllegroWebApi}ArrayOfCountries
class ArrayOfCountries < ::Array
end

# {urn:AllegroWebApi}ArrayOfDealsStruct
class ArrayOfDealsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfExcludedWords
class ArrayOfExcludedWords < ::Array
end

# {urn:AllegroWebApi}ArrayOfFavouritesCategories
class ArrayOfFavouritesCategories < ::Array
end

# {urn:AllegroWebApi}ArrayOfFavouritesSellers
class ArrayOfFavouritesSellers < ::Array
end

# {urn:AllegroWebApi}ArrayOfFeedbackList
class ArrayOfFeedbackList < ::Array
end

# {urn:AllegroWebApi}ArrayOfFeedbackManyStruct
class ArrayOfFeedbackManyStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfFeedbacksResult
class ArrayOfFeedbacksResult < ::Array
end

# {urn:AllegroWebApi}ArrayOfFieldsId
class ArrayOfFieldsId < ::Array
end

# {urn:AllegroWebApi}ArrayOfFieldsValue
class ArrayOfFieldsValue < ::Array
end

# {urn:AllegroWebApi}ArrayOfFinishFailureStruct
class ArrayOfFinishFailureStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfFinishItemsStruct
class ArrayOfFinishItemsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfFinishSuccessStruct
class ArrayOfFinishSuccessStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemCatList
class ArrayOfItemCatList < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemGetImage
class ArrayOfItemGetImage < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemImageList
class ArrayOfItemImageList < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemImagesStruct
class ArrayOfItemImagesStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemRemoveWatchStruct
class ArrayOfItemRemoveWatchStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemSurchargeStruct
class ArrayOfItemSurchargeStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemTemplateListStruct
class ArrayOfItemTemplateListStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemsAdded
class ArrayOfItemsAdded < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemsID
class ArrayOfItemsID < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemsNotAddedStruct
class ArrayOfItemsNotAddedStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfItemsPostBuyData
class ArrayOfItemsPostBuyData < ::Array
end

# {urn:AllegroWebApi}ArrayOfLocalIds
class ArrayOfLocalIds < ::Array
end

# {urn:AllegroWebApi}ArrayOfMyAccountList2
class ArrayOfMyAccountList2 < ::Array
end

# {urn:AllegroWebApi}ArrayOfMyContactList
class ArrayOfMyContactList < ::Array
end

# {urn:AllegroWebApi}ArrayOfMyFeedbackList2
class ArrayOfMyFeedbackList2 < ::Array
end

# {urn:AllegroWebApi}ArrayOfNewPostBuyFormSellerStruct
class ArrayOfNewPostBuyFormSellerStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPackageIds
class ArrayOfPackageIds < ::Array
end

# {urn:AllegroWebApi}ArrayOfPackageInfoStruct
class ArrayOfPackageInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPaymentDetailsStruct
class ArrayOfPaymentDetailsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPaymentItemsStruct
class ArrayOfPaymentItemsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPaymentMethodStruct
class ArrayOfPaymentMethodStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPaymentSellersStruct
class ArrayOfPaymentSellersStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormDataStruct
class ArrayOfPostBuyFormDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormForBuyersDataStruct
class ArrayOfPostBuyFormForBuyersDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormItemStruct
class ArrayOfPostBuyFormItemStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormSellersStruct
class ArrayOfPostBuyFormSellersStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormShipmentTrackingStruct
class ArrayOfPostBuyFormShipmentTrackingStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostBuyFormSurcharges
class ArrayOfPostBuyFormSurcharges < ::Array
end

# {urn:AllegroWebApi}ArrayOfPostageStruct
class ArrayOfPostageStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductImagesList
class ArrayOfProductImagesList < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductItemsIds
class ArrayOfProductItemsIds < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductParameterValues
class ArrayOfProductParameterValues < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductParametersGroupStruct
class ArrayOfProductParametersGroupStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductParametersStruct
class ArrayOfProductParametersStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfProductStruct
class ArrayOfProductStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfRefundFormDataStruct
class ArrayOfRefundFormDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfRefundFormStatusResultStruct
class ArrayOfRefundFormStatusResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfRefundFormStatusStruct
class ArrayOfRefundFormStatusStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfRefundReasonStruct
class ArrayOfRefundReasonStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfRelatedItemStruct
class ArrayOfRelatedItemStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSearchResponse
class ArrayOfSearchResponse < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellForms
class ArrayOfSellForms < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingAveragePerMonth
class ArrayOfSellRatingAveragePerMonth < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingAverageStruct
class ArrayOfSellRatingAverageStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingDetailStruct
class ArrayOfSellRatingDetailStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingEstimationStruct
class ArrayOfSellRatingEstimationStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingInfoStruct
class ArrayOfSellRatingInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingReasonStruct
class ArrayOfSellRatingReasonStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingReasonSumStruct
class ArrayOfSellRatingReasonSumStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellRatingStatsStruct
class ArrayOfSellRatingStatsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSellerShipmentDataStruct
class ArrayOfSellerShipmentDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSendRefundFormResultStruct
class ArrayOfSendRefundFormResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSendRefundFormStruct
class ArrayOfSendRefundFormStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSendReminderMessageResultStruct
class ArrayOfSendReminderMessageResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSendReminderMessageStruct
class ArrayOfSendReminderMessageStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfServiceInfoCatStruct
class ArrayOfServiceInfoCatStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfServiceInfoStruct
class ArrayOfServiceInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfShipmentDataStruct
class ArrayOfShipmentDataStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfShipmentIds
class ArrayOfShipmentIds < ::Array
end

# {urn:AllegroWebApi}ArrayOfShipmentPaymentInfoStruct
class ArrayOfShipmentPaymentInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSiteJournalDealsStruct
class ArrayOfSiteJournalDealsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfSitesFlagInfo
class ArrayOfSitesFlagInfo < ::Array
end

# {urn:AllegroWebApi}ArrayOfSitesInfo
class ArrayOfSitesInfo < ::Array
end

# {urn:AllegroWebApi}ArrayOfSpecialAuction
class ArrayOfSpecialAuction < ::Array
end

# {urn:AllegroWebApi}ArrayOfStateInfoStruct
class ArrayOfStateInfoStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfStructItemInfoList
class ArrayOfStructItemInfoList < ::Array
end

# {urn:AllegroWebApi}ArrayOfStructSellAgain
class ArrayOfStructSellAgain < ::Array
end

# {urn:AllegroWebApi}ArrayOfStructSellFailed
class ArrayOfStructSellFailed < ::Array
end

# {urn:AllegroWebApi}ArrayOfSysStatus
class ArrayOfSysStatus < ::Array
end

# {urn:AllegroWebApi}ArrayOfTemplates
class ArrayOfTemplates < ::Array
end

# {urn:AllegroWebApi}ArrayOfTemplatesID
class ArrayOfTemplatesID < ::Array
end

# {urn:AllegroWebApi}ArrayOfTransactionsID
class ArrayOfTransactionsID < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserBlackListAddResultStruct
class ArrayOfUserBlackListAddResultStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserBlackListStruct
class ArrayOfUserBlackListStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserIncomingPaymentRefundsStruct
class ArrayOfUserIncomingPaymentRefundsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserIncomingPaymentStruct
class ArrayOfUserIncomingPaymentStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserItemList
class ArrayOfUserItemList < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserPaymentRefundsStruct
class ArrayOfUserPaymentRefundsStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserPaymentStruct
class ArrayOfUserPaymentStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUserPayoutStruct
class ArrayOfUserPayoutStruct < ::Array
end

# {urn:AllegroWebApi}ArrayOfUsersID
class ArrayOfUsersID < ::Array
end

# {urn:AllegroWebApi}ArrayOfUsersPostBuyData
class ArrayOfUsersPostBuyData < ::Array
end

# {urn:AllegroWebApi}ArrayOfWaitFeedbackStruct
class ArrayOfWaitFeedbackStruct < ::Array
end

# {urn:AllegroWebApi}BidList2
class BidList2 < ::Array
end

# {urn:AllegroWebApi}ItemBillingList
class ItemBillingList < ::Array
end

# {urn:AllegroWebApi}MyAccountList2
class MyAccountList2 < ::Array
end

# {urn:AllegroWebApi}MyFeedbackList2
class MyFeedbackList2 < ::Array
end

# {urn:AllegroWebApi}SiteJournalArray
class SiteJournalArray < ::Array
end
