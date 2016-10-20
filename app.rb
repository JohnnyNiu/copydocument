require 'sinatra'
require 'fileutils'
post '/document/:src/copy/:dest' do |src,dest| FileUtils.cp getAbsolutePath(src), getAbsolutePath(dest)
    201
end

def getAbsolutePath document_id
  "/Users/xiaomingniu/projects/copyDocument/data/" + document_id[-2, 2] + "/" + document_id[-4,2] + "/" + document_id + ".json";
end

set :show_exceptions, false
error Errno::ENOENT do 404 end