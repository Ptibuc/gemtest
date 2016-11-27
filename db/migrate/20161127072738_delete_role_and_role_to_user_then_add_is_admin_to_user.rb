class DeleteRoleAndRoleToUserThenAddIsAdminToUser < ActiveRecord::Migration[5.0]
  def change
    # suppression de la table Role
    drop_table :roles

    # suppression du role au user
    remove_column :users, :role_id

    #ajout du champ is_admin au user
    add_column :users, :is_admin, :boolean, default: false

  end
end
