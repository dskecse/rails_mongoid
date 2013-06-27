Tire.configure do
  logger 'log/elasticsearch.log', level: 'info'
  url AppConfig.elasticsearch_url
end
