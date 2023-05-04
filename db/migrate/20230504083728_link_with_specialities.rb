class LinkWithSpecialities < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :speciality, foreign_key: true
  end
end
