# 这一文件的目的是向你介绍 R 编程语言。
# 我们首先来解开一个小谜题！

# 1. 运行以下代码来创建 vector（向量）'udacious'。
# 你需要选中代码的所有行，然后 Run（运行）代码。
# 你应该会看到 udacious 出现在工作区中。

udacious <- c("Chris Saden", "Lauren Castellano",
              "Sarah Spikes","Dean Eckles",
              "Andy Brown", "Moira Burke",
              "Kunal Chawla")

# 你应该会在 'Environment' 或 'Workspace' 选项卡中看到类似 "chr[1:7]" 的信息，
# 这是因为你创建了一个拥有 7 个名字的 'vector'（向量）
# 每个名字都是 character（字符串）'type'（类型）。
# 形似箭头的 '<-' 符号是 R 中的赋值运算符，
# 类似于其他编程语言中的等号'='。
# c() 是一个组合参数的通用函数，
# 在当前情况下是将人的名字，形成一个向量。

# 'vector'（向量）是 R 中的数据类型之一。向量必须包含
# 相同类型的数据，即其中的条目必须全部是相同的类型
# 比如：character（大多数程序员称这个类型为字符串 string），
# 逻辑类型（TRUE 或 FALSE）或数值类型。

# 通过运行下一行代码输出向量 udacious。

udacious

# 注意输出的前面有数字。
# 每个数字对应于向量中条目的索引。
# Chris Saden 是第一个条目 [1]
# Dean Eckles 是第四个条目 [4]
# Kunal Chawla 是第七个条目 [7]

# 根据你的窗口大小，你可能会在输出中看到
# 不同的数字。

# 另一个有用的提示：你可以将值添加到向量中。
# 一次一行地运行下面的每行代码，看看会发生什么。

numbers <- c(1:10)

numbers

numbers <- c(numbers, 11:20)

numbers

# 2. 将向量 'udacious' 中的 YOUR_NAME 替换为你的实际名字
# 并运行代码。记住一定要用引号括起来。

udacious <- c("Chris Saden", "Lauren Castellano",
              "Sarah Spikes","Dean Eckles",
              "Andy Brown", "Moira Burke",
              "Kunal Chawla", YOUR_NAME)

# 注意 R 如何在工作区更新 'udacious'。
# 现在应该显示为 'chr[1:8]'。

# 3. 运行以下两行代码。你可以选中两行代码并运行它们。

mystery = nchar(udacious)
mystery

# 你刚刚创建了一个名为 mystery 的新向量。
# 你认为在该向量中含有什么？（向下滚动以获得答案）








# Mystery 包含了 Udacious 中每个名字的字符数
# 包括你的名字。

# 4. 运行以下这行代码。

mystery == 11

# 这里我们得到一个逻辑（或布尔）向量
# 它告诉我们向量中的哪些位置或索引包含正好有
# 11 个字符的名字。

# 5.让我们使用布尔向量 mystery 为 udacious 向量划分子集（subset）
# 你认为运行下面的代码行时，结果会是什么？

# 在运行下一行代码之前思考一下输出。
# 请注意代码中的中括号。
# 中括号通常在 R 中用于划分子集

udacious[mystery == 11]

# 向下滚动以获取答案









# 这是你在这门课程的 Udacious 讲师的名字！
# (如果你足够幸运，刚好也有 11 个字符的名字，你可能也会在输出中) 
# 无论怎样，我们都认为你学习这门课程勇气可嘉并值得鼓励。






# 6. 现在把所有谜题放在一边……让我们来深入探索一些数据！
# 在 R 中已经有几个内置的数据集，你可以随意尝试。
# 现在，你将加载其中一个名为 mtcars 的数据集。

# 运行下一行命令来加载 mtcars 数据。

data(mtcars)

# 你应该看到 mtcars 出现在 'Environment' 标签中，后面写着 <Promise>

# mtcars 对象会一直在工作区显示为一个 'Promise' 对象
# 直到我们运行一些使用该对象的代码。

# R 已经将 mtcars 数据存储到类似电子表格的对象中
# 这被称为 data frame（数据框）。运行下一个命令来查看
# 在数据集中有哪些变量，并将数据集完全加载为 R 的对象。
# 在你运行下一行代码时，你应该会看到 <Promise> 消失

# 如果你想要有对 Promise 对象有一份专业的了解，
# 访问 http://cran.r-project.org/doc/manuals/r-release/R-lang.html#Promise-objects 了解更多更容
# 本课程并不强制需要了解 Promise 对象的信息。

names(mtcars)

# names(mtcars) 应该会输出所有在数据集中的变量名字。
# 你可能会注意到汽车的名字不是数据集中的变量。
# 车名已经作为行名称保存。这点稍后再说。

# 你还应该看看有多少在数据框中的观察值 (obs.) 
# 和每一观察值的变量数量。

# 7. 想要获取关于数据集和变量的更多信息
# 运行以下这行代码。

?mtcars

# 你可以在任何命令或数据集前输入'?' 来了解更多详情。
# 细节和文档将显示在 'Help' 标签中。


# 8. 要输出数据，请运行下一行代码。

mtcars

# 在 Console（控制台）中上下滚动查看数据。
# 这是输出的整个数据框。

# 9. 运行以下两个函数，一次一个，
# 看看你是否能弄清楚它们做了什么。

str(mtcars)

dim(mtcars)

# 向下滚动以获得答案。









# 第一个命令 str(mtcars) 提供了数据框结构
# 它列出了变量名称，每个变量的类型
# (所有这些变量都是数字) 和每一变量的一些值。


# 第二个命令, dim(mtcars), 应该在控制台输出 '[1] 32 11'
# [1] 表示 32 在输出中是第一个值。

# R 使用 1 来开始索引(而不是很多其他编程语言中使用的 0 索引)


# 10. 如果你想了解更多，可以阅读 row.names 的文档。
?row.names

# 运行此代码以查看数据框中的当前行名称。
row.names(mtcars)

# 运行此代码将汽车的行名称更改为数字。
row.names(mtcars) <- c(1:32)

# 通过运行下面的代码来输出数据框。
mtcars

# 用正确的汽车名称重新标记我们的数据框会比较冗长
# 让我们重新加载数据集并输出前十行。

data(mtcars)
head(mtcars, 10)

# head() 函数默认输出数据框的前六行
# 运行以下代码来查看。
head(mtcars)

# 我想你会知道这行代码的作用。
tail(mtcars, 3)

# 11. 到目前为止我们已经运行了 9 个命令：
#      c, nchar, data, str, dim, names, row.names, head, 和 tail.
# 所有这些命令都有一些输入或参数。
# 确定一个命令是否需要更多的参数
# 或学习任何默认设置，你可以查阅文档
# 在命令前使用 '?', 就像你之前在学习
# the mtcars 数据集 与 the row.names 时的操作类似。



# 12. 让我们仔细检查我们的汽车数据。我们可以
# 使用符号 '$' 访问数据框中的单个变量 (或列）
# 运行以下代码并输出变量 mpg（英里每加仑）
# 这就是数据框中的 mpg 列。

mtcars$mpg

# 输出任何两个其他变量到控制台。





# 这是一个包含 32 辆车 mpg 信息的向量
# 运行下一行代码来获取所有车的平均 mpg

# 在优达学城的练习页面输入以下代码的运行结果
# https://www.udacity.com/course/viewer#!/c-ud651/l-729069797/e-804129314/m-830829287

mean(mtcars$mpg)



