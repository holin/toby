$: << '../'

require 'lib/toby'

describe "Item get" do
  it "should returns {item: {title: 'xxx'}}, when it is executed." do
    Toby.app_key = '12350568'
    Toby.secret_key = 'ebca8ce85d80e7c25d41f1d11fc308ab'

    client = Toby::Client.new
    request = Toby::Request::ItemGet.new

    request.num_iid = 13364998803
    request.fields = "title"

    client.execute(request).should eq({item: {title: 'xxx'}})
  end
end