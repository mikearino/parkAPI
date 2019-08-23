require 'rails_helper'

describe "post a location route", :type => :request do

  before do
    post '/locations', params: { :name => 'test_name', :content => 'test_content', :place => 'test_place' }
  end

  it 'returns the location name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the location content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns the location place' do
    expect(JSON.parse(response.body)['place']).to eq('test_place')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
