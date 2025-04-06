import xml.etree.ElementTree as ET
import os
import re
# 确认EOU2的文本中所有的形如{f859}的文本位置。

rootdir = 'D:\My Documents\Documents\EOU\EO-CN-main\EOU2\MBM'

def find_f859(file_path):
    """将所有的id+source组合转换为字符串并拼接。"""
    fname = os.path.basename(file_path)
    tree = ET.parse(file_path)

    tree_root = tree.getroot()

    founded = set()

    for child in tree_root:
        # print(f"标签名: {child.tag}, 属性: {child.attrib}")
        for subchild in child:
        #     print(f"  子标签名: {subchild.tag}, 文本内容: {subchild.text}")
            if subchild.tag == 'source' and subchild.text:
                f859 = re.findall('{f859}{([0-9a-f]{4})}', subchild.text)
                if f859:
                    for x in f859:
                        if x not in ['1300', '1400', '1500', '1600']: # 主角团的成员不需要统计
                            founded.add(x)
    
    return founded

f859_to_filename = dict()

for (root, dirs, files) in os.walk(rootdir):
    for file in files:
        if file.endswith('xml'):
            fpath = os.path.join(root, file)
            for x in  find_f859(fpath):
                if x in f859_to_filename:
                    f859_to_filename[x].append(fpath.split(rootdir)[1])
                else:
                    f859_to_filename[x] = [fpath.split(rootdir)[1]]

f = open("EOU2对话角色列表-f859.txt", mode='w')
import json
dumped = json.dumps(f859_to_filename, indent=4)
f.write(dumped)
f.close()