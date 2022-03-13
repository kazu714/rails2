class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :page_name
      t.timestamps
    end
  end
end
