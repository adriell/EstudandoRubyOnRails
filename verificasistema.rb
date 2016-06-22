require 'net/http'
require 'colorize'

url = ['http://homologacao.infoway-pi.com.br/uniplam/getRoles.do','http://homologacao.infoway-pi.com.br/uniplam2/getRoles.do']

for verificar in url
  uri = URI(verificar)
  res = Net::HTTP.get_response(uri)
case res.code
when '200'
  puts 'Sistema ' +  verificar + ' ONLINE'.colorize(:green)
when '404'
  puts 'Sistema ' +  verificar + ' NÃO EXISTE'.colorize(:blue)
when '403'
  puts 'Acesso ao sistema ' +  verificar + ' NÃO AUTORIZADO'.colorize(:purple)
else
  puts 'Sistema ' + verificar + ' OFFLINE'.colorize(:red)
end
end
