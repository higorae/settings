class CreateSettingsSettings < ActiveRecord::Migration
  def change
    create_table :settings_settings do |t|
      t.string :page_title
      t.string :page_description

      t.timestamps
    end
  end
end
