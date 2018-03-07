require 'twilio-ruby'

account_sid = 'ACf689cd6129153e4c109689c9a6f4e53c'
auth_token = '43628e7d51a86eaa09269c9964a9e857'

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

numbers = ['+18607168428','+18608787621']

numbers.each do |number|
  @client.api.account.messages.create(
    from: '+12018176885',
    to: number,
    body: 'Hey, it’s George. We’ve talked before, I’m the Galvanize chatbot (built by one of our students)!

Anyways, this is awkward but I need a favor. Got a sec to answer a few questions that will help me get smarter? https://goo.gl/forms/nuSxXQ1XpBl5n5st1'
  )
end
