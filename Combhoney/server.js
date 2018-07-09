// 모듈 추출
var http = require('http');
var express = require('express');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');

// 라우터 설정 함수
function setRouter(app, handle){
    for (var ix in handle){
        switch(handle[ix].method){
            case 'get':
            app.get(handle[ix].path, handle[ix].callback);
            break;
            case 'post':
            app.post(handle[ix].path, handle[ix].callback);
            break;
            case 'put':
            app.put(handle[ix].path, handle[ix].callback);
            break;
            case 'delete':
            app.delete(handle[ix].path, handle[ix].callback);
            break;
        }
    }
};

function serverStart(handle){
    // 서버 생성
    var app = express();
    // 미들웨어 설정
    app.use(bodyParser.json());
    app.use(cookieParser());

    // 라우터 설정
    setRouter(app, handle);
    // 포트 설정
    var port = process.env.port || 8000;

    // 서버 실행
    http.createServer(app).listen(port);
    console.log('서버 실행중');
}

// 모듈 내보내기
module.exports = {
    'serverStart' : serverStart
};