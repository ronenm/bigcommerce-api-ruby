shared_context "mock api" do
  let :api do
    connection = mock(Bigcommerce::Connection)
    api = Bigcommerce::Api.new
    api.instance_eval do
      @connection = connection
    end
    api
  end
end