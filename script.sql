CREATE SCHEMA myschema;

SET search_path TO myschema;

CREATE TABLE user_accounts (
    id SERIAL PRIMARY KEY,
    first_name CHARACTER VARYING(30) NOT NULL,
    last_name CHARACTER VARYING(30) NOT NULL,
    username CHARACTER VARYING(30) NOT NULL,
    password CHARACTER VARYING(255) NOT NULL,
    role CHARACTER VARYING(30) NOT NULL,
    status CHARACTER VARYING(30) NOT NULL,
    created_at DATE NOT NULL
);

INSERT INTO user_accounts(first_name, last_name, username, password, role, status, created_at) VALUES
('Viktor', 'Shilay', 'viktorshilay', '$2a$10$jjtV9qYs.uzjsUwuCZThWebm3tGG2EgsLGFFHL.Y8RtkFM.t9DHFW', 'ADMIN', 'ACTIVE', '2021-06-09'),
('Anfisa', 'Potockaya', 'anfisa', '$2a$10$nyd6MWxVzsljtcpSd/Ioo.0xbYyuq4olEw47CVUylyY7Oa2vcPH5O', 'USER', 'ACTIVE', '2021-06-13'),
('Arsen', 'Wenger', 'arsen', '$2a$10$xzMiNA2Vu6Qd0LvVmhHsseib2sYx6jgMo1vCMN3sK9OKxPe4mGRaS', 'USER', 'ACTIVE', '2021-06-13'),
('Nikita', 'Mitasov', 'nikitamitasov', '$2a$10$3CsuPognA36UQsUaktaeYuvmEZpI73BXsitG7XIUMS2c8EMN7dEui', 'USER', 'ACTIVE', '2021-06-13'),
('Yurij', 'Dud', 'dud', '$2a$10$U02wv1yuFUbarCwLLfqYqOC34uCZgnKKvKWIaVqH5aUg4VqyRUcGC', 'USER', 'ACTIVE', '2021-06-13'),
('Vanya', 'Titov', 'vano', '$2a$10$H2Fmdoz.ePRqZOAngkr2Bu2iq/kanFLN.XcvMJdIpkjzuc98UunE.', 'USER', 'ACTIVE', '2021-06-13'),
('Ivan', 'Ivanov', 'ivanov', '$2a$10$S8Vs0EArmekxk0/awG2Mc.uO9B2TAb6.HR8lO0IdpMcY.06rDGI/m', 'USER', 'ACTIVE', '2021-06-10'),
('Evgeniy', 'Galinevsky', 'evgen', '$2a$10$VGZZrv2wTpEYeT0h/CTXfu4KePSTV/yoFdoIM8ZUTdaY/hKAM6YJu', 'USER', 'ACTIVE', '2021-06-13'),
('Darya', 'Oreshko', 'daryaore', '$2a$10$s0UTQk0mkkg5Sih2T5ot4uu7shLWTq16JzJDahf0praX3m/2MM9pm', 'USER', 'ACTIVE', '2021-06-13'),
('Liza', 'Querra', 'liza', '$2a$10$zFXKUMZRsQSFkrnZFRiQVe2vbPChOsNtrja.m10DfAlsc.1c0Hn.G', 'USER', 'ACTIVE', '2021-06-13'),
('Dmitry', 'Sorokin', 'dmitrysor', '$2a$10$1nQ/2oE90RmGVr491iEsOOWtEbtH7Y0PFcfSfGJjxIX83U5aBtU7y', 'USER', 'ACTIVE', '2021-06-13'),
('Andrey', 'Korolev', 'andreykor', '$2a$10$SUb4lo3C2IPVDm758PLX5ugSowtWRYVy9WejnibTWzRfizsXVzWVK', 'USER', 'ACTIVE', '2021-06-13'),
('Anna', 'Ivanova', 'annaivanova', '$2a$10$jkT7k2mWiMVYwW08Lef2BOM5q1.O505rUSOwENN.d38EpN.D5ZN9u', 'USER', 'ACTIVE', '2021-06-13'),
('Lincoln', 'Burrows', 'lincoln', '$2a$10$u51X47wEY2pGLLJDprQFcObNRA.pZEy5V1Jb/A2DzII5uqbSNxj6.', 'USER', 'ACTIVE', '2021-06-13'),
('Justin', 'Timberlake', 'JustinT', '$2a$10$BeFnuU4O2wIV/CRQv70Kdus6ldmR0WHef3LX1b80NHFH/i6cJhrhW', 'USER', 'ACTIVE', '2021-06-13'),
('Yulia', 'Kosinskaya', 'yulyakos', '$2a$10$5vSO2Wxo3NkQW6L68Iqz1OSnqeewA40H23jqCG3craHXR9vpPbgaa', 'USER', 'ACTIVE', '2021-06-13'),
('Andrey', 'Krukov', 'andrew', '$2a$10$RSeKyIDi9RgsIPZurGCQqO87Gwh/GUChb.T7WhxlHlsJ7246PEQh6', 'USER', 'ACTIVE', '2021-06-13'),
('Maxim', 'Nevmerzhicky', 'max', '$2a$10$OmwZxBKmc6lmDDm1c77EsukVcEeRdK.tVOv5ru3F8.qmICAMrdXqG', 'USER', 'ACTIVE', '2021-06-13'),
('Igor', 'Chehov', 'igorch', '$2a$10$k7FfLrEuVVh8xJJ.WJiJDe7nB8A0/6VRRhKDzRvnhwylHSj49NerS', 'USER', 'ACTIVE', '2021-06-13'),
('Artem', 'Sotnikov', 'artemsot', '$2a$10$VPay6Kl.cCRVHKZ8MefZfuDQ3Yc5nhCbM6IvWsxceftEW25lhcICW', 'USER', 'ACTIVE', '2021-06-13'),
('Sabina', 'Mayer', 'sabina', '$2a$10$rxrpvxI8/qmgdkbgof0aie/dQlyGY7ekXxvFBqC/dQFT/uBIlgehC', 'USER', 'ACTIVE', '2021-06-13'),
('Bill', 'Gates', 'bill', '$2a$10$Hz2bcgmkqjTZ6QnzYlmnmOiQU4ZSJakZnap7F5KjRO.TPTxNaB3la', 'USER', 'ACTIVE', '2021-06-13'),
('Ilya', 'Korobkin', 'alohadance', '$2a$10$Tfk6ovfskhMZ3xx/CPAwse1xtMpcA9b0X7shT714PeUUtCzHeqnVm', 'USER', 'ACTIVE', '2021-06-09'),
('Alexandr', 'Belinsky', 'alexbel', '$2a$10$Nx1goBRRBHpat42.K98HdepNKMkNjxNPR/jQqw1j7/Ipe88zXENm6', 'USER', 'ACTIVE', '2021-06-09'),
('Olya', 'Anisimova', 'olya', '$2a$10$lDM/nBKqw1uu7iFciU7wpul8Q4mVJvOZR2eqoalpRPgEQeXT4fogO', 'USER', 'ACTIVE', '2021-06-10'),
('Anastasiya', 'Romanova', 'nastyarom', '$2a$10$gWxaBmgl1VlgGT1OUHr9pexjsbszTDJ50vxXGpvJWnSxWyY84Wk2S', 'USER', 'ACTIVE', '2021-06-12'),
('Dmitry', 'Potapchuk', 'dimapot', '$2a$10$FTx/HGf8uKZO4jIhRXWKFevcWs92T/aL8njpVm.b/8P6izX7YG6cO', 'USER', 'ACTIVE', '2021-06-10'),
('Veronika', 'Zverko', 'veronikazver', '$2a$10$XlSDd0O83qotIC5lz5Cij.wcbyaS0wKdDUadwqYwRrFhfRc5852c6', 'USER', 'ACTIVE', '2021-06-09'),
('Angelina', 'Polyakova', 'angelina', '$2a$10$lxeIyWfQ72oXA5jV9k7rhOO8IpH16lEJ94gVUazizuShBWA051gjC', 'USER', 'ACTIVE', '2021-06-10'),
('Boris', 'Kustov', 'boris', '$2a$10$PlhDM/uPcLfhDTNRLuntLuteYivKHoFV7wdjeqrhy.ugIzxpt5CJe', 'USER', 'ACTIVE', '2021-06-11'),
('Michael', 'Ivanov', 'mixa', '$2a$10$LlgqDn4iGiZ6TzSTo.PBOurscHrcmJTmex07poE8oRMyB9VCpvDPm', 'USER', 'ACTIVE', '2021-06-09'),
('Alexey', 'Kulbikov', 'alexcool', '$2a$10$iUQi6tvUL9LjH.Uk2cbareoBC3KDWC8mb9SP1ZnpGJxpDHRRrVsJK', 'USER', 'ACTIVE', '2021-06-09'),
('Larisa', 'Markova', 'larisa', '$2a$10$5RT/dgHXa2W3QR5lVqe5IeYvY3cdEWtEczzeDGgjygTsDEDa8uRXa', 'USER', 'ACTIVE', '2021-06-11'),
('Anna', 'Efimova', 'annaefim', '$2a$10$HRzFyXuD6qpGZ6hQ.FDYJe.1ya3EyLP37PULxD1YL0sI9BPAKjCF6', 'USER', 'ACTIVE', '2021-06-12'),
('Nikita', 'Berillo', 'nikitos', '$2a$10$gxUk7MVMFTe.RN/x/CNqI.TW4.uKuj3OhLm5cbHdyzokSIXj/wVz2', 'USER', 'ACTIVE', '2021-06-09'),
('Dmitry', 'Kosinsky', 'dmitrykos', '$2a$10$qFrlQMXYue0pit3wGMCu..6MWp.Ld/Lxkgv0BTJ01b/3auNXMLbSq', 'USER', 'ACTIVE', '2021-06-12'),
('Margarita', 'Rebrova', 'margo', '$2a$10$JcvPTAyqH3Y54RIsGzyBU.N3sGfffeSZpi7rq.Jlx.LD/Ko9dpJBq', 'USER', 'ACTIVE', '2021-06-11'),
('Michael', 'Scofield', 'michael', '$2a$10$uIcDje8oN2kMURuJYSGZ.uQnm45yfCrLAbxc6r73fYhkG/Xsr0JfG', 'USER', 'ACTIVE', '2021-06-12'),
('Elena', 'Semenova', 'elenasem', '$2a$10$rMl8ygPW36Pb3XlK8c.8.eLpjHj492nItNrLSY7En0sxO7ttZjUAi', 'USER', 'ACTIVE', '2021-06-10'),
('Aleksandr', 'Kosinsky', 'alexkos', '$2a$10$jmJmG8G8PSWy1GTtGPRMt.iQVWozLps0Tux9Dj5r2LAk9q0jV2mmG', 'USER', 'ACTIVE', '2021-06-11'),
('Nikolay', 'Sobolev', 'sobolev', '$2a$10$XDzS2RNSanjmp8NEM9TldusAs/.xyE3NqAmUpaC1O49Vmuj1YVpmK', 'USER', 'ACTIVE', '2021-06-09'),
('Maxim', 'Ermolin', 'maxerm', '$2a$10$0PrtOqTnX.Xa8MxuktVMVu5ReSdr3QcJqqQWxNCiIE7tut/pGC07y', 'USER', 'ACTIVE', '2021-06-12'),
('Petr', 'Petrov', 'petrov', '$2a$10$vH0LccXYrylCh/IPGMtZKeEgDhPZkMs1bcOH/kfBsPn2PA3O1rJly', 'USER', 'ACTIVE', '2021-06-09'),
('Ekaterina', 'Koroleva', 'katyakor', '$2a$10$O1pRXIEKubyHG0ajgFgJPeWWNQlc7cT8zEijcja7t8YE.x14BUH46', 'USER', 'ACTIVE', '2021-06-12'),
('Alena', 'Popova', 'alena', '$2a$10$NVP8oktB2v0S3lupGdop8OO0bYyVAu9KibPG439QlxEF.IlFyO3QK', 'USER', 'ACTIVE', '2021-06-11'),
('Olivia', 'Wilde', 'olivia', '$2a$10$WP7AmZnnVuKL2nKmypyK7.2kptGgJn8wRGky/vMHOTiXvVRZL3xRe', 'USER', 'ACTIVE', '2021-06-09'),
('Alexandr', 'Ivanov', 'alexivanov', '$2a$10$sUcNw0WCqMADTPkLzkVVZOGsuaB2Jp3hTekvQdLXx.VA0pAtElojW', 'USER', 'ACTIVE', '2021-06-10'),
('Selena', 'Gomez', 'selena', '$2a$10$AkGm4bdpa8XIIHHCzTe8leGJxay4IRYNSkQiWIBkBQZQl3bvLhMFu', 'USER', 'ACTIVE', '2021-06-14'),
('Spider', 'Man', 'spiderman', '$2a$10$bgeY1vXrtJN/JqHPn5eZIuKfuRn4q0u1KY.NqBc91nIIutxcc26jG', 'USER', 'ACTIVE', '2021-06-14')
