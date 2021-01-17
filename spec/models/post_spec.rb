# spec/models/post_spec.rb
require 'rails_helper'

RSpec.describe Post, elasticsearch: true, :type => :model do
    it 'should be indexed' do
        expect(Post.__elasticsearch__.index_exists?).to be_truthy
    end
end