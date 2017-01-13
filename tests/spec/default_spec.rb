require 'spec_helper'

describe file('/usr/bin/psql') do
  it { is_expected.to be_file }
end

describe file('/usr/share/postgresql-common/pg_wrapper') do
  it { should be_mode 755 }
end

describe package('postgresql-client-9.4') do
  it { should be_installed }
end

describe command('psql --version') do
  its(:stdout) { should match /9.4.*/ }
end
