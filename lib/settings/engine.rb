module Settings
	class Engine < ::Rails::Engine
		isolate_namespace Settings

		initializer "helper" do |app|
			ActiveSupport.on_load(:action_view) do
				include Settings::Helpers
			end
		end

		initializer "active_admin" do |app|
			ActiveAdmin.before_load do |app|
				app.load_paths << File.expand_path("../../../app/admin", __FILE__)
			end
		end

	end
end
