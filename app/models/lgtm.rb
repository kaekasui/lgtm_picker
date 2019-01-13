# frozen_string_literal: true

class Lgtm < ApplicationRecord
  validates :url, presence: true
end
