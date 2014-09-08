class CreateSettingsDynamicSettings < ActiveRecord::Migration
  def change
    create_table :settings_dynamic_settings do |t|
      t.string :name
      t.string :value
      t.belongs_to :setting, index: true

      t.timestamps
    end
  end
end
