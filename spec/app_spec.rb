require_relative '../lib/app'

describe "the rest_connection method" do
    it "should return client, and client is not nil" do
      expect(rest_connection).not_to be_nil
    end
  end