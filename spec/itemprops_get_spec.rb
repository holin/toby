# encoding: utf-8

$: << '.'

require 'lib/toby'

describe 'Item properties get' do
  it 'should returns item properties name list' do
    Toby.app_key = '12350568'
    Toby.secret_key = 'ebca8ce85d80e7c25d41f1d11fc308ab'

    client = Toby::Client.new
    request = Toby::Request::ItemPropsGet.new

    request.cid = 50012377
    request.fields = 'name'

    client.execute(request).should have_key(:itemprops_get_response)
  end
end