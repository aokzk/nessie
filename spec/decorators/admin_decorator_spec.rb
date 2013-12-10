# coding: utf-8
require 'spec_helper'

describe AdminDecorator do
  let(:admin) { Admin.new.extend AdminDecorator }
  subject { admin }
  it { should be_a Admin }
end
