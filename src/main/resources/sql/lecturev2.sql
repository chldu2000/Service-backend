DROP TABLE IF EXISTS `exchange_rate`;
create table exchange_rate
(
    currency_id varchar(20) not null comment '货币编号（英文缩写，有参考标准）',
    currency_name varchar(20) null comment '货币名称',
    currency_unit varchar(40) null comment '货币单位',
    currency_rate float null comment '与美元的汇率',
    constraint exchange_rate_currency_id_uindex
        unique (currency_id)
)
    comment '汇率表';

alter table exchange_rate
    add primary key (currency_id);

DROP TABLE IF EXISTS `salesman`;
create table salesman
(
    salesman_id varchar(20) not null comment '交易员编号'
        primary key,
    salesman_name varchar(20) null comment '交易员名字',
    company_id varchar(20) null comment '交易员所属公司代号'
)
    comment '交易员表';

DROP TABLE IF EXISTS `shares`;
create table shares
(
    RIC varchar(20) not null comment '股票RIC编号'
        primary key,
    shares_name varchar(20) null comment '股票名称',
    class_id int null comment '股票的行业分类',
    shares_price float null comment '股票的单价',
    currency_id varchar(20) null comment '可交易的货币编号',
    shares_num bigint null comment '股票发行总数',
    trade_limit int null comment '个人持有最大数限制',
    shares_flag int null comment '状态符，标志是否可交易'
)
    comment '股票信息表';

DROP TABLE IF EXISTS `shares_class`;
create table shares_class
(
    class_id int auto_increment comment '类别编号，自增'
        primary key,
    class_name varchar(20) null comment '类别名称'
)
    comment '股票所属行业类型表';

DROP TABLE IF EXISTS `shares_history`;
create table shares_history
(
    record_id int auto_increment comment '记录编号，自增'
        primary key,
    RIC varchar(20) null comment '股票RIC编号',
    closing_price float null comment '股票当天收盘价',
    transaction_in bigint null comment '股票当天总买入数量',
    transaction_out bigint null comment '股票当天总卖出数量',
    record_date date null comment '记录时间'
)
    comment '股票记录表（日结）';

DROP TABLE IF EXISTS `transaction_records`;
create table transaction_records
(
    record_id int auto_increment comment '记录编号，自增'
        primary key,
    RIC varchar(20) null comment '股票RIC编号',
    user_id varchar(20) null comment '交易者id',
    transaction_size int null comment '交易数量',
    transaction_time timestamp null comment '交易时间',
    salesman_id varchar(20) null comment '交易员编号',
    transaction_price float null comment '股票成交单价',
    transaction_flag int null comment '交易类型标志，买入1，卖出0',
    shares_hold bigint null comment '用户当前的该股持有数（包含当前交易）'
)
    comment '交易记录表';

DROP TABLE IF EXISTS `user`;
create table user
(
    user_id varchar(20) not null comment '用户id，唯一标识'
        primary key,
    user_name varchar(20) null comment '用户名字',
    login_name varchar(20) null comment '登陆用用户名',
    login_password varchar(20) null comment '登陆密码
',
    logon_time timestamp null comment '用户注册时间',
    flag int null comment '用户权限标志'
)
    comment '用户表';