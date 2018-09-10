require 'twilio-ruby'

class TwillioConnection
  AUTH_TOKEN = Rails.application.secrets.twilio_auth_token
  ACCOUNT_SID = Rails.application.secrets.twilio_account_sid

  def self.api
    @client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN
  end
end
