module OAuthServices
  module Client
    @client = OAuth2::Client.new 'ats_client', '',
                                 redirect_uri: 'http://localhost:4000/callback',
                                 token_url: 'http://localhost:4444/oauth2/token',
                                 authorize_url: 'http://localhost:4444/oauth2/auth',
    def authorize_url
      @client.authorize_url
    end
    module_function :authorize_url

    def get_tokens!(code)
      @client.auth_code.get_token(code)
    end
    module_function :get_tokens!
  end
end
