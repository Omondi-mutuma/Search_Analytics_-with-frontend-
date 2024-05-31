class CreateSearchSummaries < ActiveRecord::Migration[7.0]
  def change
    create_table :search_summaries do |t|
      t.string :ip
      t.string :query
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
