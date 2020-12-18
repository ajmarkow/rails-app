require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many(:snippets)}
  it {should have_many(:snippets_lists)}
  it {should have_one()}


end
