# -*- coding: utf-8 -*-
require 'spec_helper'

describe Item do
  it { should validate_presence_of :name }
  it { should belong_to :user }

  context "Create new item" do
    subject { @item = Item.new }

    it { expect(subject.quantity).to eq 1 }
  end
end
