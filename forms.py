"""Forms for playlist app."""
from wtforms import Form, SelectField, StringField, TextAreaField, validators
from flask_wtf import FlaskForm
from wtforms.validators import InputRequired

from models import Playlist, Song, PlaylistSong

class PlaylistForm(FlaskForm):
    """Form for adding playlists."""
    name = StringField("Playlist Name", validators=[InputRequired()])
    genre = StringField("Genre")
    # artist = StringField("Artist", validators=[InputRequired()])
  

class SongForm(FlaskForm):
    """Form for adding songs."""
    title = StringField("Song Title", validators=[InputRequired()])
    artist = StringField("Artist", validators=[InputRequired()])
    genre = StringField("Genre",validators=[InputRequired()])

# DO NOT MODIFY THIS FORM - EVERYTHING YOU NEED IS HERE
class NewSongForPlaylistForm(FlaskForm):
    """Form for adding a song to playlist."""
    artist = StringField("Song Title", validators=[InputRequired()])
    song = SelectField('Song To Add', coerce=int, validators= [InputRequired()])
    genre = StringField('Genre', validators=[InputRequired()])
