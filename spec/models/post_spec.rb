require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'My First Post', comments_counter: 4, likes_counter: 20) }

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title should not be to long' do
    subject.title = 'a' * 256
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be integer' do
    subject.comments_counter = 'b'
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be greater than or equal to zero' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be integer' do
    subject.likes_counter = 'c'
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be greater than or equal to zero' do
    subject.likes_counter = -2
    expect(subject).to_not be_valid
  end
end
