# frozen_string_literal: true

# Generated Schema

ActiveRecord::Schema.define(version: 20_190_904_111_456) do
  create_table 'attendances', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'attendee_id'
    t.integer 'attended_event_id'
  end

  create_table 'events', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'location'
    t.datetime 'date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'creator_id'
  end

  create_table 'invitations', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'password_digest'
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'password'
    t.string 'remember_digest'
  end
end
