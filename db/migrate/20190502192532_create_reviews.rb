class CreateReview < ActiveRecord::Migration[5.1]
  def change
    create_table :review do |t|

      t.timestamps
    end
  end
end
