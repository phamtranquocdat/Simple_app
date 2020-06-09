class UploadController < ApplicationController
    def create
        @document = Document.new
        @catelories = Catelory.find_by name: params[:session][:Catelogy]
        
        @document.catelories_id_id = @catelories.id
        
        @document.name = params[:session][:Link]
        @document.save
        redirect_to @document
    end

    def new
    end
end
