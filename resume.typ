#import "template.typ": *

// 设置图标, 来源: https://fontawesome.com/icons/
// 如果要修改图标颜色, 请手动修改 svg 文件中的 fill="rgb(38, 38, 125)" 属性
#let faAward = icon("fa-award.svg")
#let faBuildingColumns = icon("fa-building-columns.svg")
#let faCode = icon("fa-code.svg")
#let faEnvelope = icon("fa-envelope.svg")
#let faGithub = icon("fa-github.svg")
#let faGraduationCap = icon("fa-graduation-cap.svg")
#let faLinux = icon("fa-linux.svg")
#let faPhone = icon("fa-phone.svg")
#let faWindows = icon("fa-windows.svg")
#let faWrench = icon("fa-wrench.svg")

// 主题颜色
#let themeColor = rgb(38, 38, 125)

// 设置简历选项与头部
#show: resume.with(
  // 字体基准大小
  size: 10pt,
  // 标题颜色
  themeColor: themeColor,
  // 控制纸张的边距
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  // 如果不需要头像，则将下面的参数注释或删除
  photograph: "lwt.png",
  photographWidth: 10em,
  gutterWidth: 2em,
)[

#[
#set text(size: 1.1em)
= 廖文焘
]

#info(
  color: themeColor,
  (
    // 其实 icon 也可以直接填字符串, 如 "fa-phone.svg" 
    icon: faPhone,
    content: "(+86) 151-0506-0572"
  ),
  (
    icon: faBuildingColumns,
    content: "福州大学",
  ),
  (
    icon: faGraduationCap,
    content: "软件工程",
  ),
  (
    icon: faEnvelope,
    content: "2984502149@qq.com",
    link: "mailto:2984502149@qq.com"
  ),
  (
    icon: faGithub,
    content: "github.com/Clareses",
    link: "https://github.com/Clareses",
  ),
)

#h(1.5em)  // 手动顶行, 2em 代表两个字的宽度
我是廖文焘，现在是福州大学计算机与大数据学院软件工程专业 2020 级本科生。我对计算机中的一切都充满好奇，热爱编程，着迷于设计与实现并发算法，使程序在各种互斥与同步的约束下乱中有序地进行。希望能有更多的机会接触并实践自己的想法，不断提升自我。
]


== #faGraduationCap 教育背景

#sidebar(withLine: true, sideWidth: 7%)[
  2021.09

  至今
][
  *福州大学* · 计算机与大数据学院 · 软件工程专业
  
  GPA: 3.05 / 4 · Rank: 30%
]


== #faWrench 专业技能

#sidebar(withLine: false, sideWidth: 7%)[
  *操作系统*
  
  *掌握*
  
  *熟悉*
][
  #v(-0.25em)
  #faLinux Linux #h(0.5em)
  
  Cuda 异构编程, OpenMP 并行编程, MPI 并行编程, 性能分析
  
  C++, Python, Rust, Dart, scheme
]


== #faAward 获奖情况

#item(
  [ *ASC 世界大学生超级计算机竞赛* ],
  [ *一等奖* ],
  date[ 2024 年 02 月 ]
)

#item(
  [ *福建省大学生人工智能创意赛* ],
  [ *三等奖* ],
  date[ 2023 年 12 月 ]
)

#item(
  [ *全国大学生数学建模大赛省赛* ],
  [ *三等奖*],
  date[ 2023 年 11 月 ]
)

#item(
  [ *校级奖学金* ],
  [ *三等奖* ],
  date[ 2021 年 09 月 ]
)


== #faCode 项目经历

#item(
  link(
    "",
    [ *OpenCAEPoro 性能优化* ]
  ),
  [ *比赛项目* ],
  date[ 2023 年 12 月 – 2024 年 01 月 ]
)

#tech[ MPI, OpenMP, C++, HPC ]

ASC24 超算竞赛赛题，对 OpenCAEPoro 科学模拟软件进行性能优化

- 作为福州大学超算队伍队长带队参赛，负责 OpenCAEPoro 赛题的性能优化
- 使用 perf 等工具进行程序性能分析，对计算瓶颈使用 SIMD / MPI + OpenMP 混编等方式对程序进行并行优化；修改存储结构，提高访存效率
- 在该赛题上取得 1 倍加速比，获得世界总决赛一等奖

#item(
  link(
    "",
    [ *大数据泛构支撑点选择算法并行优化* ]
  ),
  [ *本科生科研训练项目* ],
  date[ 2023 年 05 月 – 2024 年 05 月 ]
)

#tech[ Cuda, 大数据 ]

本科生科研训练项目，使用 cuda 对树型搜索计算密集型问题进行并行优化

- 作为项目负责人，负责指定计划并参与开发
- 使用 cuda 对原算法进行改写，并使用 Nsight 进行性能分析与进一步优化
- 目前已取得 30+ 倍加速比，下一步将整理代码等材料并进行论文撰写

#item(
  link(
    "",
    [ *NJU ICS-PA 计算机体系课程作业* ]
  ),
  [ *课程项目* ],
  date[ 2022 年 06 月 – 2022 年 08 月 ]
)

#item(
  link(
    "",
    [ *MIT 6.828 xv6 OS 源码阅读与注解* ]
  ),
  [ *课程项目* ],
  date[ 2023 年 09 月 – 2022 年 10 月 ]
)

#item(
  link(
    "",
    [ *CMU 15-418 Parallel Computing 课程作业* ]
  ),
  [ *课程项目* ],
  date[ 2022 年 11 月 ]
)

#item(
  link(
    "",
    [ *CMU 15-213 CSAPP 课程作业*]
  ),
  [ *课程项目* ],
  date[ 2022 年 03 月 ]
)


== #faBuildingColumns 校园经历

#item(
  [ *进入福州大学思政办公室担任学生秘书* ],
  [],
  date[ 2020 年 10 月 ]
)

#item(
  [ *加入福州大学服务外包实验室移动组* ],
  [],
  date[ 2020 年 11 月  ]
)

#item(
  [ *加入福州大学超级计算团队* ],
  [],
  date[ 2022 年 09 月]
)

#item(
  [ *担任福州大学超级计算团队本科负责人* ],
  [],
  date[ 2023 年 03 月 ]
)
