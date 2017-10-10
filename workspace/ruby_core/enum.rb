#!/bin/ruby

module MyEnum
    enum state: [:draft, :published, :featured, :blocked, :unlisted, :campaign]

    PUBLIC_STATES = [
        states['published'],
        states['featured'],
        states['unlisted'],
        states['campaign']
    ].freeze unless defined? PUBLIC_STATES
end

puts MyEnum::PUBLIC_STATES
