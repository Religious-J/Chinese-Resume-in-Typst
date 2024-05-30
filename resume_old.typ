#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
// 例如可以使用 VS Code 的全局文本替换功能
#let faAward = icon("icons/fa-award.svg")
#let faBuildingColumns = icon("icons/fa-building-columns.svg")
#let faCode = icon("icons/fa-code.svg")
#let faEnvelope = icon("icons/fa-envelope.svg")
#let faGithub = icon("icons/fa-github.svg")
#let faGraduationCap = icon("icons/fa-graduation-cap.svg")
#let faLinux = icon("icons/fa-linux.svg")
#let faPhone = icon("icons/fa-phone.svg")
#let faWindows = icon("icons/fa-windows.svg")
#let faWrench = icon("icons/fa-wrench.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 9.4pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "1.jpg",
  photographWidth: 6.6em,
  gutterWidth: 2em,
)[

= 姜前辰

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 135-0758-8162"
  ),
  (
    icon: faBuildingColumns,
    content: "福州大学",
  ),
  (
    icon: faGraduationCap,
    content: "计算机科学与技术",
  ),
  (
    icon: faEnvelope,
    content: "1569978990@qq.com",
    link: "mailto:1569978990@qq.com"
  ),
  (
    icon: faGithub,
    content: "github.com/Religious-J",
    link: "https://github.com/Religious-J",
  ),
)

#h(2em)  // 手动顶行, 2em 代表两个字的宽度
我是姜前辰，福州大学计算机与大数据学院 2020 级本科生。曾担任福州大学超级计算团队本科生负责人、福州大学超算队成员，负责实验室的纳新考核、制定学习任务、竞赛训练管理等工作；参与本科生国家级科研立项一项，校级科研立项一项，获得世界大学生超级计算竞赛一等奖等荣誉。熟悉C/C++编程语言，希望能有更多的机会学习新知识并实践想法。
]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 12%)[
 2020.09
 2024.06 
][
  *福州大学* · 计算机与大数据学院 · 计算机科学与技术专业

  GPA: 3.33 / 4 · Rank: 30%
]




== #faCode 项目经历

#item(
  link(
    "",
    [ *DeePMD-Kit 深度势能计算软件性能优化* ]
  ),
  [ *国家级科研立项* ],
  date[ 2022 年 05 月 – 2023 年 05 月 ]
)

#tech[ C++, Python, Cuda, MPI ]

福州大学本科生国家级科研立项：结题优秀

用于加速基于 TensorFlow 框架下的分子动力学模拟软件 DeePMD-Kit 

- 进行相应框架的性能测试、调节模型参数
- 利用 perf 等基于 Linux 性能分析工具寻找程序热点，分析代码结构
- 采用 Cuda 编程进行 GPU 并行加速，进行多节点分布式训练
- 实现算子融合，减少 Launch Kernel 的时间，实现混合精度训练

#item(
  link(
    "https://github.com/Religious-J/IPCC22",
    [ *大数据泛构支撑点选择性能上限的高效计算* ]
  ),
  [ *比赛项目* ],
  date[ 2022 年 06 月 – 2022 年 09 月 ]
)

#tech[ C++, OpenMP, Intel oneAPI ]

对穷举方式树型搜索计算密集型问题进行并行优化

- 利用 Vtune 和 pgrof 工具对基准代码进行热点分析，理清代码结构、明确优化目标
- 对计算密集部分利用OpenMP并行化；进行访存优化，提高cache的命中率
- 实现程序在相同硬件环境、相同编译选项下近150倍的性能提升



== #faCode 实习经历

#item(
  link(
    "http://www.aisi.ac.cn/",
    [ *北京科学智能研究院* ]
  ),
  [ *高性能优化实习生* ],
  date[ 2024 年 03 月 – 2024 年 06 月 ]
)

正在对开源软件ABACUS https://github.com/deepmodeling/abacus-develop 进行热点分析，代码优化

- 设置平台相关的 Benchmark 测试检测容器节点性能
- 对软件的内存方面进行分析，利用 Vtune 软件，动态库打桩等方式绘制程序内存峰值曲线
- 对特定模型做出详尽的内存分析报告，并对内存峰值部分进行优化，有效缓解软件运行时过大的内存开销

实习工作周报链接（可公开部分）：https://ucoyxk075n.feishu.cn/docx/FdfBd3hC7oxf9PxgrWvceDzcncd?from=from_copylink



== #faAward 获奖情况

#item(
  [ *ASC世界大学生超级计算机竞赛* ],
  [ *一等奖* ],
  date[ 2023 年 05 月 ]
)

#item(
  [ *全国大学生数学建模竞赛 福建赛区* ],
  [ *一等奖* ],
  date[ 2022 年 11 月 ]
)

#item(
  [ *IPCC中国国际并行计算挑战赛初赛* ],
  [ *三等奖* ],
  date[ 2022 年 08 月 ]
)

#item(
  [ *蓝桥杯C/C++程序设计 福建赛区* ],
  [ *三等奖* ],
  date[ 2023 年 04 月 ]
)

.



== #faBuildingColumns 学习经历


#item(
  [ *福州大学 ACM算法竞赛暑期集训* ],
  [],
  date[ 2021 年 07 月 – 2021 年 09 月 ]
)

#item(
   [ *福州大学 超算实验室 性能优化组* ],
  [],
  date[ 2021 年 10 月 – 2023 年 08 月 ]
)

#item(
   [ *福州大学 超算实验室 本科生负责人* ],
  [],
  date[ 2022 年 08 月 – 2023 年 08 月 ]
)

#item(
   [ *北京科学智能研究院 高性能优化实习生* ],
  [],
  date[ 2024 年 03 月 – 2023 年 06 月 ]
)







== #faWrench 专业技能

// #sidebar(withLine: false, sideWidth: 12%)[

//   *操作系统*
  
//   *掌握*
  
//   *熟悉*

// ][
//   #v(-0.3em)

//   #faLinux Linux #h(0.5em)
  
//   程序性能优化， MPI、OpenMP 并行编程，Cuda编程
  
//   C/C++
// ]

- 熟悉 #faLinux Linux #h(0.5em)操作系统，掌握常用的程序性能优化手段
- 熟悉哈希、树、图等基础的数据结构和算法
- 有运维与调试超算集群的能力，能够实现 CPU 和 GPU 环境下的编程调优
- 熟悉C/C++，掌握 OpenMP，MPI，Cuda 并行编程

