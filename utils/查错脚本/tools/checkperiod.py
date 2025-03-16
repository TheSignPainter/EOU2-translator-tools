import sys
import re
import xml.etree.ElementTree as ET

def check_xml_file(xml_file):
    try:
        tree = ET.parse(xml_file)
        root = tree.getroot()
        
        problematic_entries = []
        
        for entry in root.iter('entry'):
            entry_id = entry.attrib.get('id')
            for target in entry.iter('target'):
                text = target.text.strip() if target.text else ""
                match = re.search(r'[\u4e00-\u9fff]+{f801}{f802}', text)
                if match:
                    problematic_entries.append((entry_id, text))
                    break  # Move to the next entry if one target has an issue
        
        if problematic_entries:
            print("以下entry存在问题：")
            for entry_id, text in problematic_entries:
                print(f"entry id：{entry_id}\n文本内容：{text}\n文件名：{xml_file}")
        else:
            print("没有发现问题。")
    
    except FileNotFoundError:
        print("文件不存在，请输入正确的文件路径。")
    except ET.ParseError:
        print("XML文件格式错误，请检查文件格式。")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("请提供要检检查的XML文件路径。")
    else:
        xml_file = sys.argv[1]
        check_xml_file(xml_file)
