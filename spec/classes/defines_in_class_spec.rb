require 'spec_helper'

describe "defines::in_class" do
  it { is_expected.to contain_defines__simple("in_class_title") }
  it { is_expected.to contain_notify("in_class_title") }
end
