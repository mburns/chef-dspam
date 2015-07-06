require 'chefspec'
require_relative 'spec_helper'

describe 'dspam::default' do
  before { stub_resources }

  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'installs package' do
    expect(chef_run).to install_package('dspam')
  end

  it 'writes config file' do
    expect(chef_run).to create_template('/etc/dspam/dspam.conf')
  end

  it 'writes config file' do
    chef_run.node.set['dspam']['trainingMode'] = 'NOTRAIN'
    expect(chef_run).to create_template('/etc/default/dspam').with_content { |content|
      expect(content).to include('trainingMode=NOTRAIN')
    }
  end

  it 'starts dspam' do
    expect(chef_run).to enable_service('dspam')
  end
end
