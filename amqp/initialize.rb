#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
require 'bunny'

conn = Bunny.new(hostname: 'localhost',
                 port: 5672,
                 username: 'guest',
                 password: 'guest')

conn.start
ch = conn.create_channel

# declare exchange
exchange = ch.direct('apigw-sample-exchange', :auto_delete => false)

# declare queue
queue = ch.queue('apigw-sample-queue', :auto_delete => false)

# bind
queue.bind(exchange, :routing_key => 'key1')

# test
queue.subscribe do |delivery_info, metadata, payload|
  puts "Received: #{payload}"
end
exchange.publish("Hello world!", :routing_key => 'key1')

sleep 0.5

conn.close
