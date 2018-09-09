require 'twilio-ruby'

account_sid = 'ACe5388816543beb2b9bb49d125ad78b7f'
auth_token = '034fa5f5c6169331e3be3ed2dc48f60a'
test_account_sid = 'ACbfe7fc0e4e19aa4acd55911a5d198c06'
test_auth_token = 'c338f6540183e19e4e98bb0f34f091f9'

SAMPLE_MESSAGE = "Hey, it’s George. We’ve talked before, I’m the Galvanize chatbot (built by one of our students)!
Anyways, this is awkward but I need a favor. Got a sec to answer a few questions that will help me get smarter? https://goo.gl/forms/nuSxXQ1XpBl5n5st1'
".freeze

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

numbers = ['+15005550006', '+18607168428']

numbers.each do |number|
  @client.api.account.messages.create(
    from: '+18606064917',
    to: number,
    body: SAMPLE_MESSAGE
  )
end
