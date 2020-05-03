class CookieAcceptancesController < ApplicationController
  def new
    @cookie_acceptance = CookieAcceptance.new
  end

  def create
    @cookie_acceptance = CookieAcceptance.new(cookie_acceptance_params)
    params[:ip_address] = request.remote_ip

    respond_to do |format|
      if @cookie_acceptance.save
        cookies[:roadze_cookie_acceptance] = {
            value: @cookie_acceptance.accept_token,
            expires: 1.year.from_now
        }
        format.js {render inline: 'location.reload();' }
      else
        format.js {render inline: 'location.reload();' }
      end
    end
  end

  private

  def cookie_acceptance_params
    params.require(:cookie_acceptance).permit(:accept_token, :accepted, :ip_address, :name)
  end
end
