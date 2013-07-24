# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Seahorse
  class Client

    # The default HTTP handler for Seahorse::Client.  This is based on
    # the Ruby's `Net::HTTP`.
    class NetHttpHandler < Handler

      # @param [Configuration] config
      def initialize(config, handler = nil)
        @config = config
        @pool = NetHttpConnectionPool.new(pool_options(@config))
      end

      # @return [NetHttpConnectionPool]
      attr_reader :pool

      # @param [RequestContext] context
      # @return [Response]
      def call(context)
        transmit(context.http_request, context.http_response)
        Response.new(context: context).signal_complete
      end

      private

      # @param [HttpRequest] request
      # @param [HttpResponse] response
      # @return [void]
      def transmit(request, response)
        @pool.session_for(request.endpoint) do |http|
          http.request(net_http_request(request)) do |resp|

            # extract HTTP status code and headers
            response.status_code = resp.code.to_i
            response.headers.update(resp.to_hash)

            # read the body in chunks
            resp.read_body do |chunk|
              response.body << chunk
            end

          end
        end
      end

      # Extracts the {NetHttpConnectionPool} configuration options.
      # @param [Configuration] config
      # @return [Hash]
      def pool_options(config)
        NetHttpConnectionPool::OPTIONS.keys.inject({}) do |opts,opt|
          opts[opt] = config.send(opt)
          opts
        end
      end

      # Constructs and returns a Net::HTTP::Request object from
      # a {Seahorse::Client::HttpRequest}.
      # @param [HttpRequest] request
      # @return [Net::HTTP::Request]
      def net_http_request(request)
        request_class = Net::HTTP.const_get(request.http_method.capitalize)
        request = request_class.new(request.path, headers(request))
        request.body_stream = request.body
        request
      end

      # @param [HttpRequest] request
      # @return [Hash] Returns a vanilla hash of headers to send with the
      #   HTTP request.
      def headers(request)
        # setting these to stop net/http from providing defaults
        headers = { 'content-type' => '', 'accept-encoding' => '' }
        request.headers.each_pair do |key, value|
          headers[key] = value
        end
        headers
      end

    end
  end
end
