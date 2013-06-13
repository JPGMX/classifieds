class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.text :description
      t.text :contact_details
      t.string :category_id
      t.string :integer

      t.timestamps
    end
  end
end
