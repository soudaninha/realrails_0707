require 'sinatra'

get '/' do
    "hack ur life"
end

# Variable routing >> :name(심볼) 이렇게 받을고에여~~ #
# 모든 임의적인 라우팅을 해놨어용
get '/likelion/:name' do # 심볼에 있는 건 파람즈 해쉬를 통해 불러올 수 있음! 파람즈가 저장중이지용
    "Hello, Likelion,<h1> #{params[:name]} <h1>"
    # #{}하면 스트링 안에 저장된 
    # 문자열과 문자열이 아닌 변수를 함께 쓰려면 간단히 문자열 안에 #{} 를 사용
end

#get '/likelion' do
#    "Hello, Likelion,<h1> Danah </h1>"
#end

get '/view' do
    #"<!DOCTYPE html><html><head></head><body><p> 이런 식으로 뷰 만드는 게 됨 근데 욘나뤼 병신... </p></body>"
    # index.html 만들기
    #send_file "index.html"
    # 쌩짜 html이라 ruby 돌릴려면 views 폴더 생성
    
    erb :index
    
end

#Quiz
get '/cube/:num' do
    n = params[:num].to_i
    "#{(n**3).to_s}" #제곱
end

#erb >> embedded ruby file