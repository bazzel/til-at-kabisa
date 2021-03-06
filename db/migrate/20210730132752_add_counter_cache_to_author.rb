# frozen_string_literal: true

class AddCounterCacheToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :posts_count, :integer, default: 0
  end
end
