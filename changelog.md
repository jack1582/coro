== DONE ==
* 2014.8.6 增加调试函数
  为协程分配独立的seq_id作为协程id，便于跟踪协程的运行情况和分配轨迹；
  同时提供内部元素的访问，方便程序看到运行的协程的个数及状态

* 2014.8.6 coredump  bugfixed
  创建协程时，如果终止队列中有元素，取出并创建新线程后，无法加入runnable队列，会出现assert失败。需要对状态重置成0

* 2014.8.6 协程池支持
  增加coro_make_pool() ，可在初使化后立即调用，以提前分配好内存。可用于大并发量的情况下的快速启动进入工作状态。
  demo修改成完全类似线程的开发流程，并在流程中，增加handle_loop的示例，处理如周期扫描等事件
  协程数量的统计有bug，并且，在coro_init中，active_count 和 total_count还没初始化时，就调用了coro_create_impl, 这两处数据被修改了，调整顺序，以避免遗漏了idle_main. 

== TODO ==
* sp等时间均值统计bug

* HOOK系统调用

* 时间计算优化，用汇编rdtsc替代

* 插件化改造，先支持FastCGI插件模块
