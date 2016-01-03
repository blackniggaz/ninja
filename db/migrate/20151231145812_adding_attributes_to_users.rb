class AddingAttributesToUsers < ActiveRecord::Migration
  def change

    change_table :users do |t|
      t.change :username,:null => false
    end
  end

end
