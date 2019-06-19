def iptables_flush_all_tables
  ['filter', 'nat', 'mangle', 'raw'].each do |t|
    expect(run_shell("iptables -t #{t} -F").stderr).to eq('')
  end
end

def ip6tables_flush_all_tables
  ['filter', 'mangle'].each do |t|
    expect(run_shell("ip6tables -t #{t} -F").stderr).to eq('')
  end
end