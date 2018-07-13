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
                console.log('로그인 성공 : ' + data.accountid + ' idx : ' + result[0].idx);
                // 쿠키 저장할 필요가 있나?
                //res.cookie('accountid', data.accountid);
                // 로그인 후 행동
                //loginSucceed(data.accountid);          
                //console.log(result[0].idx);      
                //res.send(result);

                // var data = {
                //     idx : result[0].idx,
                //     accountid : result[0].accountid,
                //     accountname : result[0].accountname,
                //     gold : result[0].gold,
                //     cash : result[0].cash  
                // };
                // res.send(data);

                loginSucceed(res, result[0].idx);
            }else{
                console.log('로그인 실패');                    
                res.send('로그인 실패');
            }
        }

    });
};

function loginSucceed(res, idx){
    var query = 'select * from avatar where accountidx=?';
    //console.log('account idx : ' + idx);
    client.query(query, idx, function(error, result){
        if (error){
            console.log('아바타 정보 불러오기 실패 : ' + error);            
            res.send('아바타 정보 불러오기 실패 : ' + error);
        }else{
            if (result.length > 0){
                console.log('아바타 정보 받아옴');
                //res.send(JSON.stringify(result));
                var data = [];
                for (var ix in result)
                {                
                    data[ix] = {
                        avatarid : result[ix].idx,
                        avatarname : result[ix].avatarname,
                        level : result[ix].level,
                        exp : result[ix].exp,
                        equipslot1 : result[ix].equipslot1,
                        equipslot2 : result[ix].equipslot2,
                        equipslot3 : result[ix].equipslot3,
                    }
                }            
                console.log(data);
                res.send(data);
            }else{
                console.log('아바타 로딩 실패');
                res.send('아바타 로딩 실패');
            }
        }
    });
}

module.exports = {
    'register' : register,
    'login' : login
};