require 'twilio-ruby'

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
