class EnterprisesController < ApplicationController
  def rspec_json
    response = Hash[:status, 'ok']
    response[:message] = "Successfully"

    render json: response
  end

  def rspec_nothing
    render nothing: true
  end

  def rspec_template
    render template: 'enterprises/my_template'
  end

  def rspec_redirect
    redirect_to root_path(id: 1)
  end

  def rspec_flash_message
    flash[:notice] = "This is flash message"
    render nothing: true
  end

  def rspec_http_status
    render file: "#{Rails.root}/public/404.html", status: 404
  end
end
