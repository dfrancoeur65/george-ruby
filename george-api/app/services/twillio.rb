module Twillio
  class Base
    SAMPLE_MESSAGE = 'This is the new test'.freeze

    def sendMessage(_message, number)
      TwillioRequest.api.account.messages.create(
        from: '+18606064917',
        to: number,
        body: SAMPLE_MESSAGE
      )
    end
  end
end
