describe package('ProGet') do
  it { should be_installed }
end

describe iis_site('ProGet') do
  it { should exist }
  it { should be_running }
  it { should have_app_pool('ProGetAppPool') }
end

describe port(80) do
  it { should be_listening }
end