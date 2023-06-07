class RelateWorkstoUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :works, :user, foreign_key: true
  end
end
