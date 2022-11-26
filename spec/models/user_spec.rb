require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'John', posts_counter: 30, photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.') }

  before { subject.save }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be present' do
    subject.posts_counter = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be integer' do
    subject.posts_counter = 'a'
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be greater than or equal to zero' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end
