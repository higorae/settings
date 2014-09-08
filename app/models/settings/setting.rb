module Settings
  class Setting < ActiveRecord::Base
  	has_many :dynamic_settings, class_name: "Settings::DynamicSetting"
  	accepts_nested_attributes_for :dynamic_settings, :reject_if => :all_blank, :allow_destroy => true
  end
end
