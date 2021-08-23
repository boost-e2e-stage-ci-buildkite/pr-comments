
# If you need to use YAML, make sure to use YAML parser's safe functions
import yaml
document = "!!python/object/apply:os.system ['ipconfig']"
print(yaml.safe_load(document))
