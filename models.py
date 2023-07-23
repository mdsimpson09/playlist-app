from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class Playlist(db.Model):
    """Playlist."""
    __tablename__ = 'playlists'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.Text, nullable=False, unique=True)
    genre = db.Column(db.Text, nullable=False, unique=True)
    
    playlist_songs = db.relationship("PlaylistSong", backref="playlist", cascade="all, delete-orphan")

class Song(db.Model):
    """Song."""
    __tablename__ = 'songs'
    id= db.Column(db.Integer, primary_key=True, autoincrement=True)
    title = db.Column(db.Text, nullable=False, unique= True)
    artist = db.Column(db.Text, nullable=False, unique= True)
    genre = db.Column(db.Text, nullable=False)

    song_playlist_songs = db.relationship("PlaylistSong", backref="song", cascade="all, delete-orphan")


class PlaylistSong(db.Model):
    __tablename__ = 'playlist_songs'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    playlist_id = db.Column(db.Integer, db.ForeignKey('playlists.id', ondelete='CASCADE'), nullable=False)
    song_id = db.Column(db.Integer, db.ForeignKey('songs.id', ondelete='CASCADE'), nullable=False)
    

    song_playlist_songs = db.relationship("Song", backref="playlist_songs", foreign_keys=[song_id])


    # id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    # playlist_id = db.Column(db.Integer, db.ForeignKey('playlists.id', ondelete='CASCADE'), nullable=False)
    # song_id = db.Column(db.Integer, db.ForeignKey('songs.id', ondelete='CASCADE'), nullable=False)
    # playlist = db.relationship("Playlist", backref=db.backref("playlist_songs", cascade="all, delete-orphan"), foreign_keys=[playlist_id])
    # song = db.relationship("Song", backref="playlist_songs", foreign_keys=[song_id])

# DO NOT MODIFY THIS FUNCTION
def connect_db(app):
    """Connect to database."""
    db.app = app
    db.init_app(app)
