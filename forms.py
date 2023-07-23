"""Forms for playlist app."""
from wtforms import Form, SelectField, StringField, TextAreaField, validators
from flask_wtf import FlaskForm
from wtforms.validators import InputRequired

from models import Playlist, Song, PlaylistSong

class PlaylistForm(FlaskForm):
    """Form for adding playlists."""
    name = StringField("Playlist Name", validators=[InputRequired()])
    description = TextAreaField("Description")
  


class SongForm(FlaskForm):
    """Form for adding songs."""
    title = StringField("Song Title", validators=[InputRequired()])
    artist = StringField("Artist", validators=[InputRequired()])


# DO NOT MODIFY THIS FORM - EVERYTHING YOU NEED IS HERE
class NewSongForPlaylistForm(FlaskForm):
    """Form for adding a song to playlist."""

    song = SelectField('Song To Add', coerce=int, validators= [InputRequired()])