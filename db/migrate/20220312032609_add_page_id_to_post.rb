class AddPageIdToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :Posts, :page, foreign_key: true
  end
end
