class AddPetRefToOwners < ActiveRecord::Migration[5.1]
  def change
    add_reference :owners, :pet, foreign_key: true
  end
end
