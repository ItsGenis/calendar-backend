# frozen_string_literal: true

module Mutations
  class EventUpdate < BaseMutation
    description "Updates a event by id"

    field :event, Types::EventType, null: false

    argument :id, ID, required: true
    argument :title, String, required: false
    argument :description, String, required: false
    argument :starts_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :ends_at, GraphQL::Types::ISO8601DateTime, required: false

    def resolve(id:, **args)
      event = ::Event.find(id)
      raise GraphQL::ExecutionError.new "Error updating event", extensions: event.errors.to_hash unless event.update(args)

      { event: event }
    end
  end
end
