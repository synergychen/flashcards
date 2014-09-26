require "sinatra"
require "sinatra/reloader" if development?
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "flashcards"
)

class Deck < ActiveRecord::Base
  has_many :cards
end

class Card < ActiveRecord::Base
end

get "/" do
  @decks = Deck.all
  erb :home
end

# new
get "/decks/new" do
  erb :new_deck
end

# create
post "/decks" do
  new_deck_name = params[:deck][:name]
  Deck.create(name: new_deck_name)

  redirect to("/")
end

get "/decks/:id" do
  @deck = Deck.find(params[:id])
  erb :deck
end
