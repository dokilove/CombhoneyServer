// DB 변수
var mysqlDB;

// DB 연결 함수
function connectDB(database){
    mysqlDB = database;
};

function register(req, res){
    console.log(req.body.accountid + ' : ' + req.body.accountname
     + ' : ' + req.body.password);
    // 추가할 데이터 설정
    var data ={
        accountid : req.body.accountid,
        accountname : req.body.accountname,
        password : req.body.password
    };
    mysqlDB.register(res, data);
};

function login(req, res){
    console.log(req.body.accountid + ' : ' + req.body.password);
    // 로그인 확인 정보 설정
    var data ={
        accountid : req.body.accountid,
        password : req.body.password
    };
    mysqlDB.login(res, data);
};

function allAvatarInfo(req, res){
    mysqlDB.allAvatarInfo(res, req.body.idx);
}

module.exports = {
    'connectDB' : connectDB,
    'register' : register,
    'login' : login,
    'allAvatarInfo' : allAvatarInfo
};