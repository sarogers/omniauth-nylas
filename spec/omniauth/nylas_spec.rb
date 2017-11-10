require "spec_helper"

describe Omniauth::Nylas do
  subject { OmniAuth::Strategies::Nylas.new({}) }

  let(:access_token) { double("AccessToken", options: {}) }
  let(:parsed_response) { double("ParsedResponse") }
  let(:response) { double("Response", parsed: parsed_response) }

  before(:each) do
    allow(subject).to receive(:full_host).and_return("http://example.com")
    allow(subject).to receive(:script_name).and_return("")
    allow(subject).to receive(:access_token).and_return(access_token)
    allow(subject).to receive(:query_string).and_return("")
  end

  describe "client" do
    it "should have the correct site" do
      expect(subject.client.site).to eq("https://api.nylas.com")
    end

    it "should have the correct authorize url" do
      expect(subject.client.authorize_url).to eq("https://api.nylas.com/oauth/authorize")
    end

    it "should have the correct token url" do
      expect(subject.client.token_url).to eq("https://api.nylas.com/oauth/token")
    end
  end

  describe "#callback_url" do
    it "should redirect to callback url" do
      expect(subject.callback_url).to eq("http://example.com/auth/nylas/callback")
    end
  end
end
