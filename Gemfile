source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails' # mozesz np. schowac sobie rzeczy
gem 'twitter-bootstrap-rails' # layout, front-end, IMPORTANT! czytaj dokumentacje (google: twitter-bootstrap)
gem 'formtastic' # formularze (zmiana form_for do semantic_form_for)
gem 'formtastic-plus-bootstrap' # polaczenie wygladu formtastica z twitter-bootstrap
gem 'haml-rails' # zmiana pliku widokow z .erb na .haml (zamiast html jest haml)
gem 'carrierwave' # uploader plikow
gem 'rmagick' # preprocessing zdjec
gem 'devise' # logowanie, rejestracja, zapomnialem hasla, etc.
gem 'ransack' # wyszukiwanie (ma tez sortowanie, ale bieda; napisz swoje sortowanie - naucz sie ruby ;); PS: uzyj helpera!)

group :development do
  gem 'pry' # konsola zastapiajaca standardowa kosnole irb 
  gem 'pry-doc' # mozliwosc wejscia do klasy (np. cd User), podgladania metod (show-method) etc. w pry
  gem 'pry-rails' # zastapia konsole railsowa na konsole pry
  gem 'better_errors' # ulepsza wyswietlanie bledow w przegladarce
  gem 'binding_of_caller' # umozliwia gemowi better_errors na pokazanie wiecej danych oraz konsole "w locie"
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
