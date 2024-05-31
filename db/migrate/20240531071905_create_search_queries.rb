
class CreateSearchQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :search_queries do |t|
      t.string :ip
      t.string :query

      t.timestamps
    end
  end
end
