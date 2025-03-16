import xml.etree.ElementTree as ET
import tkinter as tk
from tkinter import filedialog
from single_parser import parse_single_entry, parse_single_entry_revert
from checker import check_parsed_entry, check_reverted_entry
import os
from loguru import logger


def process_file(file_path):
    fname = os.path.basename(file_path)
    tree = ET.parse(file_path)

    tree_root = tree.getroot()

    for child in tree_root:
        # print(f"标签名: {child.tag}, 属性: {child.attrib}")
        for subchild in child:
        #     print(f"  子标签名: {subchild.tag}, 文本内容: {subchild.text}")
            if subchild.tag == 'target':
                parsed_text = parse_single_entry(subchild.text)
                chk_result = check_parsed_entry(parsed_text)
                if chk_result:
                    logger.warning(f"ID={child.attrib['id']}的行校验失败: {chk_result}")
                subchild_text = parsed_text
    # 查找特定元素
    for elem in tree_root.iter('item'):  # 查找所有名为'item'的元素
        print(f"找到item元素: {elem.tag}, 属性: {elem.attrib}, 文本内容: {elem.text}")

    # source/target
    os.makedirs('./parsed', exist_ok=True)
    tree.write(f'./parsed/{fname}', encoding='utf-8', xml_declaration=False)

def process_file_revert(file_path):
    fname = os.path.basename(file_path)
    tree = ET.parse(file_path)

    tree_root = tree.getroot()

    for child in tree_root:
        # print(f"标签名: {child.tag}, 属性: {child.attrib}")
        for subchild in child:
        #     print(f"  子标签名: {subchild.tag}, 文本内容: {subchild.text}")
            if subchild.tag == 'target':
                parsed_text = parse_single_entry_revert(subchild.text)
                chk_result = check_reverted_entry(parsed_text)
                if chk_result:
                    logger.warning(f"ID={child.attrib['id']}的行校验失败: {chk_result}")
                subchild_text = parsed_text

    # 查找特定元素
    for elem in tree_root.iter('item'):  # 查找所有名为'item'的元素
        print(f"找到item元素: {elem.tag}, 属性: {elem.attrib}, 文本内容: {elem.text}")

    # source/target
    os.makedirs('./reverted', exist_ok=True)
    tree.write(f'./reverted/{fname}', encoding='utf-8', xml_declaration=False)

def open_file_dialog(method):
    if method == process_file:
        file_paths = filedialog.askopenfilenames(title="选择需要处理为可读文本的文件", filetypes=[("XML files", "*.xml"), ("All files", "*.*")], initialdir=os.path.abspath(os.getcwd()))
    elif method == process_file_revert:
        os.makedirs('./parsed', exist_ok=True)
        file_paths = filedialog.askopenfilenames(title="选择需要处理回源控制符格式{fxxx}的文件", filetypes=[("XML files", "*.xml"), ("All files", "*.*")], initialdir=os.path.join(os.path.abspath(os.getcwd()), 'parsed'))

    for path in file_paths:
        # selected_file_label.config(text=f"Selected File: {path}")
        method(path)
    if file_paths:
        fpaths = '\n'.join(list(file_paths))
        selected_file_label.config(text=f"处理完毕!\n已处理的文件:{fpaths}")

root = tk.Tk()
root.geometry("750x200")
root.title("新树2XML译文转换")

open_button_parse = tk.Button(root, text="预处理控制符", command=lambda: open_file_dialog(process_file))
open_button_parse.pack(padx=20, pady=20)
open_button_revert = tk.Button(root, text="回填控制符", command=lambda: open_file_dialog(process_file_revert))
open_button_revert.pack(padx=20, pady=20)
selected_file_label = tk.Label(root, text="请选择需要处理的文件。\n处理后的文件会被放置在工具目录的./parsed或./reverted文件夹下。")
selected_file_label.pack()

root.mainloop()
