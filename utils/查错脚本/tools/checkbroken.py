import sys
import xml.etree.ElementTree as ET

def check_xml(xml_file):
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()

        problematic_entries = []
        for entry in root.findall('.//entry'):
            entry_id = entry.attrib.get('id')
            targets = entry.findall('.//target')

            for target in targets:
                target_text = target.text
                if target_text:
                    left_bracket_count = target_text.count('{')
                    right_bracket_count = target_text.count('}')
                    if left_bracket_count != right_bracket_count:
                        problematic_entries.append((xml_file, entry_id))
                        break  # no need to continue checking this entry

        if problematic_entries:
            print("发现以下 XML 文件中存在只有一边中括号的控制符问题：")
            for xml_file, entry_id in problematic_entries:
                print(f"XML 文件: {xml_file}\nEntry ID: {entry_id}")
        else:
            print("未发现只有一边中括号的控制符问题。")

    except FileNotFoundError:
        print(f"指定的 XML 文件 '{xml_file}' 不存在。")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("用法: python script.py <xml 文件>")
    else:
        xml_file = sys.argv[1]
        check_xml(xml_file)
