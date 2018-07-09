// 모듈 추출
var server = require('./server');
var requestHandler = require('./requestHandler');
var database = require('./database');

// 핸들러 생성자
function HandlerCreator(method, path, callback){
    this.method = method;
    this.path = path;
    this.callback = callback;
};

// 핸들 객체 설정
var handle = [
    new HandlerCreator('post', '/register', requestHandler.register),
    new HandlerCreator('post', '/login', requestHandler.login)
];

// DB 연결
requestHandler.connectDB(database);

// 서버 시작
server.serverStart(handle);