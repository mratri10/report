CREATE TABLE auth(
    username VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    phone VARCHAR(100),
    email VARCHAR(100),
    token VARCHAR(255),
    token_exp BIGINT,
    role SMALLINT NOT NULL,
    status SMALLINT NOT NULL,
    PRIMARY KEY (username),
    UNIQUE (token)
) ENGINE InnoDB;