#概要

本次可视化设计采用了棒球数据，数据集共1157行，包括的属性有棒球运动员用手习惯（左手\右手\双手），身高（英寸），体重（磅），击球率和全垒得分。本次设计主要分析体重、身高、用手习惯等因素对运动员击球率的影响，可通过点击网页按钮来分类具体的分布情况。


#设计

1.选取分析的属性用手习惯、身高、体重、击球率；
2.通过分析各个属性的分布范围来确定坐标轴的范围，通过python分析数据集得出
击球率的范围为[0,0.33),身高的范围为[65,80],体重[140,245]
3.身高和体重的分布集中在上述范围，并不是从0开始，为了达到更好的可视化效果（将集中分布的数据尽量填充可视区域），横坐标从最小值开始即可无需从0值，对于图表的坐标轴设计采取addCategoryAxis()方法，添加图表标题、坐标轴标题
4.为了区分各个用手习惯和击球率之间的关系，采取三种不同颜色来区分，分别为red，green，blue
5.设置可交互的按钮和下拉列表，按钮有ALL,Left，Right，Both（'全部数据'，'左手'，‘右手’，‘双手’），下拉列表有体重和身高两个选项，用于更改X轴变量
6.收到别人的反馈之后我进行的修改有：
1)增加一个X轴变量，用下拉列表展示；
2)参考别人的优秀作品，优化纵坐标的显示，使得图形显示正确
3)按钮交互从通过筛选数据集后再绘图展示更改为通过设置图形透明度分类展示
7.此次分析的结论有：
1）运动员击球率与棒球选手的体重和身高没有明显的相关关系
2）惯用左手和双手的运动员击球率比惯用右手的运动员稍高（以击球率0.21为分界线），即他们打到球的次数更多
3）击球率在[0.23,0.28]这个区间内分布密集，即大多数运动员的击球率在此范围内
4）用手习惯的人数分布为：右手>左手>双手


#反馈

反馈1：

1）可以通过点击按钮交互，看用手习惯不同的运动员击球率分布；

2）横坐标仅分析了身高变量，可多加体重等变量进行分析；

3）纵坐标的刻度值有重复，使得部分数据显示错误，要改进；

反馈2：

1）点击ALL/Left/Right/Both切换过程中不太顺畅，有卡顿

2）可以看出击球率集中分布的区域

反馈3：

1）可以看到体重、身高对击球率影响不大

2）移动到每个数据点都有详细信息


#资源

1）https://highsounding.github.io/

2）http://blog.csdn.net/Einstellung/article/details/79334571
