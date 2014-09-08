module Settings
  module Helpers  	
  	def get_field(name = nil)
  		@setting = Settings::DynamicSetting.find_by(name: name)
  		@setting.value
  	end

  	def get_page_title
  		Settings::Setting.first.page_title
  	end
  	
  	def get_page_description
  		Settings::Setting.first.page_description
  	end
  end
end