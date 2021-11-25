require 'sinatra'

# source: https://learn.co/lessons/sinatra-forms-params-readme-walkthrough

get '/' do
  erb :index
end

post '/result' do
  # Get ages from params, make average life expectancy.
  longevity = (params[:maternalgrandmother].to_i + \
               params[:maternalgrandfather].to_i + params[:paternalgrandmother].to_i + \
               params[:paternalgrandfather].to_i + params[:mother].to_i + \
               params[:father].to_i + params[:Me].to_i + params[:lifeexpectancy].to_i) / 8
  # Calculate months from actual age.
  age = params[:me].to_i
  months = (longevity - age) * 12
  # Sum all the costs.
  cost = params[:legal].to_i + params[:backup].to_i + \
         params[:SST].to_i + params[:facility].to_i
  # Calculate the monthly amount to save.
  save = cost / months

  "
  <p>Your statistical average life expectancy is: #{longevity} years.</p>
  <p>At your current age (#{age}) you have to save #{save} euros per month until</p>
  <p>you are #{longevity} years old.</p>
  <p>As a supplement to your life insurance to finance your biostasis.</p>
  <p>Have a nice day.</p>
  "

end
