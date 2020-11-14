class CreateUsuarioPerfils < ActiveRecord::Migration[5.2]
  def change
    create_table :usuario_perfils do |t|
      t.string :nome

      t.timestamps
    end
  end
end
