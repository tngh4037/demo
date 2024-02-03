-- ### 고객센터 (CUSTOMER) // TODO :: 추후 회원 및 로그인 기능 추가시, 등록자 정보 컬럼 추가  ###
-- 공지사항
DROP TABLE IF EXISTS CUSTOMER_NOTICE CASCADE;
CREATE TABLE CUSTOMER_NOTICE (
    `NOTICE_NO`     INT NOT NULL AUTO_INCREMENT COMMENT '식별자',
    `TITLE`         VARCHAR(100) NOT NULL COMMENT '제목',
    `CONTENTS`      TEXT NOT NULL COMMENT '내용',
    `NOTICE_TYPE`   CHAR(2) NOT NULL COMMENT '공지 유형',
    `HITS`          INT NOT NULL DEFAULT 0 COMMENT '조회수',
    `DISPLAY_YN`    CHAR(1) NOT NULL DEFAULT 'N' COMMENT '노출 여부(Y/N)',
    `REG_DT`        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
    `MOD_DT`        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY(`NOTICE_NO`)
);
-- 자주하는질문
DROP TABLE IF EXISTS CUSTOMER_FAQ CASCADE;
CREATE TABLE CUSTOMER_FAQ (
    `FAQ_NO`            INT NOT NULL AUTO_INCREMENT COMMENT '식별자',
    `QUESTION`          VARCHAR(100) NOT NULL COMMENT '질문',
    `ANSWER`            TEXT NOT NULL COMMENT '답변',
    `FAQ_TYPE`          CHAR(2) NOT NULL COMMENT '질문 유형',
    `HITS`              INT NOT NULL DEFAULT 0 COMMENT '조회수',
    `DISPLAY_YN`        CHAR(1) NOT NULL DEFAULT 'N' COMMENT '노출 여부(Y/N)',
    `DISPLAY_TOP_YN`    CHAR(1) NOT NULL DEFAULT 'N' COMMENT '상단 노출 여부(Y/N)',
    `REG_DT`            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일',
    `MOD_DT`            DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일',
    PRIMARY KEY(`FAQ_NO`)
);