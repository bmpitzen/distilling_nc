# frozen_string_literal: true

json.extract! distillery, :id, :name, :street_address, :city, :zip, :region_id, :tours, :tour_cost, :website, :created_at, :updated_at
json.url distillery_url(distillery, format: :json)
