import xml.etree.ElementTree as ET
import os
# 神秘小工具，确认EOU1/EOU2的文本中是否有完全重复的两篇xml存在。
# 仅以文件的source tag作为分类。

root_commual = 'D:\My Documents\Documents\EOU\EO-CN-main\\'
root1 = 'D:\My Documents\Documents\EOU\EO-CN-main\EOU1\MBM'
root2 = 'D:\My Documents\Documents\EOU\EO-CN-main\EOU2\MBM'

def parse_all_sources(file_path):
    """将所有的id+source组合转换为字符串并拼接。"""
    fname = os.path.basename(file_path)
    tree = ET.parse(file_path)

    tree_root = tree.getroot()

    parsed_str = ""

    for child in tree_root:
        # print(f"标签名: {child.tag}, 属性: {child.attrib}")
        for subchild in child:
        #     print(f"  子标签名: {subchild.tag}, 文本内容: {subchild.text}")
            if subchild.tag == 'source' and subchild.text:
                parsed_str += f"[[{child.attrib['id']}]]"+subchild.text
    
    return parsed_str

source_to_filename = dict()

for (root, dirs, files) in os.walk(root1):
    for file in files:
        if file.endswith('xml'):
            fpath = os.path.join(root, file)
            source_to_filename[parse_all_sources(fpath)] = os.path.join(root, file)

output_str = []

for (root, dirs, files) in os.walk(root2):
    for file in files:
        if file.endswith('xml'):
            fpath = os.path.join(root, file)
            parsed = parse_all_sources(fpath)
            if parsed in source_to_filename:
                output_str.append(f'{source_to_filename[parsed].split(root_commual)[1]} -> {os.path.join(root, file).split(root_commual)[1]}\n')
                pass
f = open("EOU1-EOU2的重复文本.txt", mode='w')
f.writelines(output_str)
f.close()