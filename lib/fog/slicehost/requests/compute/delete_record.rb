module Fog
  module Slicehost
    class Compute
      class Real

        # Delete a record from DNS zone
        # ==== Parameters
        # * record_id<~Integer> - Id of DNS record to delete
        #
        # ==== Returns
        # * response<~Excon::Response>:
        def delete_record(record_id)
          request(
            :expects  => 200,
            :method   => 'DELETE',
            :path     => "records/#{record_id}.xml"
          )
        end

      end

      class Mock

        def delete_record(record_id)
          Fog::Mock.not_implemented
        end

      end
    end
  end
end
