require 'sinatra'
require 'sinatra/activerecord'

class User < ActiveRecord::Base
  has_many :user
  has_many :scores
end

class Scores < ActiveRecord::Base
  belongs_to :user
end

enable :sessions
set :session_secret,  'while42beijing'
set :database, {adapter: "sqlite3", database: "db/dbfile.sqlite3"}

get '/version' do
  '{ version_number: 1.0 }'
end

get '/login/:wechat_id' do
  user = User.find_by(name: session['wechat_id'])
  if user != nil
    session['wechat_id'] = params[:wechat_id]
    session['user_id'] = user.id
  end
end

post '/login' do
  user = User.create(name: params[:name])
  if user != nil
    session['wechat_id'] = params[:wechat_id]
    session['user_id'] = user.id
  end
  'lol'
end

get '/new_login/:name' do
  user = User.create(:name => params[:name])
  if user != nil
    session['wechat_id'] = params[:wechat_id]
    session['user_id'] = user.id
  end
  'lol'
end


post '/score' do
  user = User.find(session['user_id'])
  Scores.create(user.id, params[:value])

  if params[:value] > user.best_score
    user.best_score = params[:value]
  end
  user.last_score = params[:value]
  user.save
end

get '/scores' do
  user = User.find(session['user_id'])
  puts user
  ret = {}
  ret['last'] = user.last_score
  ret['best'] = user.best_score
  ret.to_json
end

get '/scores/:name' do
  user = User.find(session['user_id'])
  ret = {}
  ret['last'] = user.last_score
  ret['best'] = user.best_score
  ret.to_json  
end