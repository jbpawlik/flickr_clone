require 'require_helper'

describe Album do 
  it { should belong_to(:user) }
end 