from flask_frozen import Freezer
from app import app  # Import your main Flask application

# Configure Freezer
freezer = Freezer(app)
app.config['FREEZER_RELATIVE_URLS'] = True
app.config['FREEZER_DESTINATION'] = 'build'  # Output directory for frozen files

# Fix for routes without extensions - tell Freezer to add .html
app.config['FREEZER_DEFAULT_MIMETYPE'] = 'text/html'
app.config['FREEZER_EXTENSION_MAPPINGS'] = {
    'text/html': '.html',
}

# Make sure all URL routes are captured
@freezer.register_generator
def url_generator():
    # Return an iterable of URL paths to freeze
    yield '/'  # Home page
    yield '/login'
    yield '/logout'
    yield '/register'
    yield '/parkinson'
    yield '/kidney'
    yield '/liver'
    yield '/diabetes'
    yield '/heart'
    yield '/profile'
    yield '/retinal'
    
    # Add any other routes your app has

if __name__ == '__main__':
    freezer.freeze()