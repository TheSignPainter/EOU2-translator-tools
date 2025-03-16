import sys
import xml.etree.ElementTree as ET
import re

def check_xml_file(file_path):
    try:
        tree = ET.parse(file_path)
        root = tree.getroot()
        for entry in root.findall(".//entry"):
            entry_id = entry.attrib.get("id")
            target = entry.find("target")
            if target is not None:
                text = target.text
                if text:
                    check_text_for_length(text, file_path, entry_id)
    except ET.ParseError:
        print(f"Error parsing XML file: {file_path}")

def check_text_for_length(text, file_path, entry_id):
    pattern = r'{f801}([^{}]*){f801}'
    matches = re.findall(pattern, text)
    for match in matches:
        if len(match) > 22:
            print(f"File: {file_path}\nEntry ID: {entry_id}\nText: {match}\n")

def main():
    if len(sys.argv) != 2:
        print("Usage: python script.py file_path")
        sys.exit(1)
    file_path = sys.argv[1]
    check_xml_file(file_path)

if __name__ == "__main__":
    main()
