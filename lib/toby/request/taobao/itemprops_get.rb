# encoding: utf-8

module Toby
  module Request
    module Taobao
      class ItempropsGet < Base
        def initialize
          super
          @fields = 'pid,name,must,multi,prop_values'
          @api_params[:fields] = @fields
          @response_key_path = "item_props.item_prop"
          @app_params = [
            :fields, :cid, :pid, :parent_pid, :is_key_prop, :is_sale_prop,
            :is__color_prop, :is_enum_prop, :is_input_prop, :is_item_prop,
            :child_path, :type
          ]
        end
      end
    end
  end
end
