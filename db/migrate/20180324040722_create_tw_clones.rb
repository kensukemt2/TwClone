class CreateTwClones < ActiveRecord::Migration[5.1]
  def change
    create_table :tw_clones do |t|

      t.content
      t.timestamps
    end
  end
end
