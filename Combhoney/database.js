// 모듈 추출
var mysql = require('mysql');

// DB 연결 정보 설정
var client = mysql.createConnection({
    user : 'root',
    password : '1234',
    database : 'combhoney'
});

// DB 연결
client.connect(function(error){
    if (error){
        console.log('DB 연결 오류 : ' + error);
    }
});

function register(res, data){
    var query = 'select * from account where accountid=?';
    client.query(query, data.accountid, function(error, result){
        if (result.length === 0){
            query = 'insert into account set ?';
            client.query(query, data, function(error){
                if (error){
                    console.log('등록 실패 : ' + error);                    
                    res.send('등록 실패 : ' + error);
                }else{
                    console.log(data.accountid + ' 등록 완료');                    
                    res.send(data.accountid + ' 등록 완료');
                }
            });
        }
        else{
            console.log('이미 등록된 ID');
            res.send('이미 등록된 ID');
        }
    });
};

function login(res, data){
    var query = 'select * from account where accountid=? and password=?';
    client.query(query, [data.accountid, data.password], function(error, result){
        if (error){
            console.log('로그인 실패 : ' + error);                    
            res.send('로그인 실패 : ' + error);
        }else{
            if (result.length > 0){
                console.log('로그인 성공 : ' + data.accountid);
                // 쿠키 저장                
                res.cookie('accountid', data.accountid);
                // 로그인 후 행동
            }else{
                console.log('로그인 실패');                    
                res.send('로그인 실패');
            }
        }

    });
};

module.exports = {
    'register' : register,
    'login' : login
};