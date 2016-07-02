require 'net/http'
require 'colorize'

for k,v in  {"Uniplam"=>"http://homologacao.infoway-pi.com.br/uniplam/getRoles.do", "IPMT" => "http://homologacao.infoway-pi.com.br/ipmt66/getRoles.do"}
  uri = URI(v)
  res = Net::HTTP.get_response(uri)
  case res.code
  when '200'
    puts 'Sistema ' +  k + ' ONLINE'.colorize(:green)
  when '404'
    puts 'Sistema ' +  k + ' NÃO EXISTE'.colorize(:blue)
  when '403'
    puts 'Acesso ao sistema ' +  k + ' NÃO AUTORIZADO'.colorize(:purple)
  else
    puts 'Sistema ' + k + ' OFFLINE'.colorize(:red)
  end
end
