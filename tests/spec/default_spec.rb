require 'spec_helper'

describe file('/usr/bin/psql') do
  it { is_expected.to be_file }
end

describe file('/usr/share/postgresql-common/pg_wrapper') do
  it { should be_mode 755 }
end

describe package('postgresql-9.4') do
  it { should be_installed }
end
