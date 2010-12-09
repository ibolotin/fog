module Fog
  module Slicehost
    class Compute
      class Real

        # Delete a zone from Slicehost's DNS
        # ==== Parameters
        # * zone_id<~Integer> - Id of zone to delete
        #
        # ==== Returns
        # * response<~Excon::Response>:
        #   * body<~Array>:
        def delete_zone(zone_id)
          request(
            :expects  => 200,
            :method   => 'DELETE',
            :path     => "zones/#{zone_id}.xml"
          )
        end

      end

      class Mock

        def delete_zone(zone_id)
          Fog::Mock.not_implemented
        end

      end
    end
  end
end
