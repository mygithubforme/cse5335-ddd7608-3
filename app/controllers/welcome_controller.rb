class WelcomeController < ApplicationController

  def index
  end
  def callajax

    require "mongo"
    require "uri"


    uri = 'mongodb://asd:asd@ds027385.mongolab.com:27385/heroku_zhsk3tkj'


    client = Mongo::Client.new(uri,:user =>"asd",:password => "asd")
    puts "Enter primary key from 1 to 100 :"
    #key1 = gets.chomp()
    #result=View.new(:iris,{ sepal_length: '5.1'})
    @res=client[:iris].find({ id: params[:id]})
    render json: @res
    # require "redis"
    # #require 'csv'
    #
    # radis = Redis.new(:url => "redis://h:p1dv4q35efjgon9s56dur3mi2es@ec2-54-83-199-200.compute-1.amazonaws.com:18479", :host => "ec2-54-83-199-200.compute-1.amazonaws.com", :password => "p1dv4q35efjgon9s56dur3mi2es",:port => "18479"  )
    # #radis.set("1","bar")
    # #abs = radis.hgetall
    # #radis.FLUSHALL
    #
    # puts "Enter primary key from 1 to 100 :"
    # #key1 = gets.chomp()
    # @res= radis.hgetall(params[:id])
    # render json: @res
  end
end
