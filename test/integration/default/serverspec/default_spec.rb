# encoding: UTF-8
# License:: Apache License, Version 2.0
#

require_relative 'spec_helper'

describe package('dspam') do
  it { should be_installed }
end

describe file('/etc/default/dspam') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe file('/etc/dspam/dspam.conf') do
  it { should be_file }
end

describe service('dspam') do
  it { should be_enabled }
end
