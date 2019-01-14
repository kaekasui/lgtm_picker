# frozen_string_literal: true

class Lgtm < ApplicationRecord
  validates :url, presence: true,
                  uniqueness: true,
                  format: { with: /\A#{URI.regexp(%w[http https])}\z/ }
end
