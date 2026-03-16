class CreateCategories < ActiveRecord::Migration[7.2]

  has_many :products
  def change
    create_table :categories do |t|
      


      t.string :name

      t.timestamps
    end
  end
end
