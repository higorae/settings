module Settings
  class DynamicSetting < ActiveRecord::Base
    belongs_to :setting, :class_name => "Settings::Setting"
  end
end
