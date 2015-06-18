require 'active_merchant'

class RoutingNumberValidator < ActiveModel::EachValidator
  include ActiveMerchant::Billing

  def self.valid?(value, options = {})
    routing_number = ActiveMerchant::Billing::Check.new({routing_number: value})
    routing_number.valid_routing_number?
  end

  def validate_each(record, attribute, value)
    unless self.class.valid?(value, self.options)
      record.errors.add(attribute, options[:message] || default_message)
    end
  end

  def default_message
    "invalid checksum"
  end
end
