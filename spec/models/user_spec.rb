require 'rails_helper'

describe User do 
  it { should have_many(:albums) }
# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
end
