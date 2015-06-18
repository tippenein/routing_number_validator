class RoutingNumberValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    unless value && value.size == 9
      record.errors[attribute] << (options[:message] || "must be 9 digits long")
    end

    unless valid_routing_number?(value)
      record.errors[attribute] << (options[:message] || "prefix must be 01-12 or 21-32")
    end
  end

  private

  # source: https://github.com/Shopify/active_merchant/blob/master/lib/active_merchant/billing/check.rb#L53
  def valid_routing_number?(routing_number)
    digits = routing_number.to_s.split('').map(&:to_i).select{|d| (0..9).include?(d)}
    case digits.size
    when 9
      checksum = ((3 * (digits[0] + digits[3] + digits[6])) +
                  (7 * (digits[1] + digits[4] + digits[7])) +
                       (digits[2] + digits[5] + digits[8])) % 10
      case checksum
      when 0
        true
      else
        false
      end
    else
      false
    end
  end
end
