class AddReadToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :read, :boolean, default: false
  end
end
