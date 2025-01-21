import yaml
from robot.api.deco import library
from robot.api import logger


@library(scope="GLOBAL", auto_keywords=True)
class YamlHandler:
    def write_yaml(self, data, file_path):
        with open(file_path, "w") as file:
            for index, prod in enumerate(data, start=1):
                # logger.warn(f"Writing data: {i} to file: {file_path}")
                dicty = {index: dict(prod)}
                yaml.dump(dicty, file, default_flow_style=False)
