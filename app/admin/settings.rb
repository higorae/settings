ActiveAdmin.register_page "Settings"  do 
    
    page_action  :create, method: :post do
      def self.settings_params
        params.require(:setting).permit(:page_title, :page_description, :id, dynamic_settings_attributes: [:id, :name, :value, :_destroy])
      end
      @settings = Settings::Setting.find_by(id: params[:setting][:id])
      if @settings.nil?
        @set = Settings::Setting.new(settings_params)
        @set.save
      else
        @settings.update(settings_params)
      end
      redirect_to admin_settings_url, notice: t("settings.update")
    end

    content  do
      settings = (Settings::Setting.first || Settings::Setting.new)
      render :partial => "form", locals: { settings: settings}
    end


end 