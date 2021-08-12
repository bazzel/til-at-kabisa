# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :channel, counter_cache: true
  belongs_to :author, counter_cache: true

  validates :title, presence: true
  validates :body, presence: true

  after_validation :set_slug, only: [:create, :update]

  def self.random
    order(Arel.sql("RANDOM()")).first
  end

  def to_param
    "#{id}-#{slug}"
  end

  private
    def set_slug
      self.slug = title.to_s.parameterize
    end
end
