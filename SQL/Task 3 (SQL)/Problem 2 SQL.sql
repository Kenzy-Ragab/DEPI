CREATE DATABASE Musicana;
USE Musicana;

--Musicians--
CREATE TABLE Musicians(
MusicianID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
Street VARCHAR(10),
City VARCHAR(10),
Phone VARCHAR(13)
)

--Instruments--
CREATE TABLE Instruments(
InstrumentID INT PRIMARY KEY,
Name NVARCHAR(20) NOT NULL,
MusicalKey NVARCHAR(10)
)

--Mus_Instruments--
CREATE TABLE Mus_Instruments(
MusID INT,
InstID INT,
PRIMARY KEY(MusID,InstID),
FOREIGN KEY(MusID) REFERENCES Musicians(MusicianID),
FOREIGN KEY(InstID) REFERENCES Instruments(InstrumentID)
)

--Albums--
CREATE TABLE Albums(
AlbumID INT PRIMARY KEY,
Title NVARCHAR(20),
CopyrightDate DATE,
MusID INT,
FOREIGN KEY(MusID) REFERENCES Musicians(MusicianID)
)

--Songs--
CREATE TABLE Songs(
SongID INT PRIMARY KEY,
Title NVARCHAR(20),
Author NVARCHAR(20),
AlbumID INT,
FOREIGN KEY(AlbumID) REFERENCES Albums(AlbumID)
)

--Son_Musicians--
CREATE TABLE Son_Musicians(
SonID INT,
MusID INT,
PRIMARY KEY(SonID,MusID),
FOREIGN KEY(SonID) REFERENCES Songs(SongID),
FOREIGN KEY(MusID) REFERENCES Musicians(MusicianID)
)
