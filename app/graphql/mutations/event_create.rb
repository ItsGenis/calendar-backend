# frozen_string_literal: true

module Mutations
  class EventCreate < BaseMutation
    description "Creates a new event"

    field :event, Types::EventType, null: false

    argument :title, String, required: true
    argument :description, String, required: true
    argument :starts_at, GraphQL::Types::ISO8601DateTime, required: true
    argument :ends_at, GraphQL::Types::ISO8601DateTime, required: true

    def resolve(title:, description:, starts_at:, ends_at:)
      event = ::Event.new(title: title, description: description, starts_at: starts_at, ends_at: ends_at)
      raise GraphQL::ExecutionError.new "Error creating event", extensions: event.errors.to_hash unless event.save

      { event: event }
    end
  end
end
