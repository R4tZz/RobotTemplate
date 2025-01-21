import dotenv
from robot.libraries import OperatingSystem as robot_os
from robot.api.deco import library


@library(scope="GLOBAL", auto_keywords=True)
class DotenvLibrary:
    """
    == Description ==
    Loads a .env file to be used in RobotFramework as environment variables
    """

    __version__ = "0.1.0"
    ROBOT_LIBRARY_VERSION = __version__

    def load_env_file(self, dotenv_path=None):
        r"""Sets the Environment variables form .env file to use them in robotframework tests
            For using `%{env}` in tests out of a `.env` file

        == Args ==
            dotenv_path (str): path to dotenv file (default: .env)

        == Keyword ==
            `Load Env File`

        == Examples ==

            - Load Env File
            - Load Env File  .env.testing
            - Load Env File  dotenv_path=.env.production

        """
        for key, value in dotenv.dotenv_values(dotenv_path).items():
            robot_os.set_env_var(key, value)
