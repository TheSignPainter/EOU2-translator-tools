import sys
import os
import re

def process_xml_file(xml_file):
    # 读取xml文件内容
    with open(xml_file, 'r', encoding='utf-8') as f:
        xml_content = f.read()
        
    # 找到所有<entry>标签的内容及其对应的<entry id="XX">
    entries_with_ids = re.findall(r'<entry id="(.*?)">(.*?)</entry>', xml_content, re.DOTALL)
    
    # 创建同名的txt文件用于保存译文
    txt_file = os.path.splitext(xml_file)[0] + '.txt'
    
    with open(txt_file, 'w', encoding='utf-8') as f:
        # 遍历每个<entry>及其对应的<target>译文
        for entry_id, entry_content in entries_with_ids:
            # 找到当前<entry>标签内的<target>内容
            target_match = re.search(r'<target>(.*?)</target>', entry_content, re.DOTALL)

            if target_match:
                target = target_match.group(1)
            else:
                target = "【空文本】"
                
            # 替换特殊字符
            target = target.replace('{8001}', '')
            target = target.replace('{8754}', 'I')
            target = target.replace('{8755}', 'II')
            target = target.replace('{8756}', 'III')
            target = target.replace('{8757}', 'IV')
            target = target.replace('{8758}', 'V')
            target = target.replace('{f815}{0100}', '[15控制符1]')
            target = target.replace('{f815}{0200}', '[15控制符2]')
            target = target.replace('{f843}{0000}', '[指定角色名]')
            target = target.replace('{f810}{0000}', '[变量10]')
            target = target.replace('{f810}{0100}', '[变量11]')
            target = target.replace('{f810}{0200}', '[变量12]')
            target = target.replace('{f810}{0300}', '[变量13]')
            target = target.replace('{f802}', '[换页]\n\n')
            target = target.replace('{f846}', '[介绍框换行]')
            target = target.replace('{f801}', '\n')
            target = target.replace('{f853}', '[主角名]')
            target = target.replace('{f840}', '[公会名]')
            target = target.replace('{f847}', '[地名]')
            target = target.replace('{f850}', '[任务名]')
            target = target.replace('{f856}', '[莉琪]')
            target = target.replace('{f811}{0000}', '[变量0]')
            target = target.replace('{f811}{0001}', '[变量1]')
            target = target.replace('{f811}{0002}', '[变量2]')
            target = target.replace('{f811}{0003}', '[变量3]')
            target = target.replace('{f811}{0100}', '[变量100]')
            target = target.replace('{f811}{0200}', '[变量200]')
            target = target.replace('{f811}{0300}', '[变量300]')
            target = target.replace('{f811}{0400}', '[变量400]')
            target = target.replace('{f811}{0500}', '[变量500]')
            target = target.replace('{f811}{0600}', '[变量600]')
            target = target.replace('{f811}{0700}', '[变量700]')
            target = target.replace('{f804}{0000}', '[文字白起始]')
            target = target.replace('{f804}{0500}', '[文字黄起始]')
            target = target.replace('{f804}{0300}', '[文字灰起始]')
            target = target.replace('{f804}{0800}', '[颜色8起始]')
            target = target.replace('{f804}{0900}', '[颜色9起始]')
            target = target.replace('{f804}{0200}', '[颜色2起始]')
            target = target.replace('{f804}{0600}', '[颜色6起始]')
            target = target.replace('{f854}{0500}', '[介绍框5]')
            target = target.replace('{f804}{0a00}', '[文字青起始]')
            target = target.replace('{f804}{0d00}', '[颜色d起始]')
            target = target.replace('{f804}{0b00}', '[颜色b起始]')
            target = target.replace('{f815}{0000}', '[道具名]')
            target = re.sub(r'{f841}{(.*?)}', r'[道具名\1]', target)
            target = re.sub(r'{f842}{(.*?)}', r'[魔物名\1]', target)
            target = target.replace('{f848}{0000}', '[怪物名]')
            target = target.replace('{f84a}{0100}', '[数量]')
            target = target.replace('{f848}{0200}', '[掉落素材怪物名]')
            target = target.replace('{f849}{0000}', '[收集物]')
            target = target.replace('{f852}', '[层数]')
            target = target.replace('{f857}', '[公会房间名]')

            # 删除特定格式的文字
            target = re.sub(r'\{f813\}.*?\{0000\}.*?\{0000\}', '', target)
            target = re.sub(r'\{f813\}.*?\{1000\}', '', target)
            target = re.sub(r'\{f858\}.*?\{0000\}', '', target)
            target = re.sub(r'\{f858\}.*?\{0100\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0000\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0100\}', '', target)
            target = re.sub(r'\{f855\}.*?\{1300\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0400\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0200\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0700\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0600\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0300\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0900\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0c00\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0d00\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0500\}', '', target)
            target = re.sub(r'\{f855\}.*?\{1400\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0800\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0b00\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0a00\}', '', target)
            target = re.sub(r'\{f855\}.*?\{1200\}.*?\{1200\}', '', target)
            target = re.sub(r'\{f855\}.*?\{1000\}', '', target)
            target = re.sub(r'\{f855\}.*?\{1100\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0e00\}', '', target)
            target = re.sub(r'\{f855\}.*?\{0f00\}', '', target)

            target = target.replace('{0400}', '')
            target = target.replace('{0500}', '')
            target = target.replace('{0600}', '')
            target = target.replace('{0200}', '')
            target = target.replace('{0300}', '')
            target = target.replace('{0000}', '')
            target = target.replace('{0100}', '')
            target = target.replace('{0800}', '')
            
            # 输出到txt文件
            f.write(f"序号: {entry_id}:\n{target}\n{'-'*30}\n")
    
    print(f"处理完成，译文已导出到 {txt_file}")
    
    # 删除原始XML文件
    os.remove(xml_file)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <xml_file>")
        sys.exit(1)
    xml_file = sys.argv[1]
    process_xml_file(xml_file)
