import os
import dotenv

dotenv.load_dotenv()

BOT_TOKEN = os.environ.get("BOT_TOKEN", None)
