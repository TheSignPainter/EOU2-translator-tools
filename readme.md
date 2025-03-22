# 《新·世界树的迷宫2》文本汉化用小工具

## 使用方法
下载dist文件夹中的xml_parser.exe，点击使用。
该工具有两项功能：将原始文件中的{fxxx}控制字符转换为可读的文本（如“[[下一页]]”、“[[speaker: xxx]]”），以及将这些文本转换回控制字符。

转换的文本会存放在.exe同一目录下的./parsed文件夹；转换回的文本则会存放在./reverted文件夹。

**转换回原始格式时，会校验每行的文字数量，大于22个字符时将输出对应的错误信息。译者在翻译时需要手动添加[[换行]]**

## 已完成处理的控制字符

* 说话人（匹配主角团姓名，其余保留原格式）: {f859}->[[speaker: xxx]]
* 字体颜色: {f804}->[[文字？起始]]
* 语音（保留原格式）: {f813}->[[voice: xxxx]]
* 立绘（保留原格式）: {f855}->[[portrait: xxxx]]
* 换行符删除。若在处理后的文本中需要换行，请使用“[[换行]]”
* 换页符：{f801}{f802} -> [[下一页]] 注意，换页符前必定有一个{f801}，因此不需要写成“[[换行]][[下一页]]”这样的格式。
* 为方便阅读，在[[speaker]]和[[下一页]]等控制字符后加入"\n"


## TODO/WIP
* 转换过程中的错误日志输出（尚不完整）