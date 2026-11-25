; ModuleID = 'master_module'
source_filename = "master_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"String::Str" = type { ptr, i64, i64 }
%"String::View" = type { ptr, i64 }
%"Vector::Vec<char*>" = type { ptr, i32, i32 }
%"Vector::Iterator::It<char*>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::Build::Command>" = type { ptr, i32, i32 }
%"CQB::Build::Command" = type { ptr, ptr, %"Vector::Vec<char*>", ptr, %"Vector::Vec<char*>", %"Vector::Vec<char*>" }
%"Vector::Iterator::It<CQB::Build::Command>" = type { ptr, i32, i32 }
%"CQB::Build::Builder" = type { ptr, %"Vector::Vec<CQB::Build::Command>" }
%"Vector::Vec<CQB::CI::Task*>" = type { ptr, i32, i32 }
%"Vector::Iterator::It<CQB::CI::Task*>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::CI::Step>" = type { ptr, i32, i32 }
%"CQB::CI::Step" = type { ptr, %"Vector::Vec<char*>" }
%"Vector::Iterator::It<CQB::CI::Step>" = type { ptr, i32, i32 }
%"CQB::CI::Task" = type { ptr, %"Vector::Vec<CQB::CI::Step>", %"Vector::Vec<CQB::CI::Task*>", i1 }
%"CQB::CI::Job" = type { %"Vector::Vec<CQB::CI::Task*>", ptr, ptr }
%"Vector::Vec<CQB::Engine::TaskState>" = type { ptr, i32, i32 }
%"CQB::Engine::TaskState" = type { ptr, ptr, ptr, i32, ptr, %"Vector::Vec<char*>", i32, i32 }
%"Vector::Iterator::It<CQB::Engine::TaskState>" = type { ptr, i32, i32 }
%"CQB::Engine::RunResult" = type { i32, ptr }
%"Vector::Vec<bool>" = type { ptr, i32, i32 }
%"Vector::Vec<int>" = type { ptr, i32, i32 }
%"CQB::Engine::Runner" = type { i1, i1, ptr, %"Vector::Vec<CQB::Engine::TaskState>", ptr, %"Vector::Vec<CQB::Build::Command>" }
%sigval = type { [8 x i8] }
%idtype_t = type { i32 }
%timespec = type { i64, i64 }
%posix_spawn_file_actions_t = type { i32, i32, ptr, [16 x i32] }
%"Vector::Iterator::It<int>" = type { ptr, i32, i32 }
%"Vector::Iterator::It<bool>" = type { ptr, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"panic: %s (%s:%d)\0A\00", align 1
@"IO::output" = weak_odr global i32 1
@"String::Str::NOT_FOUND" = weak_odr global i64 -1
@.str.1 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@0 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.2 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@1 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.3 = private constant [2 x i8] c"T\00"
@.str.4 = private constant [2 x i8] c"T\00"
@.str.5 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@2 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.6 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@3 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.7 = private constant [2 x i8] c"T\00"
@.str.8 = private constant [2 x i8] c"T\00"
@.str.9 = private constant [3 x i8] c"-A\00"
@.str.10 = private constant [4 x i8] c"-ad\00"
@.str.11 = private constant [3 x i8] c"-D\00"
@.str.12 = private constant [3 x i8] c"-L\00"
@.str.13 = private constant [3 x i8] c"-l\00"
@.str.14 = private constant [3 x i8] c"-I\00"
@.str.15 = private constant [5 x i8] c"-Wl,\00"
@.str.16 = private constant [3 x i8] c"-W\00"
@.str.17 = private constant [6 x i8] c"-Wno-\00"
@.str.18 = private constant [3 x i8] c"-E\00"
@.str.19 = private constant [10 x i8] c"--c-flags\00"
@.str.20 = private constant [3 x i8] c"qc\00"
@.str.21 = private constant [3 x i8] c"qc\00"
@.str.22 = private constant [4 x i8] c"-oo\00"
@.str.23 = private constant [3 x i8] c"ar\00"
@.str.24 = private constant [4 x i8] c"rcs\00"
@.str.25 = private constant [3 x i8] c"qc\00"
@.str.26 = private constant [9 x i8] c"-dynamic\00"
@.str.27 = private constant [17 x i8] c"qc --translate-c\00"
@.str.28 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@4 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.29 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@5 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.30 = private constant [2 x i8] c"T\00"
@.str.31 = private constant [2 x i8] c"T\00"
@.str.32 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@6 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.33 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@7 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.34 = private constant [2 x i8] c"T\00"
@.str.35 = private constant [2 x i8] c"T\00"
@.str.36 = private constant [5 x i8] c"Task\00"
@.str.37 = private constant [5 x i8] c"Task\00"
@.str.38 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@8 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.39 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@9 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.40 = private constant [2 x i8] c"T\00"
@.str.41 = private constant [2 x i8] c"T\00"
@__environ = external global ptr
@_PC_LINK_MAX = weak_odr global i32 0
@_PC_MAX_CANON = weak_odr global i32 1
@_PC_MAX_INPUT = weak_odr global i32 2
@_PC_NAME_MAX = weak_odr global i32 3
@_PC_PATH_MAX = weak_odr global i32 4
@_PC_PIPE_BUF = weak_odr global i32 5
@_PC_CHOWN_RESTRICTED = weak_odr global i32 6
@_PC_NO_TRUNC = weak_odr global i32 7
@_PC_VDISABLE = weak_odr global i32 8
@_PC_SYNC_IO = weak_odr global i32 9
@_PC_ASYNC_IO = weak_odr global i32 10
@_PC_PRIO_IO = weak_odr global i32 11
@_PC_SOCK_MAXBUF = weak_odr global i32 12
@_PC_FILESIZEBITS = weak_odr global i32 13
@_PC_REC_INCR_XFER_SIZE = weak_odr global i32 14
@_PC_REC_MAX_XFER_SIZE = weak_odr global i32 15
@_PC_REC_MIN_XFER_SIZE = weak_odr global i32 16
@_PC_REC_XFER_ALIGN = weak_odr global i32 17
@_PC_ALLOC_SIZE_MIN = weak_odr global i32 18
@_PC_SYMLINK_MAX = weak_odr global i32 19
@_PC_2_SYMLINKS = weak_odr global i32 20
@_SC_ARG_MAX = weak_odr global i32 0
@_SC_CHILD_MAX = weak_odr global i32 1
@_SC_CLK_TCK = weak_odr global i32 2
@_SC_NGROUPS_MAX = weak_odr global i32 3
@_SC_OPEN_MAX = weak_odr global i32 4
@_SC_STREAM_MAX = weak_odr global i32 5
@_SC_TZNAME_MAX = weak_odr global i32 6
@_SC_JOB_CONTROL = weak_odr global i32 7
@_SC_SAVED_IDS = weak_odr global i32 8
@_SC_REALTIME_SIGNALS = weak_odr global i32 9
@_SC_PRIORITY_SCHEDULING = weak_odr global i32 10
@_SC_TIMERS = weak_odr global i32 11
@_SC_ASYNCHRONOUS_IO = weak_odr global i32 12
@_SC_PRIORITIZED_IO = weak_odr global i32 13
@_SC_SYNCHRONIZED_IO = weak_odr global i32 14
@_SC_FSYNC = weak_odr global i32 15
@_SC_MAPPED_FILES = weak_odr global i32 16
@_SC_MEMLOCK = weak_odr global i32 17
@_SC_MEMLOCK_RANGE = weak_odr global i32 18
@_SC_MEMORY_PROTECTION = weak_odr global i32 19
@_SC_MESSAGE_PASSING = weak_odr global i32 20
@_SC_SEMAPHORES = weak_odr global i32 21
@_SC_SHARED_MEMORY_OBJECTS = weak_odr global i32 22
@_SC_AIO_LISTIO_MAX = weak_odr global i32 23
@_SC_AIO_MAX = weak_odr global i32 24
@_SC_AIO_PRIO_DELTA_MAX = weak_odr global i32 25
@_SC_DELAYTIMER_MAX = weak_odr global i32 26
@_SC_MQ_OPEN_MAX = weak_odr global i32 27
@_SC_MQ_PRIO_MAX = weak_odr global i32 28
@_SC_VERSION = weak_odr global i32 29
@_SC_PAGESIZE = weak_odr global i32 30
@_SC_RTSIG_MAX = weak_odr global i32 31
@_SC_SEM_NSEMS_MAX = weak_odr global i32 32
@_SC_SEM_VALUE_MAX = weak_odr global i32 33
@_SC_SIGQUEUE_MAX = weak_odr global i32 34
@_SC_TIMER_MAX = weak_odr global i32 35
@_SC_BC_BASE_MAX = weak_odr global i32 36
@_SC_BC_DIM_MAX = weak_odr global i32 37
@_SC_BC_SCALE_MAX = weak_odr global i32 38
@_SC_BC_STRING_MAX = weak_odr global i32 39
@_SC_COLL_WEIGHTS_MAX = weak_odr global i32 40
@_SC_EQUIV_CLASS_MAX = weak_odr global i32 41
@_SC_EXPR_NEST_MAX = weak_odr global i32 42
@_SC_LINE_MAX = weak_odr global i32 43
@_SC_RE_DUP_MAX = weak_odr global i32 44
@_SC_CHARCLASS_NAME_MAX = weak_odr global i32 45
@_SC_2_VERSION = weak_odr global i32 46
@_SC_2_C_BIND = weak_odr global i32 47
@_SC_2_C_DEV = weak_odr global i32 48
@_SC_2_FORT_DEV = weak_odr global i32 49
@_SC_2_FORT_RUN = weak_odr global i32 50
@_SC_2_SW_DEV = weak_odr global i32 51
@_SC_2_LOCALEDEF = weak_odr global i32 52
@_SC_PII = weak_odr global i32 53
@_SC_PII_XTI = weak_odr global i32 54
@_SC_PII_SOCKET = weak_odr global i32 55
@_SC_PII_INTERNET = weak_odr global i32 56
@_SC_PII_OSI = weak_odr global i32 57
@_SC_POLL = weak_odr global i32 58
@_SC_SELECT = weak_odr global i32 59
@_SC_UIO_MAXIOV = weak_odr global i32 60
@_SC_IOV_MAX = weak_odr global i32 60
@_SC_PII_INTERNET_STREAM = weak_odr global i32 61
@_SC_PII_INTERNET_DGRAM = weak_odr global i32 62
@_SC_PII_OSI_COTS = weak_odr global i32 63
@_SC_PII_OSI_CLTS = weak_odr global i32 64
@_SC_PII_OSI_M = weak_odr global i32 65
@_SC_T_IOV_MAX = weak_odr global i32 66
@_SC_THREADS = weak_odr global i32 67
@_SC_THREAD_SAFE_FUNCTIONS = weak_odr global i32 68
@_SC_GETGR_R_SIZE_MAX = weak_odr global i32 69
@_SC_GETPW_R_SIZE_MAX = weak_odr global i32 70
@_SC_LOGIN_NAME_MAX = weak_odr global i32 71
@_SC_TTY_NAME_MAX = weak_odr global i32 72
@_SC_THREAD_DESTRUCTOR_ITERATIONS = weak_odr global i32 73
@_SC_THREAD_KEYS_MAX = weak_odr global i32 74
@_SC_THREAD_STACK_MIN = weak_odr global i32 75
@_SC_THREAD_THREADS_MAX = weak_odr global i32 76
@_SC_THREAD_ATTR_STACKADDR = weak_odr global i32 77
@_SC_THREAD_ATTR_STACKSIZE = weak_odr global i32 78
@_SC_THREAD_PRIORITY_SCHEDULING = weak_odr global i32 79
@_SC_THREAD_PRIO_INHERIT = weak_odr global i32 80
@_SC_THREAD_PRIO_PROTECT = weak_odr global i32 81
@_SC_THREAD_PROCESS_SHARED = weak_odr global i32 82
@_SC_NPROCESSORS_CONF = weak_odr global i32 83
@_SC_NPROCESSORS_ONLN = weak_odr global i32 84
@_SC_PHYS_PAGES = weak_odr global i32 85
@_SC_AVPHYS_PAGES = weak_odr global i32 86
@_SC_ATEXIT_MAX = weak_odr global i32 87
@_SC_PASS_MAX = weak_odr global i32 88
@_SC_XOPEN_VERSION = weak_odr global i32 89
@_SC_XOPEN_XCU_VERSION = weak_odr global i32 90
@_SC_XOPEN_UNIX = weak_odr global i32 91
@_SC_XOPEN_CRYPT = weak_odr global i32 92
@_SC_XOPEN_ENH_I18N = weak_odr global i32 93
@_SC_XOPEN_SHM = weak_odr global i32 94
@_SC_2_CHAR_TERM = weak_odr global i32 95
@_SC_2_C_VERSION = weak_odr global i32 96
@_SC_2_UPE = weak_odr global i32 97
@_SC_XOPEN_XPG2 = weak_odr global i32 98
@_SC_XOPEN_XPG3 = weak_odr global i32 99
@_SC_XOPEN_XPG4 = weak_odr global i32 100
@_SC_CHAR_BIT = weak_odr global i32 101
@_SC_CHAR_MAX = weak_odr global i32 102
@_SC_CHAR_MIN = weak_odr global i32 103
@_SC_INT_MAX = weak_odr global i32 104
@_SC_INT_MIN = weak_odr global i32 105
@_SC_LONG_BIT = weak_odr global i32 106
@_SC_WORD_BIT = weak_odr global i32 107
@_SC_MB_LEN_MAX = weak_odr global i32 108
@_SC_NZERO = weak_odr global i32 109
@_SC_SSIZE_MAX = weak_odr global i32 110
@_SC_SCHAR_MAX = weak_odr global i32 111
@_SC_SCHAR_MIN = weak_odr global i32 112
@_SC_SHRT_MAX = weak_odr global i32 113
@_SC_SHRT_MIN = weak_odr global i32 114
@_SC_UCHAR_MAX = weak_odr global i32 115
@_SC_UINT_MAX = weak_odr global i32 116
@_SC_ULONG_MAX = weak_odr global i32 117
@_SC_USHRT_MAX = weak_odr global i32 118
@_SC_NL_ARGMAX = weak_odr global i32 119
@_SC_NL_LANGMAX = weak_odr global i32 120
@_SC_NL_MSGMAX = weak_odr global i32 121
@_SC_NL_NMAX = weak_odr global i32 122
@_SC_NL_SETMAX = weak_odr global i32 123
@_SC_NL_TEXTMAX = weak_odr global i32 124
@_SC_XBS5_ILP32_OFF32 = weak_odr global i32 125
@_SC_XBS5_ILP32_OFFBIG = weak_odr global i32 126
@_SC_XBS5_LP64_OFF64 = weak_odr global i32 127
@_SC_XBS5_LPBIG_OFFBIG = weak_odr global i32 128
@_SC_XOPEN_LEGACY = weak_odr global i32 129
@_SC_XOPEN_REALTIME = weak_odr global i32 130
@_SC_XOPEN_REALTIME_THREADS = weak_odr global i32 131
@_SC_ADVISORY_INFO = weak_odr global i32 132
@_SC_BARRIERS = weak_odr global i32 133
@_SC_BASE = weak_odr global i32 134
@_SC_C_LANG_SUPPORT = weak_odr global i32 135
@_SC_C_LANG_SUPPORT_R = weak_odr global i32 136
@_SC_CLOCK_SELECTION = weak_odr global i32 137
@_SC_CPUTIME = weak_odr global i32 138
@_SC_THREAD_CPUTIME = weak_odr global i32 139
@_SC_DEVICE_IO = weak_odr global i32 140
@_SC_DEVICE_SPECIFIC = weak_odr global i32 141
@_SC_DEVICE_SPECIFIC_R = weak_odr global i32 142
@_SC_FD_MGMT = weak_odr global i32 143
@_SC_FIFO = weak_odr global i32 144
@_SC_PIPE = weak_odr global i32 145
@_SC_FILE_ATTRIBUTES = weak_odr global i32 146
@_SC_FILE_LOCKING = weak_odr global i32 147
@_SC_FILE_SYSTEM = weak_odr global i32 148
@_SC_MONOTONIC_CLOCK = weak_odr global i32 149
@_SC_MULTI_PROCESS = weak_odr global i32 150
@_SC_SINGLE_PROCESS = weak_odr global i32 151
@_SC_NETWORKING = weak_odr global i32 152
@_SC_READER_WRITER_LOCKS = weak_odr global i32 153
@_SC_SPIN_LOCKS = weak_odr global i32 154
@_SC_REGEXP = weak_odr global i32 155
@_SC_REGEX_VERSION = weak_odr global i32 156
@_SC_SHELL = weak_odr global i32 157
@_SC_SIGNALS = weak_odr global i32 158
@_SC_SPAWN = weak_odr global i32 159
@_SC_SPORADIC_SERVER = weak_odr global i32 160
@_SC_THREAD_SPORADIC_SERVER = weak_odr global i32 161
@_SC_SYSTEM_DATABASE = weak_odr global i32 162
@_SC_SYSTEM_DATABASE_R = weak_odr global i32 163
@_SC_TIMEOUTS = weak_odr global i32 164
@_SC_TYPED_MEMORY_OBJECTS = weak_odr global i32 165
@_SC_USER_GROUPS = weak_odr global i32 166
@_SC_USER_GROUPS_R = weak_odr global i32 167
@_SC_2_PBS = weak_odr global i32 168
@_SC_2_PBS_ACCOUNTING = weak_odr global i32 169
@_SC_2_PBS_LOCATE = weak_odr global i32 170
@_SC_2_PBS_MESSAGE = weak_odr global i32 171
@_SC_2_PBS_TRACK = weak_odr global i32 172
@_SC_SYMLOOP_MAX = weak_odr global i32 173
@_SC_STREAMS = weak_odr global i32 174
@_SC_2_PBS_CHECKPOINT = weak_odr global i32 175
@_SC_V6_ILP32_OFF32 = weak_odr global i32 176
@_SC_V6_ILP32_OFFBIG = weak_odr global i32 177
@_SC_V6_LP64_OFF64 = weak_odr global i32 178
@_SC_V6_LPBIG_OFFBIG = weak_odr global i32 179
@_SC_HOST_NAME_MAX = weak_odr global i32 180
@_SC_TRACE = weak_odr global i32 181
@_SC_TRACE_EVENT_FILTER = weak_odr global i32 182
@_SC_TRACE_INHERIT = weak_odr global i32 183
@_SC_TRACE_LOG = weak_odr global i32 184
@_SC_LEVEL1_ICACHE_SIZE = weak_odr global i32 185
@_SC_LEVEL1_ICACHE_ASSOC = weak_odr global i32 186
@_SC_LEVEL1_ICACHE_LINESIZE = weak_odr global i32 187
@_SC_LEVEL1_DCACHE_SIZE = weak_odr global i32 188
@_SC_LEVEL1_DCACHE_ASSOC = weak_odr global i32 189
@_SC_LEVEL1_DCACHE_LINESIZE = weak_odr global i32 190
@_SC_LEVEL2_CACHE_SIZE = weak_odr global i32 191
@_SC_LEVEL2_CACHE_ASSOC = weak_odr global i32 192
@_SC_LEVEL2_CACHE_LINESIZE = weak_odr global i32 193
@_SC_LEVEL3_CACHE_SIZE = weak_odr global i32 194
@_SC_LEVEL3_CACHE_ASSOC = weak_odr global i32 195
@_SC_LEVEL3_CACHE_LINESIZE = weak_odr global i32 196
@_SC_LEVEL4_CACHE_SIZE = weak_odr global i32 197
@_SC_LEVEL4_CACHE_ASSOC = weak_odr global i32 198
@_SC_LEVEL4_CACHE_LINESIZE = weak_odr global i32 199
@_SC_IPV6 = weak_odr global i32 235
@_SC_RAW_SOCKETS = weak_odr global i32 236
@_SC_V7_ILP32_OFF32 = weak_odr global i32 237
@_SC_V7_ILP32_OFFBIG = weak_odr global i32 238
@_SC_V7_LP64_OFF64 = weak_odr global i32 239
@_SC_V7_LPBIG_OFFBIG = weak_odr global i32 240
@_SC_SS_REPL_MAX = weak_odr global i32 241
@_SC_TRACE_EVENT_NAME_MAX = weak_odr global i32 242
@_SC_TRACE_NAME_MAX = weak_odr global i32 243
@_SC_TRACE_SYS_MAX = weak_odr global i32 244
@_SC_TRACE_USER_EVENT_MAX = weak_odr global i32 245
@_SC_XOPEN_STREAMS = weak_odr global i32 246
@_SC_THREAD_ROBUST_PRIO_INHERIT = weak_odr global i32 247
@_SC_THREAD_ROBUST_PRIO_PROTECT = weak_odr global i32 248
@_SC_MINSIGSTKSZ = weak_odr global i32 249
@_SC_SIGSTKSZ = weak_odr global i32 250
@_CS_PATH = weak_odr global i32 0
@_CS_V6_WIDTH_RESTRICTED_ENVS = weak_odr global i32 1
@_CS_GNU_LIBC_VERSION = weak_odr global i32 2
@_CS_GNU_LIBPTHREAD_VERSION = weak_odr global i32 3
@_CS_V5_WIDTH_RESTRICTED_ENVS = weak_odr global i32 4
@_CS_V7_WIDTH_RESTRICTED_ENVS = weak_odr global i32 5
@_CS_LFS_CFLAGS = weak_odr global i32 1000
@_CS_LFS_LDFLAGS = weak_odr global i32 1001
@_CS_LFS_LIBS = weak_odr global i32 1002
@_CS_LFS_LINTFLAGS = weak_odr global i32 1003
@_CS_LFS64_CFLAGS = weak_odr global i32 1004
@_CS_LFS64_LDFLAGS = weak_odr global i32 1005
@_CS_LFS64_LIBS = weak_odr global i32 1006
@_CS_LFS64_LINTFLAGS = weak_odr global i32 1007
@_CS_XBS5_ILP32_OFF32_CFLAGS = weak_odr global i32 1100
@_CS_XBS5_ILP32_OFF32_LDFLAGS = weak_odr global i32 1101
@_CS_XBS5_ILP32_OFF32_LIBS = weak_odr global i32 1102
@_CS_XBS5_ILP32_OFF32_LINTFLAGS = weak_odr global i32 1103
@_CS_XBS5_ILP32_OFFBIG_CFLAGS = weak_odr global i32 1104
@_CS_XBS5_ILP32_OFFBIG_LDFLAGS = weak_odr global i32 1105
@_CS_XBS5_ILP32_OFFBIG_LIBS = weak_odr global i32 1106
@_CS_XBS5_ILP32_OFFBIG_LINTFLAGS = weak_odr global i32 1107
@_CS_XBS5_LP64_OFF64_CFLAGS = weak_odr global i32 1108
@_CS_XBS5_LP64_OFF64_LDFLAGS = weak_odr global i32 1109
@_CS_XBS5_LP64_OFF64_LIBS = weak_odr global i32 1110
@_CS_XBS5_LP64_OFF64_LINTFLAGS = weak_odr global i32 1111
@_CS_XBS5_LPBIG_OFFBIG_CFLAGS = weak_odr global i32 1112
@_CS_XBS5_LPBIG_OFFBIG_LDFLAGS = weak_odr global i32 1113
@_CS_XBS5_LPBIG_OFFBIG_LIBS = weak_odr global i32 1114
@_CS_XBS5_LPBIG_OFFBIG_LINTFLAGS = weak_odr global i32 1115
@_CS_POSIX_V6_ILP32_OFF32_CFLAGS = weak_odr global i32 1116
@_CS_POSIX_V6_ILP32_OFF32_LDFLAGS = weak_odr global i32 1117
@_CS_POSIX_V6_ILP32_OFF32_LIBS = weak_odr global i32 1118
@_CS_POSIX_V6_ILP32_OFF32_LINTFLAGS = weak_odr global i32 1119
@_CS_POSIX_V6_ILP32_OFFBIG_CFLAGS = weak_odr global i32 1120
@_CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS = weak_odr global i32 1121
@_CS_POSIX_V6_ILP32_OFFBIG_LIBS = weak_odr global i32 1122
@_CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS = weak_odr global i32 1123
@_CS_POSIX_V6_LP64_OFF64_CFLAGS = weak_odr global i32 1124
@_CS_POSIX_V6_LP64_OFF64_LDFLAGS = weak_odr global i32 1125
@_CS_POSIX_V6_LP64_OFF64_LIBS = weak_odr global i32 1126
@_CS_POSIX_V6_LP64_OFF64_LINTFLAGS = weak_odr global i32 1127
@_CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS = weak_odr global i32 1128
@_CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS = weak_odr global i32 1129
@_CS_POSIX_V6_LPBIG_OFFBIG_LIBS = weak_odr global i32 1130
@_CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS = weak_odr global i32 1131
@_CS_POSIX_V7_ILP32_OFF32_CFLAGS = weak_odr global i32 1132
@_CS_POSIX_V7_ILP32_OFF32_LDFLAGS = weak_odr global i32 1133
@_CS_POSIX_V7_ILP32_OFF32_LIBS = weak_odr global i32 1134
@_CS_POSIX_V7_ILP32_OFF32_LINTFLAGS = weak_odr global i32 1135
@_CS_POSIX_V7_ILP32_OFFBIG_CFLAGS = weak_odr global i32 1136
@_CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS = weak_odr global i32 1137
@_CS_POSIX_V7_ILP32_OFFBIG_LIBS = weak_odr global i32 1138
@_CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS = weak_odr global i32 1139
@_CS_POSIX_V7_LP64_OFF64_CFLAGS = weak_odr global i32 1140
@_CS_POSIX_V7_LP64_OFF64_LDFLAGS = weak_odr global i32 1141
@_CS_POSIX_V7_LP64_OFF64_LIBS = weak_odr global i32 1142
@_CS_POSIX_V7_LP64_OFF64_LINTFLAGS = weak_odr global i32 1143
@_CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS = weak_odr global i32 1144
@_CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS = weak_odr global i32 1145
@_CS_POSIX_V7_LPBIG_OFFBIG_LIBS = weak_odr global i32 1146
@_CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS = weak_odr global i32 1147
@_CS_V6_ENV = weak_odr global i32 1148
@_CS_V7_ENV = weak_odr global i32 1149
@optarg = external global ptr
@optind = external global i32
@opterr = external global i32
@optopt = external global i32
@SI_ASYNCNL = weak_odr global i32 -60
@SI_DETHREAD = weak_odr global i32 -7
@SI_TKILL = weak_odr global i32 -6
@SI_SIGIO = weak_odr global i32 -5
@SI_ASYNCIO = weak_odr global i32 -4
@SI_MESGQ = weak_odr global i32 -3
@SI_TIMER = weak_odr global i32 -2
@SI_QUEUE = weak_odr global i32 -1
@SI_USER = weak_odr global i32 0
@SI_KERNEL = weak_odr global i32 128
@ILL_ILLOPC = weak_odr global i32 1
@ILL_ILLOPN = weak_odr global i32 2
@ILL_ILLADR = weak_odr global i32 3
@ILL_ILLTRP = weak_odr global i32 4
@ILL_PRVOPC = weak_odr global i32 5
@ILL_PRVREG = weak_odr global i32 6
@ILL_COPROC = weak_odr global i32 7
@ILL_BADSTK = weak_odr global i32 8
@ILL_BADIADDR = weak_odr global i32 9
@FPE_INTDIV = weak_odr global i32 1
@FPE_INTOVF = weak_odr global i32 2
@FPE_FLTDIV = weak_odr global i32 3
@FPE_FLTOVF = weak_odr global i32 4
@FPE_FLTUND = weak_odr global i32 5
@FPE_FLTRES = weak_odr global i32 6
@FPE_FLTINV = weak_odr global i32 7
@FPE_FLTSUB = weak_odr global i32 8
@FPE_FLTUNK = weak_odr global i32 14
@FPE_CONDTRAP = weak_odr global i32 15
@SEGV_MAPERR = weak_odr global i32 1
@SEGV_ACCERR = weak_odr global i32 2
@SEGV_BNDERR = weak_odr global i32 3
@SEGV_PKUERR = weak_odr global i32 4
@SEGV_ACCADI = weak_odr global i32 5
@SEGV_ADIDERR = weak_odr global i32 6
@SEGV_ADIPERR = weak_odr global i32 7
@SEGV_MTEAERR = weak_odr global i32 8
@SEGV_MTESERR = weak_odr global i32 9
@SEGV_CPERR = weak_odr global i32 10
@BUS_ADRALN = weak_odr global i32 1
@BUS_ADRERR = weak_odr global i32 2
@BUS_OBJERR = weak_odr global i32 3
@BUS_MCEERR_AR = weak_odr global i32 4
@BUS_MCEERR_AO = weak_odr global i32 5
@CLD_EXITED = weak_odr global i32 1
@CLD_KILLED = weak_odr global i32 2
@CLD_DUMPED = weak_odr global i32 3
@CLD_TRAPPED = weak_odr global i32 4
@CLD_STOPPED = weak_odr global i32 5
@CLD_CONTINUED = weak_odr global i32 6
@POLL_IN = weak_odr global i32 1
@POLL_OUT = weak_odr global i32 2
@POLL_MSG = weak_odr global i32 3
@POLL_ERR = weak_odr global i32 4
@POLL_PRI = weak_odr global i32 5
@POLL_HUP = weak_odr global i32 6
@SIGEV_SIGNAL = weak_odr global i32 0
@SIGEV_NONE = weak_odr global i32 1
@SIGEV_THREAD = weak_odr global i32 2
@SIGEV_THREAD_ID = weak_odr global i32 4
@SS_ONSTACK = weak_odr global i32 1
@SS_DISABLE = weak_odr global i32 2
@__tzname = external global ptr
@__daylight = external global i32
@__timezone = external global i64
@tzname = external global ptr
@daylight = external global i32
@timezone = external global i64
@.str.42 = private constant [7 x i8] c"[DONE \00"
@.str.43 = private constant [4 x i8] c"%s\0A\00"
@.str.44 = private constant [12 x i8] c"pipe failed\00"
@.str.45 = private constant [18 x i8] c"command not found\00"
@.str.46 = private constant [1 x i8] zeroinitializer
@.str.47 = private constant [6 x i8] c"DONE \00"
@.str.48 = private constant [23 x i8] c"\0D\1B[K%s  %i (%ims) [%s]\00"
@.str.49 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@10 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.50 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@11 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.51 = private constant [2 x i8] c"T\00"
@.str.52 = private constant [2 x i8] c"T\00"
@.str.53 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@12 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.54 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@13 = private unnamed_addr constant [46 x i8] c"/home/luca/.qc/lib/std/collections/vector.hqc\00", align 1
@.str.55 = private constant [2 x i8] c"T\00"
@.str.56 = private constant [2 x i8] c"T\00"
@.str.57 = private constant [47 x i8] c"QC-BUILD: '%s' depends on unknown target '%s'\0A\00"
@.str.58 = private constant [43 x i8] c"QC-BUILD: dependency cycle in build graph\0A\00"
@.str.59 = private constant [3 x i8] c"qc\00"
@.str.60 = private constant [3 x i8] c"-o\00"
@.str.61 = private constant [11 x i8] c"--progress\00"
@.str.62 = private constant [11 x i8] c"--progress\00"
@.str.63 = private constant [2 x i8] c"[\00"
@.str.64 = private constant [2 x i8] c"0\00"
@.str.65 = private constant [2 x i8] c"/\00"
@.str.66 = private constant [2 x i8] c"]\00"
@.str.67 = private constant [5 x i8] c"\0D\1B[K\00"
@.str.68 = private constant [36 x i8] c"[%i/%i] %s ok (%i steps, %i.%03is)\0A\00"
@.str.69 = private constant [26 x i8] c"[%i/%i] %s ok (%i.%03is)\0A\00"
@.str.70 = private constant [29 x i8] c"[%i/%i] %s FAILED (exit %i)\0A\00"
@.str.71 = private constant [40 x i8] c"build finished: %i targets in %i.%03is\0A\00"
@.str.72 = private constant [25 x i8] c"QC-CI: no pipeline root\0A\00"
@.str.73 = private constant [3 x i8] c"ci\00"
@.str.74 = private constant [8 x i8] c"running\00"
@.str.75 = private constant [1 x i8] zeroinitializer
@.str.76 = private constant [8 x i8] c"running\00"
@.str.77 = private constant [1 x i8] zeroinitializer
@.str.78 = private constant [16 x i8] c"QC-CI: [%s] %s\0A\00"
@.str.79 = private constant [1 x i8] zeroinitializer
@.str.80 = private constant [11 x i8] c"QC-CI: %s\0A\00"
@.str.81 = private constant [43 x i8] c"QC-CI: step '%s' failed with exit code %i\0A\00"
@.str.82 = private constant [7 x i8] c"failed\00"
@.str.83 = private constant [8 x i8] c"success\00"

; Function Attrs: cold mustprogress nofree noreturn nounwind sspstrong uwtable
define internal void @__qc_panic(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !9
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1, i32 noundef %2) #22
  tail call void @abort() #23
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @qc_malloc(i64 noundef %0) local_unnamed_addr #3 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @qc_free(ptr noundef captures(none) %0) local_unnamed_addr #5 {
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @qc_realloc(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #26
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @qc_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #3 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #27
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal void @qc_flush() local_unnamed_addr #10 {
  %1 = tail call i32 @fflush(ptr noundef null)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal i32 @qc_powi_i32(i32 noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %13, %6 ], [ 1, %4 ]
  %8 = phi i32 [ %15, %6 ], [ %1, %4 ]
  %9 = phi i32 [ %14, %6 ], [ %0, %4 ]
  %10 = and i32 %8, 1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 1, i32 %9
  %13 = mul nsw i32 %12, %7
  %14 = mul nsw i32 %9, %9
  %15 = lshr i32 %8, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %6, !llvm.loop !12

17:                                               ; preds = %6, %4, %2
  %18 = phi i32 [ 0, %2 ], [ 1, %4 ], [ %13, %6 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal zeroext range(i8 0, 4) i8 @qc_qand(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = or i8 %1, %0
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = icmp ult i8 %0, 2
  %7 = icmp ult i8 %1, 2
  %8 = or i1 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %0, 2
  %11 = icmp eq i8 %1, 2
  %12 = and i1 %10, %11
  %13 = select i1 %12, i8 2, i8 3
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = phi i8 [ 1, %5 ], [ 0, %2 ], [ %13, %9 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal zeroext range(i8 0, 4) i8 @qc_qor(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = icmp eq i8 %0, 0
  %4 = icmp eq i8 %1, 0
  %5 = or i8 %1, %0
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 1
  %9 = and i1 %3, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = icmp eq i8 %1, 2
  %12 = and i1 %3, %11
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %0, 1
  %15 = icmp ult i8 %1, 2
  %16 = and i1 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %0, 2
  %19 = and i1 %18, %4
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = and i1 %18, %11
  %22 = select i1 %21, i8 2, i8 3
  br label %23

23:                                               ; preds = %20, %17, %13, %10, %7, %2
  %24 = phi i8 [ 2, %17 ], [ 0, %2 ], [ 1, %7 ], [ 2, %10 ], [ 1, %13 ], [ %22, %20 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal zeroext range(i8 0, 4) i8 @qc_qxor(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = or i8 %1, %0
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = icmp ult i8 %1, 2
  %7 = icmp ult i8 %0, 2
  %8 = xor i1 %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %0, 2
  %11 = icmp eq i8 %1, 2
  %12 = and i1 %10, %11
  %13 = select i1 %12, i8 1, i8 3
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = phi i8 [ %13, %9 ], [ 0, %2 ], [ 3, %5 ]
  ret i8 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i8 @qc_qnot(i8 noundef zeroext %0) local_unnamed_addr #11 {
  %2 = sub i8 3, %0
  ret i8 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i1 @qc_qand_collapse(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = and i8 %0, 2
  %4 = and i8 %3, %1
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i1 @qc_qor_collapse(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #11 {
  %3 = or i8 %1, %0
  %4 = and i8 %3, 2
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal noundef i32 @qc_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @fileno(ptr noundef nonnull %3) #25
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress sspstrong uwtable
define internal void @qc_close(i32 noundef %0) local_unnamed_addr #12 {
  %2 = tail call i32 @close(i32 noundef %0)
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree sspstrong uwtable
define internal noundef i64 @qc_read(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = tail call i64 @read(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  ret i64 %4
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind sspstrong uwtable
define internal i64 @qc_lseek(i32 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #16 {
  %4 = tail call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef %2) #25
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree sspstrong uwtable
define internal void @qc_write(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #14 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  br label %6

6:                                                ; preds = %10, %4
  %7 = phi i64 [ %5, %4 ], [ %14, %10 ]
  %8 = phi ptr [ %1, %4 ], [ %13, %10 ]
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @write(i32 noundef %0, ptr noundef %8, i64 noundef %7)
  %12 = icmp sgt i64 %11, 0
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 %11
  %14 = sub i64 %7, %11
  br i1 %12, label %6, label %15, !llvm.loop !14

15:                                               ; preds = %10, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree sspstrong uwtable
define internal noundef i64 @qc_write_sized(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #14 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i64 @write(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2)
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i64 [ %6, %5 ], [ -1, %3 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @qc_variadic_is_empty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = icmp sge i32 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @qc_variadic_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !15
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !18
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !19
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [8 x i8], ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = add nsw i32 %3, 1
  store i32 %12, ptr %2, align 4, !tbaa !15
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %14
}

declare !qc.return_types !21 void @"IO::qout"(ptr, ptr)

declare !qc.return_types !22 ptr @"IO::getWord"()

declare !qc.return_types !22 ptr @"IO::getLine"()

declare !qc.return_types !23 void @"String::Str_Str_char*"(ptr, ptr)

declare !qc.return_types !23 void @"String::Str_Str_addr_t_char"(ptr, i64, i8)

declare !qc.return_types !23 void @"String::Str_Str_char*_addr_t"(ptr, ptr, i64)

declare !qc.return_types !24 %"String::Str" @"String::Str_operator=_char*"(ptr, ptr)

declare !qc.return_types !25 i64 @"String::Str_len"(ptr)

declare !qc.return_types !24 %"String::Str" @"String::Str_substr_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !26 %"String::View" @"String::Str_subView_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !25 i64 @"String::Str_find_Str_addr_t"(ptr, %"String::Str", i64)

declare !qc.return_types !27 i1 @"String::Str_contains_Str"(ptr, %"String::Str")

declare !qc.return_types !27 i1 @"String::Str_startsWith_Str"(ptr, %"String::Str")

declare !qc.return_types !27 i1 @"String::Str_endsWith_Str"(ptr, %"String::Str")

declare !qc.return_types !27 i1 @"String::Str_isEmpty"(ptr)

declare !qc.return_types !27 i1 @"String::Str_operator==_Str"(ptr, %"String::Str")

declare !qc.return_types !27 i1 @"String::Str_operator!=_Str"(ptr, %"String::Str")

declare !qc.return_types !27 i1 @"String::Str__eval"(ptr)

declare !qc.return_types !24 %"String::Str" @"String::Str_operator+_char*"(ptr, ptr)

declare !qc.return_types !24 %"String::Str" @"String::Str_operator+=_char*"(ptr, ptr)

declare !qc.return_types !24 %"String::Str" @"String::Str_operator+_Str"(ptr, %"String::Str")

declare !qc.return_types !24 %"String::Str" @"String::Str_operator+=_Str"(ptr, %"String::Str")

declare !qc.return_types !28 ptr @"String::Str_operator[]_addr_t"(ptr, i64)

declare !qc.return_types !21 void @"String::Str__destroy"(ptr)

declare !qc.return_types !21 void @"String::Str_insert_addr_t_Str"(ptr, i64, %"String::Str")

declare !qc.return_types !21 void @"String::Str_erase_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !27 i1 @"String::Str_operator==_char*"(ptr, ptr)

declare !qc.return_types !27 i1 @"String::Str_operator!=_char*"(ptr, ptr)

declare !qc.return_types !27 i1 @"String::Str_toBool"(ptr)

declare !qc.return_types !29 i2 @"String::Str_toQBool"(ptr)

declare !qc.return_types !22 ptr @"String::Str_c_str"(ptr)

define weak_odr void @"Vector::Vec<char*>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 8, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<char*>_push_T"(ptr %0, ptr %1) !qc.return_types !21 {
entry:
  %value = alloca ptr, align 8
  store ptr null, ptr %value, align 8
  store ptr %1, ptr %value, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data6, i32 %size5
  %value7 = load ptr, ptr %value, align 8
  store ptr %value7, ptr %ptr_arr_asi, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<char*>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<char*>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<char*>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<char*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 8, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data9, i32 %i8
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr ptr, ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<char*>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.1, ptr @0, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %inc_deref
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  ret ptr %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr ptr, ptr %data4, i32 %sub
  %ptr_arr_val6 = load ptr, ptr %ptr_arr_addr5, align 8
  ret ptr %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<char*>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.2, ptr @1, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<char*>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %dec
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  ret ptr %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr ptr, ptr %data3, i32 %current_index
  %ptr_arr_val5 = load ptr, ptr %ptr_arr_addr4, align 8
  ret ptr %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<char*>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<char*>" = alloca %"Vector::Iterator::It<char*>", align 8
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<char*>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<char*>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<char*>_inst" = load %"Vector::Iterator::It<char*>", ptr %"temp_Vector::Iterator::It<char*>", align 8
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst"
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<char*>" = alloca %"Vector::Iterator::It<char*>", align 8
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<char*>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<char*>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<char*>_inst" = load %"Vector::Iterator::It<char*>", ptr %"temp_Vector::Iterator::It<char*>", align 8
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst"
}

define weak_odr void @"Vector::Vec<char*>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<char*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<char*>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<char*>", align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<char*>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data6, i32 %i5
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<char*>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 72, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %0, %"CQB::Build::Command" %1) !qc.return_types !21 {
entry:
  %value = alloca %"CQB::Build::Command", align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %value, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" %1, ptr %value, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data6, i32 %size5
  %value7 = load %"CQB::Build::Command", ptr %value, align 8
  store %"CQB::Build::Command" %value7, ptr %ptr_arr_asi, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 72, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data9, i32 %i8
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8
  store %"CQB::Build::Command" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.5, ptr @2, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::Build::Command>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i32 %inc_deref
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8
  ret %"CQB::Build::Command" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr %"CQB::Build::Command", ptr %data4, i32 %sub
  %ptr_arr_val6 = load %"CQB::Build::Command", ptr %ptr_arr_addr5, align 8
  ret %"CQB::Build::Command" %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.6, ptr @3, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::Build::Command>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i32 %dec
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8
  ret %"CQB::Build::Command" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr %"CQB::Build::Command", ptr %data3, i32 %current_index
  %ptr_arr_val5 = load %"CQB::Build::Command", ptr %ptr_arr_addr4, align 8
  ret %"CQB::Build::Command" %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::Build::Command>" = alloca %"Vector::Iterator::It<CQB::Build::Command>", align 8
  store %"Vector::Iterator::It<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<CQB::Build::Command>_inst" = load %"Vector::Iterator::It<CQB::Build::Command>", ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst"
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::Build::Command>" = alloca %"Vector::Iterator::It<CQB::Build::Command>", align 8
  store %"Vector::Iterator::It<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<CQB::Build::Command>_inst" = load %"Vector::Iterator::It<CQB::Build::Command>", ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst"
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::Build::Command>", align 8
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<CQB::Build::Command>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data6, i32 %i5
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8
  store %"CQB::Build::Command" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::Build::Command>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.inline.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

define weak_odr ptr @"CQB::Build::Builder_current_command"(ptr %0) !qc.return_types !35 {
entry:
  %1 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %1)
  %icmpeq = icmp eq i32 %length_result, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %2, %"CQB::Build::Command" zeroinitializer)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %commands_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %length_result1 = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %3)
  %sub = sub i32 %length_result1, 1
  %4 = sext i32 %sub to i64
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %commands_ptr, i64 %4)
  ret ptr %"operator[]_result"
}

define weak_odr void @"CQB::Build::Builder_Builder"(ptr %0) !qc.return_types !23 {
entry:
  %"temp_Vector::Vec<CQB::Build::Command>" = alloca %"Vector::Vec<CQB::Build::Command>", align 8
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::Build::Command>", align 8
  call void @"Vector::Vec<CQB::Build::Command>_Vec"(ptr %"temp_Vector::Vec<CQB::Build::Command>")
  %"Vector::Vec<CQB::Build::Command>_inst" = load %"Vector::Vec<CQB::Build::Command>", ptr %"temp_Vector::Vec<CQB::Build::Command>", align 8
  %commands_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  store %"Vector::Vec<CQB::Build::Command>" %"Vector::Vec<CQB::Build::Command>_inst", ptr %commands_ptr, align 8
  ret void
}

define weak_odr ptr @"CQB::Build::Builder_project_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %name = alloca ptr, align 8
  store ptr null, ptr %name, align 8
  store ptr %1, ptr %name, align 8
  %name1 = load ptr, ptr %name, align 8
  %project_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 0
  store ptr %name1, ptr %project_ptr, align 8
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_alias_char*_char*"(ptr %0, ptr %1, ptr %2) !qc.return_types !36 {
entry:
  %aliasName = alloca ptr, align 8
  %fileName = alloca ptr, align 8
  store ptr null, ptr %fileName, align 8
  store ptr %1, ptr %fileName, align 8
  store ptr null, ptr %aliasName, align 8
  store ptr %2, ptr %aliasName, align 8
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.9)
  %fileName1 = load ptr, ptr %fileName, align 8
  %flag_result2 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %fileName1)
  %aliasName3 = load ptr, ptr %aliasName, align 8
  %flag_result4 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %aliasName3)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_aliasDir_char*_char*"(ptr %0, ptr %1, ptr %2) !qc.return_types !36 {
entry:
  %aliasName = alloca ptr, align 8
  %dirName = alloca ptr, align 8
  store ptr null, ptr %dirName, align 8
  store ptr %1, ptr %dirName, align 8
  store ptr null, ptr %aliasName, align 8
  store ptr %2, ptr %aliasName, align 8
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.10)
  %dirName1 = load ptr, ptr %dirName, align 8
  %flag_result2 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %dirName1)
  %aliasName3 = load ptr, ptr %aliasName, align 8
  %flag_result4 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %aliasName3)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_define_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_define = alloca ptr, align 8
  store ptr null, ptr %to_define, align 8
  store ptr %1, ptr %to_define, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.11)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_define1 = load ptr, ptr %to_define, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_define1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_linkDir_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_link = alloca ptr, align 8
  store ptr null, ptr %to_link, align 8
  store ptr %1, ptr %to_link, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.12)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_link1 = load ptr, ptr %to_link, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_link1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_link_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_link = alloca ptr, align 8
  store ptr null, ptr %to_link, align 8
  store ptr %1, ptr %to_link, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.13)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_link1 = load ptr, ptr %to_link, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_link1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_include_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_inc = alloca ptr, align 8
  store ptr null, ptr %to_inc, align 8
  store ptr %1, ptr %to_inc, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.14)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_inc1 = load ptr, ptr %to_inc, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_inc1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_linkerFlag_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_flag = alloca ptr, align 8
  store ptr null, ptr %to_flag, align 8
  store ptr %1, ptr %to_flag, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.15)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_flag1 = load ptr, ptr %to_flag, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_flag1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_warn_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_warn = alloca ptr, align 8
  store ptr null, ptr %to_warn, align 8
  store ptr %1, ptr %to_warn, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.16)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_warn1 = load ptr, ptr %to_warn, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_warn1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_noWarn_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_warn = alloca ptr, align 8
  store ptr null, ptr %to_warn, align 8
  store ptr %1, ptr %to_warn, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.17)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_warn1 = load ptr, ptr %to_warn, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_warn1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_error_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_error = alloca ptr, align 8
  store ptr null, ptr %to_error, align 8
  store ptr %1, ptr %to_error, align 8
  store %"String::Str" zeroinitializer, ptr %def, align 8
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.18)
  store %"String::Str" zeroinitializer, ptr %toStr, align 8
  %to_error1 = load ptr, ptr %to_error, align 8
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_error1)
  %assign_lhs_val = load %"String::Str", ptr %def, align 8
  %toStr2 = load %"String::Str", ptr %toStr, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2)
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result)
  call void @"String::Str__destroy"(ptr %def)
  call void @"String::Str__destroy"(ptr %toStr)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_cArgs"(ptr %0) !qc.return_types !36 {
entry:
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.19)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addExecutable_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
  store ptr null, ptr %outputName, align 8
  store ptr %1, ptr %outputName, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %outputName1 = load ptr, ptr %outputName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %outputName1, ptr %targetName_ptr, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr @.str.20, ptr %commandBin_ptr, align 8
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8
  %outputName3 = load ptr, ptr %outputName, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addObject_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
  store ptr null, ptr %outputName, align 8
  store ptr %1, ptr %outputName, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %outputName1 = load ptr, ptr %outputName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %outputName1, ptr %targetName_ptr, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr @.str.21, ptr %commandBin_ptr, align 8
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8
  %outputName3 = load ptr, ptr %outputName, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.22)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addStaticLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %objectFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
  store ptr null, ptr %outputName, align 8
  store ptr %1, ptr %outputName, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %objectFiles, align 8
  store %"Vector::Vec<char*>" %2, ptr %objectFiles, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %outputName1 = load ptr, ptr %outputName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %outputName1, ptr %targetName_ptr, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr @.str.23, ptr %commandBin_ptr, align 8
  %objectFiles2 = load %"Vector::Vec<char*>", ptr %objectFiles, align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2
  store %"Vector::Vec<char*>" %objectFiles2, ptr %inputs_ptr, align 8
  %outputName3 = load ptr, ptr %outputName, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.24)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addDynamicLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
  store ptr null, ptr %outputName, align 8
  store ptr %1, ptr %outputName, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %outputName1 = load ptr, ptr %outputName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %outputName1, ptr %targetName_ptr, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr @.str.25, ptr %commandBin_ptr, align 8
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8
  %outputName3 = load ptr, ptr %outputName, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.26)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_targetFlags_Vector::Vec<char*>"(ptr %0, %"Vector::Vec<char*>" %1) !qc.return_types !36 {
entry:
  %"CQB::Build::i" = alloca i64, align 8
  %targetflags = alloca %"Vector::Vec<char*>", align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %targetflags, align 8
  store %"Vector::Vec<char*>" %1, ptr %targetflags, align 8
  store i64 0, ptr %"CQB::Build::i", align 8
  store i64 0, ptr %"CQB::Build::i", align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i64, ptr %"CQB::Build::i", align 8
  %length_result = call i32 @"Vector::Vec<char*>_length"(ptr %targetflags)
  %promote_int = sext i32 %length_result to i64
  %icmplt = icmp slt i64 %i, %promote_int
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0)
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 4
  %i1 = load i64, ptr %"CQB::Build::i", align 8
  %"operator[]_result" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %targetflags, i64 %i1)
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %"operator[]_result")
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i64, ptr %"CQB::Build::i", align 8
  %inc = add i64 %inc_deref, 1
  store i64 %inc, ptr %"CQB::Build::i", align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addCustomCommand_char*_char*_char*"(ptr %0, ptr %1, ptr %2, ptr %3) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %outputArtifact = alloca ptr, align 8
  %commandBin = alloca ptr, align 8
  %targetName = alloca ptr, align 8
  store ptr null, ptr %targetName, align 8
  store ptr %1, ptr %targetName, align 8
  store ptr null, ptr %commandBin, align 8
  store ptr %2, ptr %commandBin, align 8
  store ptr null, ptr %outputArtifact, align 8
  store ptr %3, ptr %outputArtifact, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %targetName1 = load ptr, ptr %targetName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %targetName1, ptr %targetName_ptr, align 8
  %commandBin2 = load ptr, ptr %commandBin, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr %commandBin2, ptr %commandBin_ptr, align 8
  %outputArtifact3 = load ptr, ptr %outputArtifact, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %outputArtifact3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %4 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %4, %"CQB::Build::Command" %cmd4)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %flag = alloca ptr, align 8
  store ptr null, ptr %flag, align 8
  store ptr %1, ptr %flag, align 8
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0)
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 4
  %flag1 = load ptr, ptr %flag, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %flag1)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addCDependency_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !qc.return_types !36 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %cSourceFiles = alloca %"Vector::Vec<char*>", align 8
  %targetName = alloca ptr, align 8
  store ptr null, ptr %targetName, align 8
  store ptr %1, ptr %targetName, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %cSourceFiles, align 8
  store %"Vector::Vec<char*>" %2, ptr %cSourceFiles, align 8
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8
  %targetName1 = load ptr, ptr %targetName, align 8
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0
  store ptr %targetName1, ptr %targetName_ptr, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1
  store ptr @.str.27, ptr %commandBin_ptr, align 8
  %cSourceFiles2 = load %"Vector::Vec<char*>", ptr %cSourceFiles, align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2
  store %"Vector::Vec<char*>" %cSourceFiles2, ptr %inputs_ptr, align 8
  %targetName3 = load ptr, ptr %targetName, align 8
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3
  store ptr %targetName3, ptr %outputArtifact_ptr, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_dependsOn_char*"(ptr %0, ptr %1) !qc.return_types !36 {
entry:
  %dependencyName = alloca ptr, align 8
  store ptr null, ptr %dependencyName, align 8
  store ptr %1, ptr %dependencyName, align 8
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0)
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 5
  %dependencyName1 = load ptr, ptr %dependencyName, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %dependencyName1)
  ret ptr %0
}

define weak_odr %"Vector::Vec<CQB::Build::Command>" @"CQB::Build::Builder_extractGraph"(ptr %0) !qc.return_types !37 {
entry:
  %1 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1
  %commands = load %"Vector::Vec<CQB::Build::Command>", ptr %1, align 8
  ret %"Vector::Vec<CQB::Build::Command>" %commands
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 8, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %0, ptr %1) !qc.return_types !21 {
entry:
  %value = alloca ptr, align 8
  store ptr null, ptr %value, align 8
  store ptr %1, ptr %value, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data6, i32 %size5
  %value7 = load ptr, ptr %value, align 8
  store ptr %value7, ptr %ptr_arr_asi, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Task*>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 8, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data9, i32 %i8
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr ptr, ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.28, ptr @4, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %inc_deref
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  ret ptr %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr ptr, ptr %data4, i32 %sub
  %ptr_arr_val6 = load ptr, ptr %ptr_arr_addr5, align 8
  ret ptr %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.29, ptr @5, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %dec
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  ret ptr %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr ptr, ptr %data3, i32 %current_index
  %ptr_arr_val5 = load ptr, ptr %ptr_arr_addr4, align 8
  ret ptr %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Task*>" = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<CQB::CI::Task*>_inst" = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst"
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Task*>" = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<CQB::CI::Task*>_inst" = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst"
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Task*>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<CQB::CI::Task*>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr ptr, ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr ptr, ptr %data6, i32 %i5
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Task*>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 24, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_push_T"(ptr %0, %"CQB::CI::Step" %1) !qc.return_types !21 {
entry:
  %value = alloca %"CQB::CI::Step", align 8
  store %"CQB::CI::Step" zeroinitializer, ptr %value, align 8
  store %"CQB::CI::Step" %1, ptr %value, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data6, i32 %size5
  %value7 = load %"CQB::CI::Step", ptr %value, align 8
  store %"CQB::CI::Step" %value7, ptr %ptr_arr_asi, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 24, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data9, i32 %i8
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8
  store %"CQB::CI::Step" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.32, ptr @6, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Step>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i32 %inc_deref
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8
  ret %"CQB::CI::Step" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr %"CQB::CI::Step", ptr %data4, i32 %sub
  %ptr_arr_val6 = load %"CQB::CI::Step", ptr %ptr_arr_addr5, align 8
  ret %"CQB::CI::Step" %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.33, ptr @7, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::CI::Step>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i32 %dec
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8
  ret %"CQB::CI::Step" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr %"CQB::CI::Step", ptr %data3, i32 %current_index
  %ptr_arr_val5 = load %"CQB::CI::Step", ptr %ptr_arr_addr4, align 8
  ret %"CQB::CI::Step" %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Step>" = alloca %"Vector::Iterator::It<CQB::CI::Step>", align 8
  store %"Vector::Iterator::It<CQB::CI::Step>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<CQB::CI::Step>_inst" = load %"Vector::Iterator::It<CQB::CI::Step>", ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst"
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Step>" = alloca %"Vector::Iterator::It<CQB::CI::Step>", align 8
  store %"Vector::Iterator::It<CQB::CI::Step>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<CQB::CI::Step>_inst" = load %"Vector::Iterator::It<CQB::CI::Step>", ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst"
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Step>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::CI::Step>", align 8
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<CQB::CI::Step>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data6, i32 %i5
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8
  store %"CQB::CI::Step" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Step>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"CQB::CI::Job_Job_char*_Vector::Vec<Step>"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2) !qc.return_types !23 {
entry:
  %"temp_Vector::Vec<CQB::CI::Task*>" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %"CQB::CI::task" = alloca ptr, align 8
  %steps = alloca %"Vector::Vec<CQB::CI::Step>", align 8
  %name = alloca ptr, align 8
  store ptr null, ptr %name, align 8
  store ptr %1, ptr %name, align 8
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %steps, align 8
  store %"Vector::Vec<CQB::CI::Step>" %2, ptr %steps, align 8
  store ptr null, ptr %"CQB::CI::task", align 8
  %builtin_call = call ptr @qc_malloc(i64 48)
  store ptr %builtin_call, ptr %"CQB::CI::task", align 8
  %task = load ptr, ptr %"CQB::CI::task", align 8
  %name1 = load ptr, ptr %name, align 8
  %3 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %name1, 0
  %steps2 = load %"Vector::Vec<CQB::CI::Step>", ptr %steps, align 8
  %4 = insertvalue %"CQB::CI::Task" %3, %"Vector::Vec<CQB::CI::Step>" %steps2, 1
  store %"CQB::CI::Task" %4, ptr %task, align 8
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>")
  %"Vector::Vec<CQB::CI::Task*>_inst" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8
  %task3 = load ptr, ptr %"CQB::CI::task", align 8
  %next_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task3, i32 0, i32 2
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst", ptr %next_ptr, align 8
  %5 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 0
  %task4 = load ptr, ptr %"CQB::CI::task", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %5, ptr %task4)
  %task5 = load ptr, ptr %"CQB::CI::task", align 8
  %entry_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 1
  store ptr %task5, ptr %entry_ptr, align 8
  %task6 = load ptr, ptr %"CQB::CI::task", align 8
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2
  store ptr %task6, ptr %current_ptr, align 8
  ret void
}

define weak_odr ptr @"CQB::CI::Job_addTask_char*_Vector::Vec<Step>_bool"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2, i1 %3) !qc.return_types !38 {
entry:
  %"CQB::CI::task" = alloca ptr, align 8
  %advance = alloca i1, align 1
  %steps = alloca %"Vector::Vec<CQB::CI::Step>", align 8
  %name = alloca ptr, align 8
  store ptr null, ptr %name, align 8
  store ptr %1, ptr %name, align 8
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %steps, align 8
  store %"Vector::Vec<CQB::CI::Step>" %2, ptr %steps, align 8
  store i1 false, ptr %advance, align 1
  store i1 %3, ptr %advance, align 1
  store ptr null, ptr %"CQB::CI::task", align 8
  %builtin_call = call ptr @qc_malloc(i64 48)
  store ptr %builtin_call, ptr %"CQB::CI::task", align 8
  %task = load ptr, ptr %"CQB::CI::task", align 8
  %name1 = load ptr, ptr %name, align 8
  %4 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %name1, 0
  %steps2 = load %"Vector::Vec<CQB::CI::Step>", ptr %steps, align 8
  %5 = insertvalue %"CQB::CI::Task" %4, %"Vector::Vec<CQB::CI::Step>" %steps2, 1
  store %"CQB::CI::Task" %5, ptr %task, align 8
  %6 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 0
  %task3 = load ptr, ptr %"CQB::CI::task", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %6, ptr %task3)
  %7 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2
  %current = load ptr, ptr %7, align 8
  %8 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %current, i32 0, i32 2
  %task4 = load ptr, ptr %"CQB::CI::task", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %8, ptr %task4)
  %advance5 = load i1, ptr %advance, align 1
  br i1 %advance5, label %then, label %ifcont

then:                                             ; preds = %entry
  %task6 = load ptr, ptr %"CQB::CI::task", align 8
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2
  store ptr %task6, ptr %current_ptr, align 8
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %task7 = load ptr, ptr %"CQB::CI::task", align 8
  ret ptr %task7
}

define weak_odr ptr @"CQB::CI::Job_focus_Task*"(ptr %0, ptr %1) !qc.return_types !39 {
entry:
  %task = alloca ptr, align 8
  store ptr null, ptr %task, align 8
  store ptr %1, ptr %task, align 8
  %task1 = load ptr, ptr %task, align 8
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2
  store ptr %task1, ptr %current_ptr, align 8
  ret ptr %0
}

define weak_odr ptr @"CQB::CI::Job_link_Task*_Task*"(ptr %0, ptr %1, ptr %2) !qc.return_types !39 {
entry:
  %child = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr null, ptr %parent, align 8
  store ptr %1, ptr %parent, align 8
  store ptr null, ptr %child, align 8
  store ptr %2, ptr %child, align 8
  %parent1 = load ptr, ptr %parent, align 8
  %3 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %parent1, i32 0, i32 2
  %child2 = load ptr, ptr %child, align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %3, ptr %child2)
  ret ptr %0
}

define weak_odr ptr @"CQB::CI::Job_getGraphRoot"(ptr %0) !qc.return_types !38 {
entry:
  %1 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 1
  %entry1 = load ptr, ptr %1, align 8
  ret ptr %entry1
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 64, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_push_T"(ptr %0, %"CQB::Engine::TaskState" %1) !qc.return_types !21 {
entry:
  %value = alloca %"CQB::Engine::TaskState", align 8
  store %"CQB::Engine::TaskState" zeroinitializer, ptr %value, align 8
  store %"CQB::Engine::TaskState" %1, ptr %value, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data6, i32 %size5
  %value7 = load %"CQB::Engine::TaskState", ptr %value, align 8
  store %"CQB::Engine::TaskState" %value7, ptr %ptr_arr_asi, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 64, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data9, i32 %i8
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8
  store %"CQB::Engine::TaskState" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.38, ptr @8, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %inc_deref
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8
  ret %"CQB::Engine::TaskState" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr %"CQB::Engine::TaskState", ptr %data4, i32 %sub
  %ptr_arr_val6 = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr5, align 8
  ret %"CQB::Engine::TaskState" %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.39, ptr @9, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %dec
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8
  ret %"CQB::Engine::TaskState" %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr %"CQB::Engine::TaskState", ptr %data3, i32 %current_index
  %ptr_arr_val5 = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr4, align 8
  ret %"CQB::Engine::TaskState" %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::Engine::TaskState>" = alloca %"Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  store %"Vector::Iterator::It<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst" = load %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst"
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<CQB::Engine::TaskState>" = alloca %"Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  store %"Vector::Iterator::It<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst" = load %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst"
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Engine::TaskState>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::Engine::TaskState>", align 8
  store %"Vector::Vec<CQB::Engine::TaskState>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<CQB::Engine::TaskState>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data6, i32 %i5
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8
  store %"CQB::Engine::TaskState" %ptr_arr_val, ptr %ptr_arr_asi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::Engine::TaskState>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr i32 @"CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*"(ptr %0, ptr %1, ptr %2) !qc.return_types !30 {
entry:
  %"CQB::Engine::i" = alloca i32, align 4
  %name = alloca ptr, align 8
  %g = alloca ptr, align 8
  store ptr null, ptr %g, align 8
  store ptr %1, ptr %g, align 8
  store ptr null, ptr %name, align 8
  store ptr %2, ptr %name, align 8
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %3 = load ptr, ptr %g, align 8
  %4 = load ptr, ptr %g, align 8
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %4)
  %icmplt = icmp slt i32 %i, %length_result
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %g, align 8
  %i1 = load i32, ptr %"CQB::Engine::i", align 4
  %6 = sext i32 %i1 to i64
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %5, i64 %6)
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result", i32 0, i32 0
  %targetName = load ptr, ptr %targetName_ptr, align 8
  %name2 = load ptr, ptr %name, align 8
  %ptr_eq = icmp eq ptr %targetName, %name2
  br i1 %ptr_eq, label %then, label %ifcont

for.inc:                                          ; preds = %ifcont
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 -1

then:                                             ; preds = %for.body
  %i3 = load i32, ptr %"CQB::Engine::i", align 4
  ret i32 %i3

ifcont:                                           ; preds = %for.body
  br label %for.inc
}

define weak_odr i32 @"CQB::Engine::Runner_runBuildPipeline_char*"(ptr %0, ptr %1) !qc.return_types !30 {
entry:
  %"CQB::Engine::total" = alloca i64, align 8
  %"CQB::Engine::steps" = alloca i32, align 4
  %"CQB::Engine::ms" = alloca i64, align 8
  %res = alloca %"CQB::Engine::RunResult", align 8
  %"CQB::Engine::t0" = alloca i64, align 8
  %lb = alloca %"String::Str", align 8
  %slash = alloca %"String::Str", align 8
  %num2 = alloca %"String::Str", align 8
  %num = alloca %"String::Str", align 8
  %label = alloca %"String::Str", align 8
  %flag125 = alloca ptr, align 8
  %__foreach_i_flag124 = alloca i32, align 4
  %__iter_flag122 = alloca %"Vector::Iterator::It<char*>", align 8
  %flag108 = alloca ptr, align 8
  %__foreach_i_flag107 = alloca i32, align 4
  %__iter_flag105 = alloca %"Vector::Iterator::It<char*>", align 8
  %"CQB::Engine::hasProgress" = alloca i1, align 1
  %flag = alloca ptr, align 8
  %__foreach_i_flag = alloca i32, align 4
  %__iter_flag = alloca %"Vector::Iterator::It<char*>", align 8
  %input = alloca ptr, align 8
  %__foreach_i_input = alloca i32, align 4
  %__iter_input = alloca %"Vector::Iterator::It<char*>", align 8
  %temp_op_lhs = alloca %"String::Str", align 8
  %"CQB::Engine::isQc" = alloca i1, align 1
  %qc = alloca %"String::Str", align 8
  %arr_lit = alloca [1 x ptr], align 8
  %comm = alloca %"Vector::Vec<char*>", align 8
  %command = alloca %"CQB::Build::Command", align 8
  %"CQB::Engine::k" = alloca i32, align 4
  %"CQB::Engine::totalStart" = alloca i64, align 8
  %"CQB::Engine::tty" = alloca i1, align 1
  %dep46 = alloca ptr, align 8
  %__foreach_i_dep45 = alloca i32, align 4
  %__iter_dep43 = alloca %"Vector::Iterator::It<char*>", align 8
  %"CQB::Engine::j" = alloca i32, align 4
  %"CQB::Engine::i16" = alloca i32, align 4
  %"CQB::Engine::progressed" = alloca i1, align 1
  %dep = alloca ptr, align 8
  %__foreach_i_dep = alloca i32, align 4
  %__iter_dep = alloca %"Vector::Iterator::It<char*>", align 8
  %"CQB::Engine::i" = alloca i32, align 4
  %done = alloca %"Vector::Vec<bool>", align 8
  %remaining = alloca %"Vector::Vec<int>", align 8
  %"CQB::Engine::n" = alloca i32, align 4
  %order = alloca %"Vector::Vec<int>", align 8
  %qc_exe = alloca ptr, align 8
  store ptr null, ptr %qc_exe, align 8
  store ptr %1, ptr %qc_exe, align 8
  store %"Vector::Vec<int>" zeroinitializer, ptr %order, align 8
  call void @"Vector::Vec<int>_Vec"(ptr %order)
  store i32 0, ptr %"CQB::Engine::n", align 4
  %2 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %2)
  store i32 %length_result, ptr %"CQB::Engine::n", align 4
  store %"Vector::Vec<int>" zeroinitializer, ptr %remaining, align 8
  call void @"Vector::Vec<int>_Vec"(ptr %remaining)
  store %"Vector::Vec<bool>" zeroinitializer, ptr %done, align 8
  call void @"Vector::Vec<bool>_Vec"(ptr %done)
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %n = load i32, ptr %"CQB::Engine::n", align 4
  %icmplt = icmp slt i32 %i, %n
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %buildGraph_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %i1 = load i32, ptr %"CQB::Engine::i", align 4
  %3 = sext i32 %i1 to i64
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr, i64 %3)
  %4 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result", i32 0, i32 5
  %length_result2 = call i32 @"Vector::Vec<char*>_length"(ptr %4)
  call void @"Vector::Vec<int>_push_T"(ptr %remaining, i32 %length_result2)
  call void @"Vector::Vec<bool>_push_T"(ptr %done, i1 false)
  %buildGraph_ptr3 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %i4 = load i32, ptr %"CQB::Engine::i", align 4
  %5 = sext i32 %i4 to i64
  %"operator[]_result5" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr3, i64 %5)
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result5", i32 0, i32 5
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_dep, align 8
  %_begin_result = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %dependencies_ptr)
  store %"Vector::Iterator::It<char*>" %_begin_result, ptr %__iter_dep, align 8
  store i32 0, ptr %__foreach_i_dep, align 4
  store ptr null, ptr %dep, align 8
  store i32 0, ptr %__foreach_i_dep, align 4
  br label %foreach.cond

for.inc:                                          ; preds = %foreach.end
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

foreach.cond:                                     ; preds = %ifcont, %for.body
  %_atEnd_result = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_dep)
  br i1 %_atEnd_result, label %foreach.end, label %foreach.body

foreach.body:                                     ; preds = %foreach.cond
  %6 = load %"Vector::Iterator::It<char*>", ptr %__iter_dep, align 8
  %_next_result = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_dep)
  store ptr %_next_result, ptr %dep, align 8
  %buildGraph_ptr6 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %dep7 = load ptr, ptr %dep, align 8
  %indexOf_result = call i32 @"CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*"(ptr %0, ptr %buildGraph_ptr6, ptr %dep7)
  %icmplt8 = icmp slt i32 %indexOf_result, 0
  br i1 %icmplt8, label %then, label %ifcont

foreach.end:                                      ; preds = %foreach.cond
  br label %for.inc

then:                                             ; preds = %foreach.body
  %buildGraph_ptr9 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %i10 = load i32, ptr %"CQB::Engine::i", align 4
  %7 = sext i32 %i10 to i64
  %"operator[]_result11" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr9, i64 %7)
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result11", i32 0, i32 0
  %targetName = load ptr, ptr %targetName_ptr, align 8
  %dep12 = load ptr, ptr %dep, align 8
  %varadics_array = alloca ptr, i32 2, align 8
  %8 = getelementptr ptr, ptr %varadics_array, i32 0
  store ptr %targetName, ptr %8, align 8
  %9 = getelementptr ptr, ptr %varadics_array, i32 1
  store ptr %dep12, ptr %9, align 8
  %variadic_struct = alloca { ptr, i32, i32 }, align 8
  %10 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0
  store ptr %varadics_array, ptr %10, align 8
  %11 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2
  store i32 0, ptr %12, align 4
  call void @"IO::qout"(ptr @.str.57, ptr %variadic_struct)
  call void @"Vector::Vec<int>__destroy"(ptr %order)
  call void @"Vector::Vec<bool>__destroy"(ptr %done)
  call void @"Vector::Vec<int>__destroy"(ptr %remaining)
  ret i32 1

ifcont:                                           ; preds = %foreach.body
  br label %foreach.cond

while.cond:                                       ; preds = %ifcont68, %for.end
  %length_result13 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %n14 = load i32, ptr %"CQB::Engine::n", align 4
  %icmplt15 = icmp slt i32 %length_result13, %n14
  br i1 %icmplt15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i1 false, ptr %"CQB::Engine::progressed", align 1
  store i1 false, ptr %"CQB::Engine::progressed", align 1
  store i32 0, ptr %"CQB::Engine::i16", align 4
  store i32 0, ptr %"CQB::Engine::i16", align 4
  br label %for.cond17

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %"CQB::Engine::tty", align 1
  %calltmp = call i32 @isatty(i32 1)
  %icmpne71 = icmp ne i32 %calltmp, 0
  store i1 %icmpne71, ptr %"CQB::Engine::tty", align 1
  store i64 0, ptr %"CQB::Engine::totalStart", align 8
  %calltmp72 = call i64 @"CQB::Engine::nowMs"()
  store i64 %calltmp72, ptr %"CQB::Engine::totalStart", align 8
  store i32 0, ptr %"CQB::Engine::k", align 4
  store i32 0, ptr %"CQB::Engine::k", align 4
  br label %for.cond73

for.cond17:                                       ; preds = %for.inc19, %while.body
  %i21 = load i32, ptr %"CQB::Engine::i16", align 4
  %n22 = load i32, ptr %"CQB::Engine::n", align 4
  %icmplt23 = icmp slt i32 %i21, %n22
  br i1 %icmplt23, label %for.body18, label %for.end20

for.body18:                                       ; preds = %for.cond17
  %i24 = load i32, ptr %"CQB::Engine::i16", align 4
  %13 = sext i32 %i24 to i64
  %"operator[]_result25" = call ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %done, i64 %13)
  %14 = load i1, ptr %"operator[]_result25", align 1
  br i1 %14, label %or.end, label %or.rhs

for.inc19:                                        ; preds = %for.end36, %then28
  %inc_deref65 = load i32, ptr %"CQB::Engine::i16", align 4
  %inc66 = add i32 %inc_deref65, 1
  store i32 %inc66, ptr %"CQB::Engine::i16", align 4
  br label %for.cond17

for.end20:                                        ; preds = %for.cond17
  %progressed = load i1, ptr %"CQB::Engine::progressed", align 1
  %not = xor i1 %progressed, true
  br i1 %not, label %then67, label %ifcont68

or.rhs:                                           ; preds = %for.body18
  %i26 = load i32, ptr %"CQB::Engine::i16", align 4
  %15 = sext i32 %i26 to i64
  %"operator[]_result27" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %remaining, i64 %15)
  %16 = load i32, ptr %"operator[]_result27", align 4
  %icmpne = icmp ne i32 %16, 0
  br label %or.end

or.end:                                           ; preds = %or.rhs, %for.body18
  %or = phi i1 [ true, %for.body18 ], [ %icmpne, %or.rhs ]
  br i1 %or, label %then28, label %ifcont29

then28:                                           ; preds = %or.end
  br label %for.inc19

ifcont29:                                         ; preds = %or.end
  %i30 = load i32, ptr %"CQB::Engine::i16", align 4
  %17 = sext i32 %i30 to i64
  %"operator[]_result31" = call ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %done, i64 %17)
  store i1 true, ptr %"operator[]_result31", align 1
  %i32 = load i32, ptr %"CQB::Engine::i16", align 4
  call void @"Vector::Vec<int>_push_T"(ptr %order, i32 %i32)
  store i1 true, ptr %"CQB::Engine::progressed", align 1
  store i32 0, ptr %"CQB::Engine::j", align 4
  store i32 0, ptr %"CQB::Engine::j", align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc35, %ifcont29
  %j = load i32, ptr %"CQB::Engine::j", align 4
  %n37 = load i32, ptr %"CQB::Engine::n", align 4
  %icmplt38 = icmp slt i32 %j, %n37
  br i1 %icmplt38, label %for.body34, label %for.end36

for.body34:                                       ; preds = %for.cond33
  %buildGraph_ptr39 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %j40 = load i32, ptr %"CQB::Engine::j", align 4
  %18 = sext i32 %j40 to i64
  %"operator[]_result41" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr39, i64 %18)
  %dependencies_ptr42 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result41", i32 0, i32 5
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_dep43, align 8
  %_begin_result44 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %dependencies_ptr42)
  store %"Vector::Iterator::It<char*>" %_begin_result44, ptr %__iter_dep43, align 8
  store i32 0, ptr %__foreach_i_dep45, align 4
  store ptr null, ptr %dep46, align 8
  store i32 0, ptr %__foreach_i_dep45, align 4
  br label %foreach.cond47

for.inc35:                                        ; preds = %foreach.end49
  %inc_deref63 = load i32, ptr %"CQB::Engine::j", align 4
  %inc64 = add i32 %inc_deref63, 1
  store i32 %inc64, ptr %"CQB::Engine::j", align 4
  br label %for.cond33

for.end36:                                        ; preds = %for.cond33
  br label %for.inc19

foreach.cond47:                                   ; preds = %ifcont59, %for.body34
  %_atEnd_result50 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_dep43)
  br i1 %_atEnd_result50, label %foreach.end49, label %foreach.body48

foreach.body48:                                   ; preds = %foreach.cond47
  %19 = load %"Vector::Iterator::It<char*>", ptr %__iter_dep43, align 8
  %_next_result51 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_dep43)
  store ptr %_next_result51, ptr %dep46, align 8
  %dep52 = load ptr, ptr %dep46, align 8
  %buildGraph_ptr53 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %i54 = load i32, ptr %"CQB::Engine::i16", align 4
  %20 = sext i32 %i54 to i64
  %"operator[]_result55" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr53, i64 %20)
  %targetName_ptr56 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result55", i32 0, i32 0
  %targetName57 = load ptr, ptr %targetName_ptr56, align 8
  %ptr_eq = icmp eq ptr %dep52, %targetName57
  br i1 %ptr_eq, label %then58, label %ifcont59

foreach.end49:                                    ; preds = %foreach.cond47
  br label %for.inc35

then58:                                           ; preds = %foreach.body48
  %j60 = load i32, ptr %"CQB::Engine::j", align 4
  %21 = sext i32 %j60 to i64
  %"operator[]_result61" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %remaining, i64 %21)
  %inc_deref62 = load i32, ptr %"operator[]_result61", align 4
  %dec = sub i32 %inc_deref62, 1
  store i32 %dec, ptr %"operator[]_result61", align 4
  br label %ifcont59

ifcont59:                                         ; preds = %then58, %foreach.body48
  br label %foreach.cond47

then67:                                           ; preds = %for.end20
  %varadics_array69 = alloca ptr, i32 0, align 8
  %variadic_struct70 = alloca { ptr, i32, i32 }, align 8
  %22 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 0
  store ptr %varadics_array69, ptr %22, align 8
  %23 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 1
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 2
  store i32 0, ptr %24, align 4
  call void @"IO::qout"(ptr @.str.58, ptr %variadic_struct70)
  call void @"Vector::Vec<int>__destroy"(ptr %order)
  call void @"Vector::Vec<bool>__destroy"(ptr %done)
  call void @"Vector::Vec<int>__destroy"(ptr %remaining)
  ret i32 2

ifcont68:                                         ; preds = %for.end20
  br label %while.cond

for.cond73:                                       ; preds = %for.inc75, %while.end
  %k = load i32, ptr %"CQB::Engine::k", align 4
  %length_result77 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %icmplt78 = icmp slt i32 %k, %length_result77
  br i1 %icmplt78, label %for.body74, label %for.end76

for.body74:                                       ; preds = %for.cond73
  %buildGraph_ptr79 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  %k80 = load i32, ptr %"CQB::Engine::k", align 4
  %25 = sext i32 %k80 to i64
  %"operator[]_result81" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %order, i64 %25)
  %26 = load i64, ptr %"operator[]_result81", align 8
  %"operator[]_result82" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr79, i64 %26)
  call void @llvm.memset.inline.p0.i64(ptr align 8 %command, i8 0, i64 72, i1 false)
  %strip_ref = load %"CQB::Build::Command", ptr %"operator[]_result82", align 8
  store %"CQB::Build::Command" %strip_ref, ptr %command, align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %comm, align 8
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 1
  %commandBin = load ptr, ptr %commandBin_ptr, align 8
  store [1 x ptr] zeroinitializer, ptr %arr_lit, align 8
  %arr_elem_ptr = getelementptr inbounds [1 x ptr], ptr %arr_lit, i32 0, i32 0
  store ptr %commandBin, ptr %arr_elem_ptr, align 8
  %decayptr = getelementptr inbounds [1 x ptr], ptr %arr_lit, i32 0, i32 0
  call void @"Vector::Vec<char*>_operator[]=_T*_addr_t"(ptr %comm, ptr %decayptr, i64 1)
  store %"String::Str" zeroinitializer, ptr %qc, align 8
  %"operator[]_result83" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %comm, i64 0)
  %strip_ref84 = load ptr, ptr %"operator[]_result83", align 8
  call void @"String::Str_Str_char*"(ptr %qc, ptr %strip_ref84)
  store i1 false, ptr %"CQB::Engine::isQc", align 1
  %qc85 = load %"String::Str", ptr %qc, align 8
  store %"String::Str" zeroinitializer, ptr %temp_op_lhs, align 8
  store %"String::Str" %qc85, ptr %temp_op_lhs, align 8
  %op_result = call i1 @"String::Str_operator==_char*"(ptr %temp_op_lhs, ptr @.str.59)
  store i1 %op_result, ptr %"CQB::Engine::isQc", align 1
  %isQc = load i1, ptr %"CQB::Engine::isQc", align 1
  br i1 %isQc, label %then86, label %else

for.inc75:                                        ; preds = %ifcont155
  %inc_deref207 = load i32, ptr %"CQB::Engine::k", align 4
  %inc208 = add i32 %inc_deref207, 1
  store i32 %inc208, ptr %"CQB::Engine::k", align 4
  br label %for.cond73

for.end76:                                        ; preds = %for.cond73
  store i64 0, ptr %"CQB::Engine::total", align 8
  %calltmp209 = call i64 @"CQB::Engine::nowMs"()
  %totalStart = load i64, ptr %"CQB::Engine::totalStart", align 8
  %sub210 = sub i64 %calltmp209, %totalStart
  store i64 %sub210, ptr %"CQB::Engine::total", align 8
  %length_result211 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %total = load i64, ptr %"CQB::Engine::total", align 8
  %sdiv212 = sdiv i64 %total, 1000
  %total213 = load i64, ptr %"CQB::Engine::total", align 8
  %srem214 = srem i64 %total213, 1000
  %varadics_array215 = alloca ptr, i32 3, align 8
  %27 = getelementptr ptr, ptr %varadics_array215, i32 0
  %vararg_int_to_ptr216 = inttoptr i32 %length_result211 to ptr
  store ptr %vararg_int_to_ptr216, ptr %27, align 8
  %28 = getelementptr ptr, ptr %varadics_array215, i32 1
  %vararg_int_to_ptr217 = inttoptr i64 %sdiv212 to ptr
  store ptr %vararg_int_to_ptr217, ptr %28, align 8
  %29 = getelementptr ptr, ptr %varadics_array215, i32 2
  %vararg_int_to_ptr218 = inttoptr i64 %srem214 to ptr
  store ptr %vararg_int_to_ptr218, ptr %29, align 8
  %variadic_struct219 = alloca { ptr, i32, i32 }, align 8
  %30 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct219, i32 0, i32 0
  store ptr %varadics_array215, ptr %30, align 8
  %31 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct219, i32 0, i32 1
  store i32 3, ptr %31, align 4
  %32 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct219, i32 0, i32 2
  store i32 0, ptr %32, align 4
  call void @"IO::qout"(ptr @.str.71, ptr %variadic_struct219)
  %buildDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 1
  store i1 true, ptr %buildDone_ptr, align 1
  call void @"Vector::Vec<int>__destroy"(ptr %order)
  call void @"Vector::Vec<bool>__destroy"(ptr %done)
  call void @"Vector::Vec<int>__destroy"(ptr %remaining)
  ret i32 0

then86:                                           ; preds = %for.body74
  %"operator[]_result88" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %comm, i64 0)
  %qc_exe89 = load ptr, ptr %qc_exe, align 8
  store ptr %qc_exe89, ptr %"operator[]_result88", align 8
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 2
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_input, align 8
  %_begin_result90 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %inputs_ptr)
  store %"Vector::Iterator::It<char*>" %_begin_result90, ptr %__iter_input, align 8
  store i32 0, ptr %__foreach_i_input, align 4
  store ptr null, ptr %input, align 8
  store i32 0, ptr %__foreach_i_input, align 4
  br label %foreach.cond91

ifcont87:                                         ; preds = %foreach.end128, %ifcont120
  call void @"String::Str__destroy"(ptr %qc)
  store %"String::Str" zeroinitializer, ptr %label, align 8
  call void @"String::Str_Str_char*"(ptr %label, ptr @.str.63)
  store %"String::Str" zeroinitializer, ptr %num, align 8
  %k132 = load i32, ptr %"CQB::Engine::k", align 4
  %add = add i32 %k132, 1
  %33 = call %"String::Str" @"String::toStr<int>"(i32 %add)
  store %"String::Str" %33, ptr %num, align 8
  store %"String::Str" zeroinitializer, ptr %num2, align 8
  %length_result133 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %34 = call %"String::Str" @"String::toStr<int>"(i32 %length_result133)
  store %"String::Str" %34, ptr %num2, align 8
  %assign_lhs_val = load %"String::Str", ptr %label, align 8
  %num134 = load %"String::Str", ptr %num, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %num134)
  store %"String::Str" zeroinitializer, ptr %slash, align 8
  call void @"String::Str_Str_char*"(ptr %slash, ptr @.str.65)
  %assign_lhs_val135 = load %"String::Str", ptr %label, align 8
  %slash136 = load %"String::Str", ptr %slash, align 8
  %op_assign_tmp137 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %slash136)
  %assign_lhs_val138 = load %"String::Str", ptr %label, align 8
  %num2139 = load %"String::Str", ptr %num2, align 8
  %op_assign_tmp140 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %num2139)
  store %"String::Str" zeroinitializer, ptr %lb, align 8
  call void @"String::Str_Str_char*"(ptr %lb, ptr @.str.66)
  %assign_lhs_val141 = load %"String::Str", ptr %label, align 8
  %lb142 = load %"String::Str", ptr %lb, align 8
  %op_assign_tmp143 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %lb142)
  store i64 0, ptr %"CQB::Engine::t0", align 8
  %calltmp144 = call i64 @"CQB::Engine::nowMs"()
  store i64 %calltmp144, ptr %"CQB::Engine::t0", align 8
  %comm145 = load %"Vector::Vec<char*>", ptr %comm, align 8
  %c_str_result = call ptr @"String::Str_c_str"(ptr %label)
  %tty = load i1, ptr %"CQB::Engine::tty", align 1
  %calltmp146 = call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %comm145, ptr %c_str_result, i1 %tty)
  store %"CQB::Engine::RunResult" zeroinitializer, ptr %res, align 8
  store %"CQB::Engine::RunResult" %calltmp146, ptr %res, align 8
  store i64 0, ptr %"CQB::Engine::ms", align 8
  %calltmp147 = call i64 @"CQB::Engine::nowMs"()
  %t0 = load i64, ptr %"CQB::Engine::t0", align 8
  %sub = sub i64 %calltmp147, %t0
  store i64 %sub, ptr %"CQB::Engine::ms", align 8
  call void @"Vector::Vec<char*>__destroy"(ptr %comm)
  %tty148 = load i1, ptr %"CQB::Engine::tty", align 1
  br i1 %tty148, label %then149, label %ifcont150

else:                                             ; preds = %for.body74
  %flags_ptr121 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag122, align 8
  %_begin_result123 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr121)
  store %"Vector::Iterator::It<char*>" %_begin_result123, ptr %__iter_flag122, align 8
  store i32 0, ptr %__foreach_i_flag124, align 4
  store ptr null, ptr %flag125, align 8
  store i32 0, ptr %__foreach_i_flag124, align 4
  br label %foreach.cond126

foreach.cond91:                                   ; preds = %foreach.body92, %then86
  %_atEnd_result94 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_input)
  br i1 %_atEnd_result94, label %foreach.end93, label %foreach.body92

foreach.body92:                                   ; preds = %foreach.cond91
  %35 = load %"Vector::Iterator::It<char*>", ptr %__iter_input, align 8
  %_next_result95 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_input)
  store ptr %_next_result95, ptr %input, align 8
  %input96 = load ptr, ptr %input, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %input96)
  br label %foreach.cond91

foreach.end93:                                    ; preds = %foreach.cond91
  %flags_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag, align 8
  %_begin_result97 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr)
  store %"Vector::Iterator::It<char*>" %_begin_result97, ptr %__iter_flag, align 8
  store i32 0, ptr %__foreach_i_flag, align 4
  store ptr null, ptr %flag, align 8
  store i32 0, ptr %__foreach_i_flag, align 4
  br label %foreach.cond98

foreach.cond98:                                   ; preds = %foreach.body99, %foreach.end93
  %_atEnd_result101 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag)
  br i1 %_atEnd_result101, label %foreach.end100, label %foreach.body99

foreach.body99:                                   ; preds = %foreach.cond98
  %36 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag, align 8
  %_next_result102 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag)
  store ptr %_next_result102, ptr %flag, align 8
  %flag103 = load ptr, ptr %flag, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %flag103)
  br label %foreach.cond98

foreach.end100:                                   ; preds = %foreach.cond98
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr @.str.60)
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 3
  %outputArtifact = load ptr, ptr %outputArtifact_ptr, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %outputArtifact)
  store i1 false, ptr %"CQB::Engine::hasProgress", align 1
  store i1 false, ptr %"CQB::Engine::hasProgress", align 1
  %flags_ptr104 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag105, align 8
  %_begin_result106 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr104)
  store %"Vector::Iterator::It<char*>" %_begin_result106, ptr %__iter_flag105, align 8
  store i32 0, ptr %__foreach_i_flag107, align 4
  store ptr null, ptr %flag108, align 8
  store i32 0, ptr %__foreach_i_flag107, align 4
  br label %foreach.cond109

foreach.cond109:                                  ; preds = %ifcont117, %foreach.end100
  %_atEnd_result112 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag105)
  br i1 %_atEnd_result112, label %foreach.end111, label %foreach.body110

foreach.body110:                                  ; preds = %foreach.cond109
  %37 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag105, align 8
  %_next_result113 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag105)
  store ptr %_next_result113, ptr %flag108, align 8
  %flag114 = load ptr, ptr %flag108, align 8
  %ptr_eq115 = icmp eq ptr %flag114, @.str.61
  br i1 %ptr_eq115, label %then116, label %ifcont117

foreach.end111:                                   ; preds = %foreach.cond109
  %hasProgress = load i1, ptr %"CQB::Engine::hasProgress", align 1
  %not118 = xor i1 %hasProgress, true
  br i1 %not118, label %then119, label %ifcont120

then116:                                          ; preds = %foreach.body110
  store i1 true, ptr %"CQB::Engine::hasProgress", align 1
  br label %ifcont117

ifcont117:                                        ; preds = %then116, %foreach.body110
  br label %foreach.cond109

then119:                                          ; preds = %foreach.end111
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr @.str.62)
  br label %ifcont120

ifcont120:                                        ; preds = %then119, %foreach.end111
  br label %ifcont87

foreach.cond126:                                  ; preds = %foreach.body127, %else
  %_atEnd_result129 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag122)
  br i1 %_atEnd_result129, label %foreach.end128, label %foreach.body127

foreach.body127:                                  ; preds = %foreach.cond126
  %38 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag122, align 8
  %_next_result130 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag122)
  store ptr %_next_result130, ptr %flag125, align 8
  %flag131 = load ptr, ptr %flag125, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %flag131)
  br label %foreach.cond126

foreach.end128:                                   ; preds = %foreach.cond126
  br label %ifcont87

then149:                                          ; preds = %ifcont87
  %varadics_array151 = alloca ptr, i32 0, align 8
  %variadic_struct152 = alloca { ptr, i32, i32 }, align 8
  %39 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 0
  store ptr %varadics_array151, ptr %39, align 8
  %40 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 1
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 2
  store i32 0, ptr %41, align 4
  call void @"IO::qout"(ptr @.str.67, ptr %variadic_struct152)
  %calltmp153 = call i32 @fflush(ptr null)
  br label %ifcont150

ifcont150:                                        ; preds = %then149, %ifcont87
  %exitCode_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0
  %exitCode = load i32, ptr %exitCode_ptr, align 4
  %icmpeq = icmp eq i32 %exitCode, 0
  br i1 %icmpeq, label %then154, label %else156

then154:                                          ; preds = %ifcont150
  store i32 0, ptr %"CQB::Engine::steps", align 4
  %output_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output = load ptr, ptr %output_ptr, align 8
  %calltmp157 = call i32 @"CQB::Engine::countDone"(ptr %output)
  store i32 %calltmp157, ptr %"CQB::Engine::steps", align 4
  %steps = load i32, ptr %"CQB::Engine::steps", align 4
  %icmpgt = icmp sgt i32 %steps, 0
  br i1 %icmpgt, label %then158, label %else160

ifcont155:                                        ; preds = %ifcont159
  %output_ptr205 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output206 = load ptr, ptr %output_ptr205, align 8
  call void @qc_free(ptr %output206)
  call void @"String::Str__destroy"(ptr %lb)
  call void @"String::Str__destroy"(ptr %slash)
  call void @"String::Str__destroy"(ptr %num2)
  call void @"String::Str__destroy"(ptr %num)
  call void @"String::Str__destroy"(ptr %label)
  br label %for.inc75

else156:                                          ; preds = %ifcont150
  %k189 = load i32, ptr %"CQB::Engine::k", align 4
  %add190 = add i32 %k189, 1
  %length_result191 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %targetName_ptr192 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0
  %targetName193 = load ptr, ptr %targetName_ptr192, align 8
  %exitCode_ptr194 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0
  %exitCode195 = load i32, ptr %exitCode_ptr194, align 4
  %varadics_array196 = alloca ptr, i32 4, align 8
  %42 = getelementptr ptr, ptr %varadics_array196, i32 0
  %vararg_int_to_ptr197 = inttoptr i32 %add190 to ptr
  store ptr %vararg_int_to_ptr197, ptr %42, align 8
  %43 = getelementptr ptr, ptr %varadics_array196, i32 1
  %vararg_int_to_ptr198 = inttoptr i32 %length_result191 to ptr
  store ptr %vararg_int_to_ptr198, ptr %43, align 8
  %44 = getelementptr ptr, ptr %varadics_array196, i32 2
  store ptr %targetName193, ptr %44, align 8
  %45 = getelementptr ptr, ptr %varadics_array196, i32 3
  %vararg_int_to_ptr199 = inttoptr i32 %exitCode195 to ptr
  store ptr %vararg_int_to_ptr199, ptr %45, align 8
  %variadic_struct200 = alloca { ptr, i32, i32 }, align 8
  %46 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct200, i32 0, i32 0
  store ptr %varadics_array196, ptr %46, align 8
  %47 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct200, i32 0, i32 1
  store i32 4, ptr %47, align 4
  %48 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct200, i32 0, i32 2
  store i32 0, ptr %48, align 4
  call void @"IO::qout"(ptr @.str.70, ptr %variadic_struct200)
  %output_ptr201 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output202 = load ptr, ptr %output_ptr201, align 8
  call void @"CQB::Engine::printWithoutProgress"(ptr %output202)
  call void @"String::Str__destroy"(ptr %lb)
  call void @"String::Str__destroy"(ptr %slash)
  call void @"String::Str__destroy"(ptr %num2)
  call void @"String::Str__destroy"(ptr %num)
  call void @"String::Str__destroy"(ptr %label)
  call void @"Vector::Vec<int>__destroy"(ptr %order)
  call void @"Vector::Vec<bool>__destroy"(ptr %done)
  call void @"Vector::Vec<int>__destroy"(ptr %remaining)
  %exitCode_ptr203 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0
  %exitCode204 = load i32, ptr %exitCode_ptr203, align 4
  ret i32 %exitCode204

then158:                                          ; preds = %then154
  %k161 = load i32, ptr %"CQB::Engine::k", align 4
  %add162 = add i32 %k161, 1
  %length_result163 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %targetName_ptr164 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0
  %targetName165 = load ptr, ptr %targetName_ptr164, align 8
  %steps166 = load i32, ptr %"CQB::Engine::steps", align 4
  %ms = load i64, ptr %"CQB::Engine::ms", align 8
  %sdiv = sdiv i64 %ms, 1000
  %ms167 = load i64, ptr %"CQB::Engine::ms", align 8
  %srem = srem i64 %ms167, 1000
  %varadics_array168 = alloca ptr, i32 6, align 8
  %49 = getelementptr ptr, ptr %varadics_array168, i32 0
  %vararg_int_to_ptr = inttoptr i32 %add162 to ptr
  store ptr %vararg_int_to_ptr, ptr %49, align 8
  %50 = getelementptr ptr, ptr %varadics_array168, i32 1
  %vararg_int_to_ptr169 = inttoptr i32 %length_result163 to ptr
  store ptr %vararg_int_to_ptr169, ptr %50, align 8
  %51 = getelementptr ptr, ptr %varadics_array168, i32 2
  store ptr %targetName165, ptr %51, align 8
  %52 = getelementptr ptr, ptr %varadics_array168, i32 3
  %vararg_int_to_ptr170 = inttoptr i32 %steps166 to ptr
  store ptr %vararg_int_to_ptr170, ptr %52, align 8
  %53 = getelementptr ptr, ptr %varadics_array168, i32 4
  %vararg_int_to_ptr171 = inttoptr i64 %sdiv to ptr
  store ptr %vararg_int_to_ptr171, ptr %53, align 8
  %54 = getelementptr ptr, ptr %varadics_array168, i32 5
  %vararg_int_to_ptr172 = inttoptr i64 %srem to ptr
  store ptr %vararg_int_to_ptr172, ptr %54, align 8
  %variadic_struct173 = alloca { ptr, i32, i32 }, align 8
  %55 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 0
  store ptr %varadics_array168, ptr %55, align 8
  %56 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 1
  store i32 6, ptr %56, align 4
  %57 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 2
  store i32 0, ptr %57, align 4
  call void @"IO::qout"(ptr @.str.68, ptr %variadic_struct173)
  br label %ifcont159

ifcont159:                                        ; preds = %else160, %then158
  br label %ifcont155

else160:                                          ; preds = %then154
  %k174 = load i32, ptr %"CQB::Engine::k", align 4
  %add175 = add i32 %k174, 1
  %length_result176 = call i32 @"Vector::Vec<int>_length"(ptr %order)
  %targetName_ptr177 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0
  %targetName178 = load ptr, ptr %targetName_ptr177, align 8
  %ms179 = load i64, ptr %"CQB::Engine::ms", align 8
  %sdiv180 = sdiv i64 %ms179, 1000
  %ms181 = load i64, ptr %"CQB::Engine::ms", align 8
  %srem182 = srem i64 %ms181, 1000
  %varadics_array183 = alloca ptr, i32 5, align 8
  %58 = getelementptr ptr, ptr %varadics_array183, i32 0
  %vararg_int_to_ptr184 = inttoptr i32 %add175 to ptr
  store ptr %vararg_int_to_ptr184, ptr %58, align 8
  %59 = getelementptr ptr, ptr %varadics_array183, i32 1
  %vararg_int_to_ptr185 = inttoptr i32 %length_result176 to ptr
  store ptr %vararg_int_to_ptr185, ptr %59, align 8
  %60 = getelementptr ptr, ptr %varadics_array183, i32 2
  store ptr %targetName178, ptr %60, align 8
  %61 = getelementptr ptr, ptr %varadics_array183, i32 3
  %vararg_int_to_ptr186 = inttoptr i64 %sdiv180 to ptr
  store ptr %vararg_int_to_ptr186, ptr %61, align 8
  %62 = getelementptr ptr, ptr %varadics_array183, i32 4
  %vararg_int_to_ptr187 = inttoptr i64 %srem182 to ptr
  store ptr %vararg_int_to_ptr187, ptr %62, align 8
  %variadic_struct188 = alloca { ptr, i32, i32 }, align 8
  %63 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 0
  store ptr %varadics_array183, ptr %63, align 8
  %64 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 1
  store i32 5, ptr %64, align 4
  %65 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 2
  store i32 0, ptr %65, align 4
  call void @"IO::qout"(ptr @.str.69, ptr %variadic_struct188)
  br label %ifcont159
}

define weak_odr i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0) !qc.return_types !30 {
entry:
  %child = alloca ptr, align 8
  %__foreach_i_child = alloca i32, align 4
  %__iter_child = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
  %res = alloca %"CQB::Engine::RunResult", align 8
  %step = alloca %"CQB::CI::Step", align 8
  %"CQB::Engine::i49" = alloca i32, align 4
  %"CQB::Engine::failed" = alloca i1, align 1
  %"CQB::Engine::state" = alloca ptr, align 8
  %state = alloca %"CQB::Engine::TaskState", align 8
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %"CQB::Engine::i" = alloca i32, align 4
  %"CQB::Engine::stateIndex" = alloca i32, align 4
  %previous = alloca ptr, align 8
  %__foreach_i_previous = alloca i32, align 4
  %__iter_previous = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
  %"CQB::Engine::seen" = alloca i1, align 1
  %"CQB::Engine::task" = alloca ptr, align 8
  %"CQB::Engine::head" = alloca i32, align 4
  %"temp_Vector::Vec<CQB::CI::Task*>1" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %visited = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %"temp_Vector::Vec<CQB::CI::Task*>" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %pending = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %1 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2
  %ciRoot = load ptr, ptr %1, align 8
  %ptr_eq = icmp eq ptr %ciRoot, null
  br i1 %ptr_eq, label %then, label %ifcont

then:                                             ; preds = %entry
  %varadics_array = alloca ptr, i32 0, align 8
  %variadic_struct = alloca { ptr, i32, i32 }, align 8
  %2 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0
  store ptr %varadics_array, ptr %2, align 8
  %3 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2
  store i32 0, ptr %4, align 4
  call void @"IO::qout"(ptr @.str.72, ptr %variadic_struct)
  ret i32 1

ifcont:                                           ; preds = %entry
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %pending, align 8
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>")
  %"Vector::Vec<CQB::CI::Task*>_inst" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst", ptr %pending, align 8
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %visited, align 8
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>1", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>1")
  %"Vector::Vec<CQB::CI::Task*>_inst2" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>1", align 8
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst2", ptr %visited, align 8
  %5 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2
  %ciRoot3 = load ptr, ptr %5, align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %pending, ptr %ciRoot3)
  store i32 0, ptr %"CQB::Engine::head", align 4
  store i32 0, ptr %"CQB::Engine::head", align 4
  br label %while.cond

while.cond:                                       ; preds = %foreach.end115, %then9, %ifcont
  %head = load i32, ptr %"CQB::Engine::head", align 4
  %length_result = call i32 @"Vector::Vec<CQB::CI::Task*>_length"(ptr %pending)
  %icmplt = icmp slt i32 %head, %length_result
  br i1 %icmplt, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %"CQB::Engine::task", align 8
  %head4 = load i32, ptr %"CQB::Engine::head", align 4
  %6 = sext i32 %head4 to i64
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::CI::Task*>_operator[]_addr_t"(ptr %pending, i64 %6)
  %deref_ref = load ptr, ptr %"operator[]_result", align 8
  store ptr %deref_ref, ptr %"CQB::Engine::task", align 8
  %inc_deref = load i32, ptr %"CQB::Engine::head", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::head", align 4
  store i1 false, ptr %"CQB::Engine::seen", align 1
  store i1 false, ptr %"CQB::Engine::seen", align 1
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %__iter_previous, align 8
  %_begin_result = call %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %visited)
  store %"Vector::Iterator::It<CQB::CI::Task*>" %_begin_result, ptr %__iter_previous, align 8
  store i32 0, ptr %__foreach_i_previous, align 4
  store ptr null, ptr %previous, align 8
  store i32 0, ptr %__foreach_i_previous, align 4
  br label %foreach.cond

while.end:                                        ; preds = %while.cond
  %activeTask_ptr119 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4
  store ptr null, ptr %activeTask_ptr119, align 8
  %ciDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 0
  store i1 true, ptr %ciDone_ptr, align 1
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %pending)
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %visited)
  ret i32 0

foreach.cond:                                     ; preds = %ifcont8, %while.body
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %__iter_previous)
  br i1 %_atEnd_result, label %foreach.end, label %foreach.body

foreach.body:                                     ; preds = %foreach.cond
  %7 = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %__iter_previous, align 8
  %_next_result = call ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %__iter_previous)
  store ptr %_next_result, ptr %previous, align 8
  %previous5 = load ptr, ptr %previous, align 8
  %task = load ptr, ptr %"CQB::Engine::task", align 8
  %ptr_eq6 = icmp eq ptr %previous5, %task
  br i1 %ptr_eq6, label %then7, label %ifcont8

foreach.end:                                      ; preds = %then7, %foreach.cond
  %seen = load i1, ptr %"CQB::Engine::seen", align 1
  br i1 %seen, label %then9, label %ifcont10

then7:                                            ; preds = %foreach.body
  store i1 true, ptr %"CQB::Engine::seen", align 1
  br label %foreach.end

ifcont8:                                          ; preds = %foreach.body
  br label %foreach.cond

then9:                                            ; preds = %foreach.end
  br label %while.cond

ifcont10:                                         ; preds = %foreach.end
  %task11 = load ptr, ptr %"CQB::Engine::task", align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %visited, ptr %task11)
  %task12 = load ptr, ptr %"CQB::Engine::task", align 8
  %activeTask_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4
  store ptr %task12, ptr %activeTask_ptr, align 8
  store i32 0, ptr %"CQB::Engine::stateIndex", align 4
  store i32 -1, ptr %"CQB::Engine::stateIndex", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont10
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %8 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %length_result13 = call i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %8)
  %icmplt14 = icmp slt i32 %i, %length_result13
  br i1 %icmplt14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %activeStates_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %i15 = load i32, ptr %"CQB::Engine::i", align 4
  %9 = sext i32 %i15 to i64
  %"operator[]_result16" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr, i64 %9)
  %name_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result16", i32 0, i32 0
  %name = load ptr, ptr %name_ptr, align 8
  %task17 = load ptr, ptr %"CQB::Engine::task", align 8
  %name_ptr18 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task17, i32 0, i32 0
  %name19 = load ptr, ptr %name_ptr18, align 8
  %ptr_eq20 = icmp eq ptr %name, %name19
  br i1 %ptr_eq20, label %then21, label %ifcont22

for.inc:                                          ; preds = %ifcont22
  %inc_deref24 = load i32, ptr %"CQB::Engine::i", align 4
  %inc25 = add i32 %inc_deref24, 1
  store i32 %inc25, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.end:                                          ; preds = %then21, %for.cond
  %stateIndex = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %icmplt26 = icmp slt i32 %stateIndex, 0
  br i1 %icmplt26, label %then27, label %else

then21:                                           ; preds = %for.body
  %i23 = load i32, ptr %"CQB::Engine::i", align 4
  store i32 %i23, ptr %"CQB::Engine::stateIndex", align 4
  br label %for.end

ifcont22:                                         ; preds = %for.body
  br label %for.inc

then27:                                           ; preds = %for.end
  %task29 = load ptr, ptr %"CQB::Engine::task", align 8
  %name_ptr30 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task29, i32 0, i32 0
  %name31 = load ptr, ptr %name_ptr30, align 8
  %10 = insertvalue %"CQB::Engine::TaskState" zeroinitializer, ptr %name31, 0
  %11 = insertvalue %"CQB::Engine::TaskState" %10, ptr @.str.73, 1
  %12 = insertvalue %"CQB::Engine::TaskState" %11, ptr @.str.74, 2
  %13 = insertvalue %"CQB::Engine::TaskState" %12, i32 0, 3
  %14 = insertvalue %"CQB::Engine::TaskState" %13, ptr @.str.75, 4
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>")
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8
  %15 = insertvalue %"CQB::Engine::TaskState" %14, %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", 5
  %16 = insertvalue %"CQB::Engine::TaskState" %15, i32 0, 6
  %17 = insertvalue %"CQB::Engine::TaskState" %16, i32 0, 7
  store %"CQB::Engine::TaskState" zeroinitializer, ptr %state, align 8
  store %"CQB::Engine::TaskState" %17, ptr %state, align 8
  %18 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %state32 = load %"CQB::Engine::TaskState", ptr %state, align 8
  call void @"Vector::Vec<CQB::Engine::TaskState>_push_T"(ptr %18, %"CQB::Engine::TaskState" %state32)
  %19 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %length_result33 = call i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %19)
  %sub = sub i32 %length_result33, 1
  store i32 %sub, ptr %"CQB::Engine::stateIndex", align 4
  br label %ifcont28

ifcont28:                                         ; preds = %else, %then27
  store ptr null, ptr %"CQB::Engine::state", align 8
  %activeStates_ptr43 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %stateIndex44 = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %20 = sext i32 %stateIndex44 to i64
  %"operator[]_result45" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr43, i64 %20)
  %activeStates_ptr46 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %stateIndex47 = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %21 = sext i32 %stateIndex47 to i64
  %"operator[]_result48" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr46, i64 %21)
  store ptr %"operator[]_result48", ptr %"CQB::Engine::state", align 8
  store i1 false, ptr %"CQB::Engine::failed", align 1
  store i1 false, ptr %"CQB::Engine::failed", align 1
  store i32 0, ptr %"CQB::Engine::i49", align 4
  store i32 0, ptr %"CQB::Engine::i49", align 4
  br label %for.cond50

else:                                             ; preds = %for.end
  %activeStates_ptr34 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %stateIndex35 = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %22 = sext i32 %stateIndex35 to i64
  %"operator[]_result36" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr34, i64 %22)
  %status_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result36", i32 0, i32 2
  store ptr @.str.76, ptr %status_ptr, align 8
  %activeStates_ptr37 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %stateIndex38 = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %23 = sext i32 %stateIndex38 to i64
  %"operator[]_result39" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr37, i64 %23)
  %progress_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result39", i32 0, i32 3
  store i32 0, ptr %progress_ptr, align 4
  %activeStates_ptr40 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  %stateIndex41 = load i32, ptr %"CQB::Engine::stateIndex", align 4
  %24 = sext i32 %stateIndex41 to i64
  %"operator[]_result42" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr40, i64 %24)
  %lastOutput_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result42", i32 0, i32 4
  store ptr @.str.77, ptr %lastOutput_ptr, align 8
  br label %ifcont28

for.cond50:                                       ; preds = %for.inc52, %ifcont28
  %i54 = load i32, ptr %"CQB::Engine::i49", align 4
  %task55 = load ptr, ptr %"CQB::Engine::task", align 8
  %25 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task55, i32 0, i32 1
  %length_result56 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %25)
  %icmplt57 = icmp slt i32 %i54, %length_result56
  br i1 %icmplt57, label %for.body51, label %for.end53

for.body51:                                       ; preds = %for.cond50
  %task58 = load ptr, ptr %"CQB::Engine::task", align 8
  %steps_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task58, i32 0, i32 1
  %i59 = load i32, ptr %"CQB::Engine::i49", align 4
  %26 = sext i32 %i59 to i64
  %"operator[]_result60" = call ptr @"Vector::Vec<CQB::CI::Step>_operator[]_addr_t"(ptr %steps_ptr, i64 %26)
  store %"CQB::CI::Step" zeroinitializer, ptr %step, align 8
  %strip_ref = load %"CQB::CI::Step", ptr %"operator[]_result60", align 8
  store %"CQB::CI::Step" %strip_ref, ptr %step, align 8
  %task61 = load ptr, ptr %"CQB::Engine::task", align 8
  %27 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task61, i32 0, i32 1
  %length_result62 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %27)
  %icmpgt = icmp sgt i32 %length_result62, 0
  br i1 %icmpgt, label %ternary.true, label %ternary.false

for.inc52:                                        ; preds = %ifcont85
  %inc_deref102 = load i32, ptr %"CQB::Engine::i49", align 4
  %inc103 = add i32 %inc_deref102, 1
  store i32 %inc103, ptr %"CQB::Engine::i49", align 4
  br label %for.cond50

for.end53:                                        ; preds = %then96, %for.cond50
  %failed = load i1, ptr %"CQB::Engine::failed", align 1
  br i1 %failed, label %then104, label %ifcont105

ternary.true:                                     ; preds = %for.body51
  %i63 = load i32, ptr %"CQB::Engine::i49", align 4
  %mul = mul i32 %i63, 100
  %task64 = load ptr, ptr %"CQB::Engine::task", align 8
  %28 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task64, i32 0, i32 1
  %length_result65 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %28)
  %sdiv = sdiv i32 %mul, %length_result65
  br label %ternary.end

ternary.false:                                    ; preds = %for.body51
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %sdiv, %ternary.true ], [ 100, %ternary.false ]
  %state66 = load ptr, ptr %"CQB::Engine::state", align 8
  %progress_ptr67 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state66, i32 0, i32 3
  store i32 %ternary_val, ptr %progress_ptr67, align 4
  %task68 = load ptr, ptr %"CQB::Engine::task", align 8
  %name_ptr69 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task68, i32 0, i32 0
  %name70 = load ptr, ptr %name_ptr69, align 8
  %name_ptr71 = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 0
  %name72 = load ptr, ptr %name_ptr71, align 8
  %varadics_array73 = alloca ptr, i32 2, align 8
  %29 = getelementptr ptr, ptr %varadics_array73, i32 0
  store ptr %name70, ptr %29, align 8
  %30 = getelementptr ptr, ptr %varadics_array73, i32 1
  store ptr %name72, ptr %30, align 8
  %variadic_struct74 = alloca { ptr, i32, i32 }, align 8
  %31 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 0
  store ptr %varadics_array73, ptr %31, align 8
  %32 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 1
  store i32 2, ptr %32, align 4
  %33 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 2
  store i32 0, ptr %33, align 4
  call void @"IO::qout"(ptr @.str.78, ptr %variadic_struct74)
  %command_ptr = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 1
  %command = load %"Vector::Vec<char*>", ptr %command_ptr, align 8
  %calltmp = call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %command, ptr @.str.79, i1 false)
  store %"CQB::Engine::RunResult" zeroinitializer, ptr %res, align 8
  store %"CQB::Engine::RunResult" %calltmp, ptr %res, align 8
  %output_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output = load ptr, ptr %output_ptr, align 8
  %state75 = load ptr, ptr %"CQB::Engine::state", align 8
  %lastOutput_ptr76 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state75, i32 0, i32 4
  store ptr %output, ptr %lastOutput_ptr76, align 8
  %state77 = load ptr, ptr %"CQB::Engine::state", align 8
  %34 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state77, i32 0, i32 5
  %output_ptr78 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output79 = load ptr, ptr %output_ptr78, align 8
  call void @"Vector::Vec<char*>_push_T"(ptr %34, ptr %output79)
  %output_ptr80 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output81 = load ptr, ptr %output_ptr80, align 8
  %varadics_array82 = alloca ptr, align 8
  %35 = getelementptr ptr, ptr %varadics_array82, i32 0
  store ptr %output81, ptr %35, align 8
  %variadic_struct83 = alloca { ptr, i32, i32 }, align 8
  %36 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 0
  store ptr %varadics_array82, ptr %36, align 8
  %37 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 1
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 2
  store i32 0, ptr %38, align 4
  call void @"IO::qout"(ptr @.str.80, ptr %variadic_struct83)
  %exitCode_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0
  %exitCode = load i32, ptr %exitCode_ptr, align 4
  %icmpne = icmp ne i32 %exitCode, 0
  br i1 %icmpne, label %then84, label %ifcont85

then84:                                           ; preds = %ternary.end
  %state86 = load ptr, ptr %"CQB::Engine::state", align 8
  %errorsCount_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state86, i32 0, i32 7
  %inc_deref87 = load i32, ptr %errorsCount_ptr, align 4
  %inc88 = add i32 %inc_deref87, 1
  store i32 %inc88, ptr %errorsCount_ptr, align 4
  %name_ptr89 = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 0
  %name90 = load ptr, ptr %name_ptr89, align 8
  %exitCode_ptr91 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0
  %exitCode92 = load i32, ptr %exitCode_ptr91, align 4
  %varadics_array93 = alloca ptr, i32 2, align 8
  %39 = getelementptr ptr, ptr %varadics_array93, i32 0
  store ptr %name90, ptr %39, align 8
  %40 = getelementptr ptr, ptr %varadics_array93, i32 1
  %vararg_int_to_ptr = inttoptr i32 %exitCode92 to ptr
  store ptr %vararg_int_to_ptr, ptr %40, align 8
  %variadic_struct94 = alloca { ptr, i32, i32 }, align 8
  %41 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 0
  store ptr %varadics_array93, ptr %41, align 8
  %42 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 1
  store i32 2, ptr %42, align 4
  %43 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 2
  store i32 0, ptr %43, align 4
  call void @"IO::qout"(ptr @.str.81, ptr %variadic_struct94)
  %task95 = load ptr, ptr %"CQB::Engine::task", align 8
  %ignoreFailure_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task95, i32 0, i32 3
  %ignoreFailure = load i1, ptr %ignoreFailure_ptr, align 1
  %not = xor i1 %ignoreFailure, true
  br i1 %not, label %then96, label %ifcont97

ifcont85:                                         ; preds = %ifcont97, %ternary.end
  %output_ptr100 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1
  %output101 = load ptr, ptr %output_ptr100, align 8
  call void @qc_free(ptr %output101)
  br label %for.inc52

then96:                                           ; preds = %then84
  %state98 = load ptr, ptr %"CQB::Engine::state", align 8
  %status_ptr99 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state98, i32 0, i32 2
  store ptr @.str.82, ptr %status_ptr99, align 8
  store i1 true, ptr %"CQB::Engine::failed", align 1
  br label %for.end53

ifcont97:                                         ; preds = %then84
  br label %ifcont85

then104:                                          ; preds = %for.end53
  %activeTask_ptr106 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4
  store ptr null, ptr %activeTask_ptr106, align 8
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %pending)
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %visited)
  ret i32 1

ifcont105:                                        ; preds = %for.end53
  %state107 = load ptr, ptr %"CQB::Engine::state", align 8
  %progress_ptr108 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state107, i32 0, i32 3
  store i32 100, ptr %progress_ptr108, align 4
  %state109 = load ptr, ptr %"CQB::Engine::state", align 8
  %status_ptr110 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state109, i32 0, i32 2
  store ptr @.str.83, ptr %status_ptr110, align 8
  %task111 = load ptr, ptr %"CQB::Engine::task", align 8
  %next_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task111, i32 0, i32 2
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %__iter_child, align 8
  %_begin_result112 = call %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %next_ptr)
  store %"Vector::Iterator::It<CQB::CI::Task*>" %_begin_result112, ptr %__iter_child, align 8
  store i32 0, ptr %__foreach_i_child, align 4
  store ptr null, ptr %child, align 8
  store i32 0, ptr %__foreach_i_child, align 4
  br label %foreach.cond113

foreach.cond113:                                  ; preds = %foreach.body114, %ifcont105
  %_atEnd_result116 = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %__iter_child)
  br i1 %_atEnd_result116, label %foreach.end115, label %foreach.body114

foreach.body114:                                  ; preds = %foreach.cond113
  %44 = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %__iter_child, align 8
  %_next_result117 = call ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %__iter_child)
  store ptr %_next_result117, ptr %child, align 8
  %child118 = load ptr, ptr %child, align 8
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %pending, ptr %child118)
  br label %foreach.cond113

foreach.end115:                                   ; preds = %foreach.cond113
  br label %while.cond
}

define weak_odr void @"CQB::Engine::Runner_Runner_Vector::Vec<Build::Command>_CI::Task*"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1, ptr %2) !qc.return_types !23 {
entry:
  %"temp_Vector::Vec<CQB::Engine::TaskState>" = alloca %"Vector::Vec<CQB::Engine::TaskState>", align 8
  %ciRoot = alloca ptr, align 8
  %build = alloca %"Vector::Vec<CQB::Build::Command>", align 8
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %build, align 8
  store %"Vector::Vec<CQB::Build::Command>" %1, ptr %build, align 8
  store ptr null, ptr %ciRoot, align 8
  store ptr %2, ptr %ciRoot, align 8
  %build1 = load %"Vector::Vec<CQB::Build::Command>", ptr %build, align 8
  %buildGraph_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5
  store %"Vector::Vec<CQB::Build::Command>" %build1, ptr %buildGraph_ptr, align 8
  %ciRoot2 = load ptr, ptr %ciRoot, align 8
  %ciRoot_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2
  store ptr %ciRoot2, ptr %ciRoot_ptr, align 8
  %ciRoot3 = load ptr, ptr %ciRoot, align 8
  %activeTask_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4
  store ptr %ciRoot3, ptr %activeTask_ptr, align 8
  store %"Vector::Vec<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::Engine::TaskState>", align 8
  call void @"Vector::Vec<CQB::Engine::TaskState>_Vec"(ptr %"temp_Vector::Vec<CQB::Engine::TaskState>")
  %"Vector::Vec<CQB::Engine::TaskState>_inst" = load %"Vector::Vec<CQB::Engine::TaskState>", ptr %"temp_Vector::Vec<CQB::Engine::TaskState>", align 8
  %activeStates_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3
  store %"Vector::Vec<CQB::Engine::TaskState>" %"Vector::Vec<CQB::Engine::TaskState>_inst", ptr %activeStates_ptr, align 8
  %ciDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 0
  store i1 false, ptr %ciDone_ptr, align 1
  %buildDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 1
  store i1 false, ptr %buildDone_ptr, align 1
  ret void
}

define weak_odr i1 @"CQB::Engine::Runner_Run_char*"(ptr %0, ptr %1) !qc.return_types !27 {
entry:
  %qc_exe = alloca ptr, align 8
  store ptr null, ptr %qc_exe, align 8
  store ptr %1, ptr %qc_exe, align 8
  %runCIPipeline_result = call i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0)
  %qc_exe1 = load ptr, ptr %qc_exe, align 8
  %runBuildPipeline_result = call i32 @"CQB::Engine::Runner_runBuildPipeline_char*"(ptr %0, ptr %qc_exe1)
  ret i1 true
}

declare !qc.return_types !30 i32 @__sched_cpucount(i64, ptr)

declare !qc.return_types !40 ptr @__sched_cpualloc(i64)

declare !qc.return_types !21 void @__sched_cpufree(ptr)

declare !qc.return_types !30 i32 @sched_setparam(i32, ptr)

declare !qc.return_types !30 i32 @sched_getparam(i32, ptr)

declare !qc.return_types !30 i32 @sched_setscheduler(i32, i32, ptr)

declare !qc.return_types !30 i32 @sched_getscheduler(i32)

declare !qc.return_types !30 i32 @sched_yield()

declare !qc.return_types !30 i32 @sched_get_priority_max(i32)

declare !qc.return_types !30 i32 @sched_get_priority_min(i32)

declare !qc.return_types !30 i32 @sched_rr_get_interval(i32, ptr)

define weak_odr i16 @__bswap_16(i16 %__bsx) !qc.return_types !41 {
entry:
  %__bsx1 = alloca i16, align 2
  store i16 0, ptr %__bsx1, align 2
  store i16 %__bsx, ptr %__bsx1, align 2
  %__bsx2 = load i16, ptr %__bsx1, align 2
  %promote_int = sext i16 %__bsx2 to i32
  %ashrtmp = ashr i32 %promote_int, 8
  %promote_int3 = sext i32 %ashrtmp to i64
  %andtmp = and i64 %promote_int3, 255
  %__bsx4 = load i16, ptr %__bsx1, align 2
  %promote_int5 = sext i16 %__bsx4 to i64
  %andtmp6 = and i64 %promote_int5, 255
  %shltmp = shl i64 %andtmp6, 8
  %ortmp = or i64 %andtmp, %shltmp
  %0 = trunc i64 %ortmp to i16
  ret i16 %0
}

define weak_odr i32 @__bswap_32(i32 %__bsx) !qc.return_types !42 {
entry:
  %__bsx1 = alloca i32, align 4
  store i32 0, ptr %__bsx1, align 4
  store i32 %__bsx, ptr %__bsx1, align 4
  %__bsx2 = load i32, ptr %__bsx1, align 4
  %promote_int = sext i32 %__bsx2 to i64
  %andtmp = and i64 %promote_int, 4278190080
  %lshrtmp = lshr i64 %andtmp, 24
  %__bsx3 = load i32, ptr %__bsx1, align 4
  %promote_int4 = sext i32 %__bsx3 to i64
  %andtmp5 = and i64 %promote_int4, 16711680
  %lshrtmp6 = lshr i64 %andtmp5, 8
  %ortmp = or i64 %lshrtmp, %lshrtmp6
  %__bsx7 = load i32, ptr %__bsx1, align 4
  %promote_int8 = sext i32 %__bsx7 to i64
  %andtmp9 = and i64 %promote_int8, 65280
  %shltmp = shl i64 %andtmp9, 8
  %ortmp10 = or i64 %ortmp, %shltmp
  %__bsx11 = load i32, ptr %__bsx1, align 4
  %promote_int12 = sext i32 %__bsx11 to i64
  %andtmp13 = and i64 %promote_int12, 255
  %shltmp14 = shl i64 %andtmp13, 24
  %ortmp15 = or i64 %ortmp10, %shltmp14
  %arg_trunc = trunc i64 %ortmp15 to i32
  ret i32 %arg_trunc
}

define weak_odr i64 @__bswap_64(i64 %__bsx) !qc.return_types !43 {
entry:
  %__bsx1 = alloca i64, align 8
  store i64 0, ptr %__bsx1, align 8
  store i64 %__bsx, ptr %__bsx1, align 8
  %__bsx2 = load i64, ptr %__bsx1, align 8
  %andtmp = and i64 %__bsx2, -72057594037927936
  %lshrtmp = lshr i64 %andtmp, 56
  %__bsx3 = load i64, ptr %__bsx1, align 8
  %andtmp4 = and i64 %__bsx3, 71776119061217280
  %lshrtmp5 = lshr i64 %andtmp4, 40
  %ortmp = or i64 %lshrtmp, %lshrtmp5
  %__bsx6 = load i64, ptr %__bsx1, align 8
  %andtmp7 = and i64 %__bsx6, 280375465082880
  %lshrtmp8 = lshr i64 %andtmp7, 24
  %ortmp9 = or i64 %ortmp, %lshrtmp8
  %__bsx10 = load i64, ptr %__bsx1, align 8
  %andtmp11 = and i64 %__bsx10, 1095216660480
  %lshrtmp12 = lshr i64 %andtmp11, 8
  %ortmp13 = or i64 %ortmp9, %lshrtmp12
  %__bsx14 = load i64, ptr %__bsx1, align 8
  %andtmp15 = and i64 %__bsx14, 4278190080
  %shltmp = shl i64 %andtmp15, 8
  %ortmp16 = or i64 %ortmp13, %shltmp
  %__bsx17 = load i64, ptr %__bsx1, align 8
  %andtmp18 = and i64 %__bsx17, 16711680
  %shltmp19 = shl i64 %andtmp18, 24
  %ortmp20 = or i64 %ortmp16, %shltmp19
  %__bsx21 = load i64, ptr %__bsx1, align 8
  %andtmp22 = and i64 %__bsx21, 65280
  %shltmp23 = shl i64 %andtmp22, 40
  %ortmp24 = or i64 %ortmp20, %shltmp23
  %__bsx25 = load i64, ptr %__bsx1, align 8
  %andtmp26 = and i64 %__bsx25, 255
  %shltmp27 = shl i64 %andtmp26, 56
  %ortmp28 = or i64 %ortmp24, %shltmp27
  ret i64 %ortmp28
}

define weak_odr i16 @__uint16_identity(i16 %__x) !qc.return_types !41 {
entry:
  %__x1 = alloca i16, align 2
  store i16 0, ptr %__x1, align 2
  store i16 %__x, ptr %__x1, align 2
  %__x2 = load i16, ptr %__x1, align 2
  ret i16 %__x2
}

define weak_odr i32 @__uint32_identity(i32 %__x) !qc.return_types !42 {
entry:
  %__x1 = alloca i32, align 4
  store i32 0, ptr %__x1, align 4
  store i32 %__x, ptr %__x1, align 4
  %__x2 = load i32, ptr %__x1, align 4
  ret i32 %__x2
}

define weak_odr i64 @__uint64_identity(i64 %__x) !qc.return_types !43 {
entry:
  %__x1 = alloca i64, align 8
  store i64 0, ptr %__x1, align 8
  store i64 %__x, ptr %__x1, align 8
  %__x2 = load i64, ptr %__x1, align 8
  ret i64 %__x2
}

declare !qc.return_types !30 i32 @select(i32, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @pselect(i32, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_init(ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_destroy(ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_getsigdefault(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setsigdefault(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_getsigmask(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setsigmask(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_getflags(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setflags(ptr, i16)

declare !qc.return_types !30 i32 @posix_spawnattr_getpgroup(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setpgroup(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawnattr_getschedpolicy(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setschedpolicy(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawnattr_getschedparam(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setschedparam(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_init(ptr)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_destroy(ptr)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addopen(ptr, i32, ptr, i32, i32)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addclose(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addchdir_np(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addfchdir_np(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addclosefrom_np(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawn_file_actions_addtcsetpgrp_np(ptr, i32)

declare !qc.return_types !30 i32 @posix_spawnattr_getcgroup_np(ptr, ptr)

declare !qc.return_types !30 i32 @posix_spawnattr_setcgroup_np(ptr, i32)

declare !qc.return_types !30 i32 @pidfd_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @pidfd_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !30 i32 @access(ptr, i32)

declare !qc.return_types !30 i32 @faccessat(i32, ptr, i32, i32)

declare !qc.return_types !21 void @closefrom(i32)

declare !qc.return_types !44 i64 @pread(i32, ptr, i64, i64)

declare !qc.return_types !44 i64 @pwrite(i32, ptr, i64, i64)

declare !qc.return_types !30 i32 @pipe(ptr)

declare !qc.return_types !45 i32 @alarm(i32)

declare !qc.return_types !45 i32 @sleep(i32)

declare !qc.return_types !46 i32 @ualarm(i32, i32)

declare !qc.return_types !30 i32 @usleep(i32)

declare !qc.return_types !30 i32 @pause()

declare !qc.return_types !30 i32 @chown(ptr, i32, i32)

declare !qc.return_types !30 i32 @fchown(i32, i32, i32)

declare !qc.return_types !30 i32 @lchown(ptr, i32, i32)

declare !qc.return_types !30 i32 @fchownat(i32, ptr, i32, i32, i32)

declare !qc.return_types !30 i32 @chdir(ptr)

declare !qc.return_types !30 i32 @fchdir(i32)

declare !qc.return_types !22 ptr @getcwd(ptr, i64)

declare !qc.return_types !22 ptr @getwd(ptr)

declare !qc.return_types !30 i32 @dup(i32)

declare !qc.return_types !30 i32 @dup2(i32, i32)

declare !qc.return_types !30 i32 @execve(ptr, ptr, ptr)

declare !qc.return_types !30 i32 @fexecve(i32, ptr, ptr)

declare !qc.return_types !30 i32 @execv(ptr, ptr)

declare !qc.return_types !30 i32 @execle(ptr, ptr, ...)

declare !qc.return_types !30 i32 @execl(ptr, ptr, ...)

declare !qc.return_types !30 i32 @execvp(ptr, ptr)

declare !qc.return_types !30 i32 @execlp(ptr, ptr, ...)

declare !qc.return_types !30 i32 @nice(i32)

declare !qc.return_types !21 void @_exit(i32)

declare !qc.return_types !47 i64 @pathconf(ptr, i32)

declare !qc.return_types !47 i64 @fpathconf(i32, i32)

declare !qc.return_types !47 i64 @sysconf(i32)

declare !qc.return_types !48 i64 @confstr(i32, ptr, i64)

declare !qc.return_types !49 i32 @getpid()

declare !qc.return_types !49 i32 @getppid()

declare !qc.return_types !49 i32 @getpgrp()

declare !qc.return_types !49 i32 @__getpgid(i32)

declare !qc.return_types !49 i32 @getpgid(i32)

declare !qc.return_types !30 i32 @setpgid(i32, i32)

declare !qc.return_types !30 i32 @setpgrp()

declare !qc.return_types !49 i32 @setsid()

declare !qc.return_types !49 i32 @getsid(i32)

declare !qc.return_types !50 i32 @getuid()

declare !qc.return_types !50 i32 @geteuid()

declare !qc.return_types !51 i32 @getgid()

declare !qc.return_types !51 i32 @getegid()

declare !qc.return_types !30 i32 @getgroups(i32, ptr)

declare !qc.return_types !30 i32 @setuid(i32)

declare !qc.return_types !30 i32 @setreuid(i32, i32)

declare !qc.return_types !30 i32 @seteuid(i32)

declare !qc.return_types !30 i32 @setgid(i32)

declare !qc.return_types !30 i32 @setregid(i32, i32)

declare !qc.return_types !30 i32 @setegid(i32)

declare !qc.return_types !49 i32 @fork()

declare !qc.return_types !30 i32 @vfork()

declare !qc.return_types !22 ptr @ttyname(i32)

declare !qc.return_types !30 i32 @ttyname_r(i32, ptr, i64)

declare !qc.return_types !30 i32 @isatty(i32)

declare !qc.return_types !30 i32 @ttyslot()

declare !qc.return_types !30 i32 @link(ptr, ptr)

declare !qc.return_types !30 i32 @linkat(i32, ptr, i32, ptr, i32)

declare !qc.return_types !30 i32 @symlink(ptr, ptr)

declare !qc.return_types !44 i64 @readlink(ptr, ptr, i64)

declare !qc.return_types !30 i32 @symlinkat(ptr, i32, ptr)

declare !qc.return_types !44 i64 @readlinkat(i32, ptr, ptr, i64)

declare !qc.return_types !30 i32 @unlink(ptr)

declare !qc.return_types !30 i32 @unlinkat(i32, ptr, i32)

declare !qc.return_types !30 i32 @rmdir(ptr)

declare !qc.return_types !49 i32 @tcgetpgrp(i32)

declare !qc.return_types !30 i32 @tcsetpgrp(i32, i32)

declare !qc.return_types !22 ptr @getlogin()

declare !qc.return_types !30 i32 @getlogin_r(ptr, i64)

declare !qc.return_types !30 i32 @setlogin(ptr)

declare !qc.return_types !30 i32 @getopt(i32, ptr, ptr)

declare !qc.return_types !30 i32 @gethostname(ptr, i64)

declare !qc.return_types !30 i32 @sethostname(ptr, i64)

declare !qc.return_types !30 i32 @sethostid(i64)

declare !qc.return_types !30 i32 @getdomainname(ptr, i64)

declare !qc.return_types !30 i32 @setdomainname(ptr, i64)

declare !qc.return_types !30 i32 @vhangup()

declare !qc.return_types !30 i32 @revoke(ptr)

declare !qc.return_types !30 i32 @profil(ptr, i64, i64, i32)

declare !qc.return_types !30 i32 @acct(ptr)

declare !qc.return_types !22 ptr @getusershell()

declare !qc.return_types !21 void @endusershell()

declare !qc.return_types !21 void @setusershell()

declare !qc.return_types !30 i32 @daemon(i32, i32)

declare !qc.return_types !30 i32 @chroot(ptr)

declare !qc.return_types !22 ptr @getpass(ptr)

declare !qc.return_types !30 i32 @fsync(i32)

declare !qc.return_types !47 i64 @gethostid()

declare !qc.return_types !21 void @sync()

declare !qc.return_types !30 i32 @getpagesize()

declare !qc.return_types !30 i32 @getdtablesize()

declare !qc.return_types !30 i32 @truncate(ptr, i64)

declare !qc.return_types !30 i32 @ftruncate(i32, i64)

declare !qc.return_types !30 i32 @brk(ptr)

declare !qc.return_types !52 ptr @sbrk(i64)

declare !qc.return_types !47 i64 @syscall(i64, ...)

declare !qc.return_types !30 i32 @lockf(i32, i32, i64)

declare !qc.return_types !30 i32 @fdatasync(i32)

declare !qc.return_types !22 ptr @crypt(ptr, ptr)

declare !qc.return_types !30 i32 @getentropy(ptr, i64)

declare !qc.return_types !53 ptr @__sysv_signal(i32, ptr)

declare !qc.return_types !53 ptr @signal(i32, ptr)

declare !qc.return_types !30 i32 @kill(i32, i32)

declare !qc.return_types !30 i32 @killpg(i32, i32)

declare !qc.return_types !30 i32 @raise(i32)

declare !qc.return_types !53 ptr @ssignal(i32, ptr)

declare !qc.return_types !30 i32 @gsignal(i32)

declare !qc.return_types !21 void @psignal(i32, ptr)

declare !qc.return_types !21 void @psiginfo(ptr, ptr)

declare !qc.return_types !30 i32 @sigblock(i32)

declare !qc.return_types !30 i32 @sigsetmask(i32)

declare !qc.return_types !30 i32 @siggetmask()

declare !qc.return_types !30 i32 @sigemptyset(ptr)

declare !qc.return_types !30 i32 @sigfillset(ptr)

declare !qc.return_types !30 i32 @sigaddset(ptr, i32)

declare !qc.return_types !30 i32 @sigdelset(ptr, i32)

declare !qc.return_types !30 i32 @sigismember(ptr, i32)

declare !qc.return_types !30 i32 @sigprocmask(i32, ptr, ptr)

declare !qc.return_types !30 i32 @sigsuspend(ptr)

declare !qc.return_types !30 i32 @sigaction(i32, ptr, ptr)

declare !qc.return_types !30 i32 @sigpending(ptr)

declare !qc.return_types !30 i32 @sigwait(ptr, ptr)

declare !qc.return_types !30 i32 @sigwaitinfo(ptr, ptr)

declare !qc.return_types !30 i32 @sigtimedwait(ptr, ptr, ptr)

declare !qc.return_types !30 i32 @sigqueue(i32, i32, %sigval)

declare !qc.return_types !30 i32 @sigreturn(ptr)

declare !qc.return_types !30 i32 @siginterrupt(i32, i32)

declare !qc.return_types !30 i32 @sigaltstack(ptr, ptr)

declare !qc.return_types !30 i32 @sigstack(ptr, ptr)

declare !qc.return_types !30 i32 @pthread_sigmask(i32, ptr, ptr)

declare !qc.return_types !30 i32 @pthread_kill(i64, i32)

declare !qc.return_types !30 i32 @__libc_current_sigrtmin()

declare !qc.return_types !30 i32 @__libc_current_sigrtmax()

declare !qc.return_types !49 i32 @wait(ptr)

declare !qc.return_types !49 i32 @waitpid(i32, ptr, i32)

declare !qc.return_types !30 i32 @waitid(%idtype_t, i32, ptr, i32)

declare !qc.return_types !49 i32 @wait3(ptr, i32, ptr)

declare !qc.return_types !49 i32 @wait4(i32, ptr, i32, ptr)

declare !qc.return_types !54 i64 @clock()

declare !qc.return_types !55 i64 @time(ptr)

declare !qc.return_types !56 double @difftime(i64, i64)

declare !qc.return_types !55 i64 @mktime(ptr)

declare !qc.return_types !48 i64 @strftime(ptr, i64, ptr, ptr)

declare !qc.return_types !48 i64 @strftime_l(ptr, i64, ptr, ptr, ptr)

declare !qc.return_types !57 ptr @gmtime(ptr)

declare !qc.return_types !57 ptr @localtime(ptr)

declare !qc.return_types !57 ptr @gmtime_r(ptr, ptr)

declare !qc.return_types !57 ptr @localtime_r(ptr, ptr)

declare !qc.return_types !22 ptr @asctime(ptr)

declare !qc.return_types !22 ptr @ctime(ptr)

declare !qc.return_types !22 ptr @asctime_r(ptr, ptr)

declare !qc.return_types !22 ptr @ctime_r(ptr, ptr)

declare !qc.return_types !21 void @tzset()

declare !qc.return_types !55 i64 @timegm(ptr)

declare !qc.return_types !55 i64 @timelocal(ptr)

declare !qc.return_types !30 i32 @dysize(i32)

declare !qc.return_types !30 i32 @nanosleep(ptr, ptr)

declare !qc.return_types !30 i32 @clock_getres(i32, ptr)

declare !qc.return_types !30 i32 @clock_gettime(i32, ptr)

declare !qc.return_types !30 i32 @clock_settime(i32, ptr)

declare !qc.return_types !30 i32 @clock_nanosleep(i32, i32, ptr, ptr)

declare !qc.return_types !30 i32 @clock_getcpuclockid(i32, ptr)

declare !qc.return_types !30 i32 @timer_create(i32, ptr, ptr)

declare !qc.return_types !30 i32 @timer_delete(ptr)

declare !qc.return_types !30 i32 @timer_settime(ptr, i32, ptr, ptr)

declare !qc.return_types !30 i32 @timer_gettime(ptr, ptr)

declare !qc.return_types !30 i32 @timer_getoverrun(ptr)

declare !qc.return_types !30 i32 @timespec_get(ptr, i32)

declare !qc.return_types !52 ptr @memcpy(ptr, ptr, i64)

declare !qc.return_types !52 ptr @memmove(ptr, ptr, i64)

declare !qc.return_types !52 ptr @memccpy(ptr, ptr, i32, i64)

declare !qc.return_types !52 ptr @memset(ptr, i32, i64)

declare !qc.return_types !52 ptr @memset_explicit(ptr, i32, i64)

declare !qc.return_types !30 i32 @memcmp(ptr, ptr, i64)

declare !qc.return_types !30 i32 @__memcmpeq(ptr, ptr, i64)

declare !qc.return_types !52 ptr @memchr(ptr, i32, i64)

declare !qc.return_types !22 ptr @strcpy(ptr, ptr)

declare !qc.return_types !22 ptr @strncpy(ptr, ptr, i64)

declare !qc.return_types !22 ptr @strcat(ptr, ptr)

declare !qc.return_types !22 ptr @strncat(ptr, ptr, i64)

declare !qc.return_types !30 i32 @strcmp(ptr, ptr)

declare !qc.return_types !30 i32 @strncmp(ptr, ptr, i64)

declare !qc.return_types !30 i32 @strcoll(ptr, ptr)

declare !qc.return_types !25 i64 @strxfrm(ptr, ptr, i64)

declare !qc.return_types !30 i32 @strcoll_l(ptr, ptr, ptr)

declare !qc.return_types !48 i64 @strxfrm_l(ptr, ptr, i64, ptr)

declare !qc.return_types !22 ptr @strdup(ptr)

declare !qc.return_types !22 ptr @strndup(ptr, i64)

declare !qc.return_types !22 ptr @strchr(ptr, i32)

declare !qc.return_types !22 ptr @strrchr(ptr, i32)

declare !qc.return_types !22 ptr @strchrnul(ptr, i32)

declare !qc.return_types !25 i64 @strcspn(ptr, ptr)

declare !qc.return_types !25 i64 @strspn(ptr, ptr)

declare !qc.return_types !22 ptr @strpbrk(ptr, ptr)

declare !qc.return_types !22 ptr @strstr(ptr, ptr)

declare !qc.return_types !22 ptr @strtok(ptr, ptr)

declare !qc.return_types !22 ptr @__strtok_r(ptr, ptr, ptr)

declare !qc.return_types !22 ptr @strtok_r(ptr, ptr, ptr)

declare !qc.return_types !22 ptr @strcasestr(ptr, ptr)

declare !qc.return_types !52 ptr @memmem(ptr, i64, ptr, i64)

declare !qc.return_types !52 ptr @__mempcpy(ptr, ptr, i64)

declare !qc.return_types !52 ptr @mempcpy(ptr, ptr, i64)

declare !qc.return_types !48 i64 @strnlen(ptr, i64)

declare !qc.return_types !22 ptr @strerror(i32)

declare !qc.return_types !30 i32 @strerror_r(i32, ptr, i64)

declare !qc.return_types !22 ptr @strerror_l(i32, ptr)

declare !qc.return_types !30 i32 @bcmp(ptr, ptr, i64)

declare !qc.return_types !21 void @bcopy(ptr, ptr, i64)

declare !qc.return_types !21 void @bzero(ptr, i64)

declare !qc.return_types !22 ptr @index(ptr, i32)

declare !qc.return_types !22 ptr @rindex(ptr, i32)

declare !qc.return_types !30 i32 @ffs(i32)

declare !qc.return_types !30 i32 @ffsl(i64)

declare !qc.return_types !30 i32 @ffsll(i64)

declare !qc.return_types !30 i32 @strcasecmp(ptr, ptr)

declare !qc.return_types !30 i32 @strncasecmp(ptr, ptr, i64)

declare !qc.return_types !30 i32 @strcasecmp_l(ptr, ptr, ptr)

declare !qc.return_types !30 i32 @strncasecmp_l(ptr, ptr, i64, ptr)

declare !qc.return_types !21 void @explicit_bzero(ptr, i64)

declare !qc.return_types !22 ptr @strsep(ptr, ptr)

declare !qc.return_types !22 ptr @strsignal(i32)

declare !qc.return_types !22 ptr @__stpcpy(ptr, ptr)

declare !qc.return_types !22 ptr @stpcpy(ptr, ptr)

declare !qc.return_types !22 ptr @__stpncpy(ptr, ptr, i64)

declare !qc.return_types !22 ptr @stpncpy(ptr, ptr, i64)

declare !qc.return_types !25 i64 @strlcpy(ptr, ptr, i64)

declare !qc.return_types !25 i64 @strlcat(ptr, ptr, i64)

define weak_odr i64 @"CQB::Engine::nowMs"() !qc.return_types !47 {
entry:
  %ts = alloca %timespec, align 8
  store %timespec zeroinitializer, ptr %ts, align 8
  store %timespec zeroinitializer, ptr %ts, align 8
  %ts1 = load %timespec, ptr %ts, align 8
  %calltmp = call i32 @clock_gettime(i32 1, ptr %ts)
  %tv_sec_ptr = getelementptr inbounds nuw %timespec, ptr %ts, i32 0, i32 0
  %tv_sec = load i64, ptr %tv_sec_ptr, align 8
  %mul = mul i64 %tv_sec, 1000
  %tv_nsec_ptr = getelementptr inbounds nuw %timespec, ptr %ts, i32 0, i32 1
  %tv_nsec = load i64, ptr %tv_nsec_ptr, align 8
  %sdiv = sdiv i64 %tv_nsec, 1000000
  %add = add i64 %mul, %sdiv
  ret i64 %add
}

define weak_odr i1 @"CQB::Engine::isProgressLine"(ptr %s, i32 %start) !qc.return_types !27 {
entry:
  %"CQB::Engine::c" = alloca i8, align 1
  %"CQB::Engine::j" = alloca i32, align 4
  %start2 = alloca i32, align 4
  %s1 = alloca ptr, align 8
  store ptr null, ptr %s1, align 8
  store ptr %s, ptr %s1, align 8
  store i32 0, ptr %start2, align 4
  store i32 %start, ptr %start2, align 4
  %start3 = load i32, ptr %start2, align 4
  %s4 = load ptr, ptr %s1, align 8
  %ptr_arr_addr = getelementptr i8, ptr %s4, i32 %start3
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne = icmp ne i8 %ptr_arr_val, 91
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  ret i1 false

ifcont:                                           ; preds = %entry
  store i32 0, ptr %"CQB::Engine::j", align 4
  %start5 = load i32, ptr %start2, align 4
  %add = add i32 %start5, 1
  store i32 %add, ptr %"CQB::Engine::j", align 4
  br label %while.cond

while.cond:                                       ; preds = %ifcont26, %ifcont
  %j = load i32, ptr %"CQB::Engine::j", align 4
  %s6 = load ptr, ptr %s1, align 8
  %ptr_arr_addr7 = getelementptr i8, ptr %s6, i32 %j
  %ptr_arr_val8 = load i8, ptr %ptr_arr_addr7, align 1
  %icmpne9 = icmp ne i8 %ptr_arr_val8, 93
  br i1 %icmpne9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i8 0, ptr %"CQB::Engine::c", align 1
  %j10 = load i32, ptr %"CQB::Engine::j", align 4
  %s11 = load ptr, ptr %s1, align 8
  %ptr_arr_addr12 = getelementptr i8, ptr %s11, i32 %j10
  %ptr_arr_val13 = load i8, ptr %ptr_arr_addr12, align 1
  store i8 %ptr_arr_val13, ptr %"CQB::Engine::c", align 1
  %c = load i8, ptr %"CQB::Engine::c", align 1
  %icmpeq = icmp eq i8 %c, 0
  br i1 %icmpeq, label %or.end, label %or.rhs

while.end:                                        ; preds = %while.cond
  ret i1 true

or.rhs:                                           ; preds = %while.body
  %c14 = load i8, ptr %"CQB::Engine::c", align 1
  %icmpeq15 = icmp eq i8 %c14, 10
  br label %or.end

or.end:                                           ; preds = %or.rhs, %while.body
  %or = phi i1 [ true, %while.body ], [ %icmpeq15, %or.rhs ]
  br i1 %or, label %then16, label %ifcont17

then16:                                           ; preds = %or.end
  ret i1 false

ifcont17:                                         ; preds = %or.end
  %c18 = load i8, ptr %"CQB::Engine::c", align 1
  %icmpge = icmp sge i8 %c18, 65
  br i1 %icmpge, label %and.rhs, label %and.end

and.rhs:                                          ; preds = %ifcont17
  %c19 = load i8, ptr %"CQB::Engine::c", align 1
  %icmple = icmp sle i8 %c19, 90
  br label %and.end

and.end:                                          ; preds = %and.rhs, %ifcont17
  %and = phi i1 [ false, %ifcont17 ], [ %icmple, %and.rhs ]
  br i1 %and, label %or.end21, label %or.rhs20

or.rhs20:                                         ; preds = %and.end
  %c22 = load i8, ptr %"CQB::Engine::c", align 1
  %icmpeq23 = icmp eq i8 %c22, 32
  br label %or.end21

or.end21:                                         ; preds = %or.rhs20, %and.end
  %or24 = phi i1 [ true, %and.end ], [ %icmpeq23, %or.rhs20 ]
  %not = xor i1 %or24, true
  br i1 %not, label %then25, label %ifcont26

then25:                                           ; preds = %or.end21
  ret i1 false

ifcont26:                                         ; preds = %or.end21
  %inc_deref = load i32, ptr %"CQB::Engine::j", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::j", align 4
  br label %while.cond
}

define weak_odr i32 @"CQB::Engine::countDone"(ptr %s) !qc.return_types !30 {
entry:
  %"CQB::Engine::i" = alloca i32, align 4
  %"CQB::Engine::n" = alloca i32, align 4
  %s1 = alloca ptr, align 8
  store ptr null, ptr %s1, align 8
  store ptr %s, ptr %s1, align 8
  store i32 0, ptr %"CQB::Engine::n", align 4
  store i32 0, ptr %"CQB::Engine::n", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %while.cond

while.cond:                                       ; preds = %ifcont30, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %s2 = load ptr, ptr %s1, align 8
  %ptr_arr_addr = getelementptr i8, ptr %s2, i32 %i
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne = icmp ne i8 %ptr_arr_val, 0
  br i1 %icmpne, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %i3 = load i32, ptr %"CQB::Engine::i", align 4
  %s4 = load ptr, ptr %s1, align 8
  %ptr_arr_addr5 = getelementptr i8, ptr %s4, i32 %i3
  %ptr_arr_val6 = load i8, ptr %ptr_arr_addr5, align 1
  %s7 = load ptr, ptr %s1, align 8
  %i8 = load i32, ptr %"CQB::Engine::i", align 4
  %lval_ptr_arr_addr = getelementptr i8, ptr %s7, i32 %i8
  %calltmp = call i32 @strncmp(ptr %lval_ptr_arr_addr, ptr @.str.42, i64 6)
  %icmpeq = icmp eq i32 %calltmp, 0
  br i1 %icmpeq, label %then, label %ifcont

while.end:                                        ; preds = %while.cond
  %n = load i32, ptr %"CQB::Engine::n", align 4
  ret i32 %n

then:                                             ; preds = %while.body
  %inc_deref = load i32, ptr %"CQB::Engine::n", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::n", align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %while.body
  br label %while.cond9

while.cond9:                                      ; preds = %while.body10, %ifcont
  %i12 = load i32, ptr %"CQB::Engine::i", align 4
  %s13 = load ptr, ptr %s1, align 8
  %ptr_arr_addr14 = getelementptr i8, ptr %s13, i32 %i12
  %ptr_arr_val15 = load i8, ptr %ptr_arr_addr14, align 1
  %icmpne16 = icmp ne i8 %ptr_arr_val15, 10
  br i1 %icmpne16, label %and.rhs, label %and.end

while.body10:                                     ; preds = %and.end
  %inc_deref22 = load i32, ptr %"CQB::Engine::i", align 4
  %inc23 = add i32 %inc_deref22, 1
  store i32 %inc23, ptr %"CQB::Engine::i", align 4
  br label %while.cond9

while.end11:                                      ; preds = %and.end
  %i24 = load i32, ptr %"CQB::Engine::i", align 4
  %s25 = load ptr, ptr %s1, align 8
  %ptr_arr_addr26 = getelementptr i8, ptr %s25, i32 %i24
  %ptr_arr_val27 = load i8, ptr %ptr_arr_addr26, align 1
  %icmpeq28 = icmp eq i8 %ptr_arr_val27, 10
  br i1 %icmpeq28, label %then29, label %ifcont30

and.rhs:                                          ; preds = %while.cond9
  %i17 = load i32, ptr %"CQB::Engine::i", align 4
  %s18 = load ptr, ptr %s1, align 8
  %ptr_arr_addr19 = getelementptr i8, ptr %s18, i32 %i17
  %ptr_arr_val20 = load i8, ptr %ptr_arr_addr19, align 1
  %icmpne21 = icmp ne i8 %ptr_arr_val20, 0
  br label %and.end

and.end:                                          ; preds = %and.rhs, %while.cond9
  %and = phi i1 [ false, %while.cond9 ], [ %icmpne21, %and.rhs ]
  br i1 %and, label %while.body10, label %while.end11

then29:                                           ; preds = %while.end11
  %inc_deref31 = load i32, ptr %"CQB::Engine::i", align 4
  %inc32 = add i32 %inc_deref31, 1
  store i32 %inc32, ptr %"CQB::Engine::i", align 4
  br label %ifcont30

ifcont30:                                         ; preds = %then29, %while.end11
  br label %while.cond
}

define weak_odr void @"CQB::Engine::printWithoutProgress"(ptr %s) !qc.return_types !21 {
entry:
  %"CQB::Engine::atNewline" = alloca i1, align 1
  %"CQB::Engine::start" = alloca i32, align 4
  %"CQB::Engine::i" = alloca i32, align 4
  %s1 = alloca ptr, align 8
  store ptr null, ptr %s1, align 8
  store ptr %s, ptr %s1, align 8
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %while.cond

while.cond:                                       ; preds = %ifcont31, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %s2 = load ptr, ptr %s1, align 8
  %ptr_arr_addr = getelementptr i8, ptr %s2, i32 %i
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne = icmp ne i8 %ptr_arr_val, 0
  br i1 %icmpne, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %"CQB::Engine::start", align 4
  %i3 = load i32, ptr %"CQB::Engine::i", align 4
  store i32 %i3, ptr %"CQB::Engine::start", align 4
  br label %while.cond4

while.end:                                        ; preds = %while.cond
  ret void

while.cond4:                                      ; preds = %while.body5, %while.body
  %i7 = load i32, ptr %"CQB::Engine::i", align 4
  %s8 = load ptr, ptr %s1, align 8
  %ptr_arr_addr9 = getelementptr i8, ptr %s8, i32 %i7
  %ptr_arr_val10 = load i8, ptr %ptr_arr_addr9, align 1
  %icmpne11 = icmp ne i8 %ptr_arr_val10, 10
  br i1 %icmpne11, label %and.rhs, label %and.end

while.body5:                                      ; preds = %and.end
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::i", align 4
  br label %while.cond4

while.end6:                                       ; preds = %and.end
  store i1 false, ptr %"CQB::Engine::atNewline", align 1
  %i17 = load i32, ptr %"CQB::Engine::i", align 4
  %s18 = load ptr, ptr %s1, align 8
  %ptr_arr_addr19 = getelementptr i8, ptr %s18, i32 %i17
  %ptr_arr_val20 = load i8, ptr %ptr_arr_addr19, align 1
  %icmpeq = icmp eq i8 %ptr_arr_val20, 10
  store i1 %icmpeq, ptr %"CQB::Engine::atNewline", align 1
  %i21 = load i32, ptr %"CQB::Engine::i", align 4
  %s22 = load ptr, ptr %s1, align 8
  %ptr_arr_asi = getelementptr i8, ptr %s22, i32 %i21
  store i8 0, ptr %ptr_arr_asi, align 1
  %s23 = load ptr, ptr %s1, align 8
  %start = load i32, ptr %"CQB::Engine::start", align 4
  %calltmp = call i1 @"CQB::Engine::isProgressLine"(ptr %s23, i32 %start)
  %not = xor i1 %calltmp, true
  br i1 %not, label %then, label %ifcont

and.rhs:                                          ; preds = %while.cond4
  %i12 = load i32, ptr %"CQB::Engine::i", align 4
  %s13 = load ptr, ptr %s1, align 8
  %ptr_arr_addr14 = getelementptr i8, ptr %s13, i32 %i12
  %ptr_arr_val15 = load i8, ptr %ptr_arr_addr14, align 1
  %icmpne16 = icmp ne i8 %ptr_arr_val15, 0
  br label %and.end

and.end:                                          ; preds = %and.rhs, %while.cond4
  %and = phi i1 [ false, %while.cond4 ], [ %icmpne16, %and.rhs ]
  br i1 %and, label %while.body5, label %while.end6

then:                                             ; preds = %while.end6
  %start24 = load i32, ptr %"CQB::Engine::start", align 4
  %s25 = load ptr, ptr %s1, align 8
  %ptr_arr_addr26 = getelementptr i8, ptr %s25, i32 %start24
  %ptr_arr_val27 = load i8, ptr %ptr_arr_addr26, align 1
  %s28 = load ptr, ptr %s1, align 8
  %start29 = load i32, ptr %"CQB::Engine::start", align 4
  %lval_ptr_arr_addr = getelementptr i8, ptr %s28, i32 %start29
  %varadics_array = alloca ptr, align 8
  %0 = getelementptr ptr, ptr %varadics_array, i32 0
  store ptr %lval_ptr_arr_addr, ptr %0, align 8
  %variadic_struct = alloca { ptr, i32, i32 }, align 8
  %1 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0
  store ptr %varadics_array, ptr %1, align 8
  %2 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2
  store i32 0, ptr %3, align 4
  call void @"IO::qout"(ptr @.str.43, ptr %variadic_struct)
  br label %ifcont

ifcont:                                           ; preds = %then, %while.end6
  %atNewline = load i1, ptr %"CQB::Engine::atNewline", align 1
  br i1 %atNewline, label %then30, label %ifcont31

then30:                                           ; preds = %ifcont
  %i32 = load i32, ptr %"CQB::Engine::i", align 4
  %s33 = load ptr, ptr %s1, align 8
  %ptr_arr_asi34 = getelementptr i8, ptr %s33, i32 %i32
  store i8 10, ptr %ptr_arr_asi34, align 1
  %inc_deref35 = load i32, ptr %"CQB::Engine::i", align 4
  %inc36 = add i32 %inc_deref35, 1
  store i32 %inc36, ptr %"CQB::Engine::i", align 4
  br label %ifcont31

ifcont31:                                         ; preds = %then30, %ifcont
  br label %while.cond
}

define weak_odr i1 @"CQB::Engine::exited"(i32 %status) !qc.return_types !27 {
entry:
  %status1 = alloca i32, align 4
  store i32 0, ptr %status1, align 4
  store i32 %status, ptr %status1, align 4
  %status2 = load i32, ptr %status1, align 4
  %andtmp = and i32 %status2, 127
  %icmpeq = icmp eq i32 %andtmp, 0
  ret i1 %icmpeq
}

define weak_odr i32 @"CQB::Engine::exitStatus"(i32 %status) !qc.return_types !30 {
entry:
  %status1 = alloca i32, align 4
  store i32 0, ptr %status1, align 4
  store i32 %status, ptr %status1, align 4
  %status2 = load i32, ptr %status1, align 4
  %ashrtmp = ashr i32 %status2, 8
  %andtmp = and i32 %ashrtmp, 255
  ret i32 %andtmp
}

define weak_odr i1 @"CQB::Engine::signaled"(i32 %status) !qc.return_types !27 {
entry:
  %"CQB::Engine::sig" = alloca i32, align 4
  %status1 = alloca i32, align 4
  store i32 0, ptr %status1, align 4
  store i32 %status, ptr %status1, align 4
  store i32 0, ptr %"CQB::Engine::sig", align 4
  %status2 = load i32, ptr %status1, align 4
  %andtmp = and i32 %status2, 127
  store i32 %andtmp, ptr %"CQB::Engine::sig", align 4
  %sig = load i32, ptr %"CQB::Engine::sig", align 4
  %icmpne = icmp ne i32 %sig, 0
  br i1 %icmpne, label %and.rhs, label %and.end

and.rhs:                                          ; preds = %entry
  %sig3 = load i32, ptr %"CQB::Engine::sig", align 4
  %icmpne4 = icmp ne i32 %sig3, 127
  br label %and.end

and.end:                                          ; preds = %and.rhs, %entry
  %and = phi i1 [ false, %entry ], [ %icmpne4, %and.rhs ]
  ret i1 %and
}

define weak_odr i32 @"CQB::Engine::termSignal"(i32 %status) !qc.return_types !30 {
entry:
  %status1 = alloca i32, align 4
  store i32 0, ptr %status1, align 4
  store i32 %status, ptr %status1, align 4
  %status2 = load i32, ptr %status1, align 4
  %andtmp = and i32 %status2, 127
  ret i32 %andtmp
}

define weak_odr i32 @"CQB::Engine::decodeStatus"(i32 %status) !qc.return_types !30 {
entry:
  %status1 = alloca i32, align 4
  store i32 0, ptr %status1, align 4
  store i32 %status, ptr %status1, align 4
  %status2 = load i32, ptr %status1, align 4
  %calltmp = call i1 @"CQB::Engine::exited"(i32 %status2)
  br i1 %calltmp, label %then, label %ifcont

then:                                             ; preds = %entry
  %status3 = load i32, ptr %status1, align 4
  %calltmp4 = call i32 @"CQB::Engine::exitStatus"(i32 %status3)
  ret i32 %calltmp4

ifcont:                                           ; preds = %entry
  %status5 = load i32, ptr %status1, align 4
  %calltmp6 = call i1 @"CQB::Engine::signaled"(i32 %status5)
  br i1 %calltmp6, label %then7, label %ifcont8

then7:                                            ; preds = %ifcont
  %status9 = load i32, ptr %status1, align 4
  %calltmp10 = call i32 @"CQB::Engine::termSignal"(i32 %status9)
  %add = add i32 128, %calltmp10
  ret i32 %add

ifcont8:                                          ; preds = %ifcont
  ret i32 -1
}

define weak_odr %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %args, ptr %label, i1 %tty) !qc.return_types !58 {
entry:
  %"CQB::Engine::status" = alloca i32, align 4
  %"CQB::Engine::j" = alloca i32, align 4
  %"CQB::Engine::p" = alloca i32, align 4
  %"CQB::Engine::len" = alloca i32, align 4
  %"CQB::Engine::i" = alloca i32, align 4
  %s = alloca %"String::Str", align 8
  %"CQB::Engine::n" = alloca i32, align 4
  %"CQB::Engine::lastStepMs" = alloca i64, align 8
  %"CQB::Engine::phaseStart" = alloca i64, align 8
  %"CQB::Engine::steps" = alloca i32, align 4
  %"CQB::Engine::lineLen" = alloca i32, align 4
  %"CQB::Engine::phase" = alloca [32 x i8], align 1
  %"CQB::Engine::line" = alloca [512 x i8], align 1
  %"CQB::Engine::buf" = alloca [4096 x i8], align 1
  %outs = alloca %"String::Str", align 8
  %"CQB::Engine::rc" = alloca i32, align 4
  %"CQB::Engine::pid" = alloca i32, align 4
  %"CQB::Engine::argv" = alloca ptr, align 8
  %fa = alloca %posix_spawn_file_actions_t, align 8
  %"CQB::Engine::fds" = alloca [2 x i32], align 4
  %tty3 = alloca i1, align 1
  %label2 = alloca ptr, align 8
  %args1 = alloca %"Vector::Vec<char*>", align 8
  store %"Vector::Vec<char*>" zeroinitializer, ptr %args1, align 8
  store %"Vector::Vec<char*>" %args, ptr %args1, align 8
  store ptr null, ptr %label2, align 8
  store ptr %label, ptr %label2, align 8
  store i1 false, ptr %tty3, align 1
  store i1 %tty, ptr %tty3, align 1
  store [2 x i32] zeroinitializer, ptr %"CQB::Engine::fds", align 4
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::fds", i8 0, i64 8, i1 false)
  %decayptr = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %calltmp = call i32 @pipe(ptr %decayptr)
  %icmpne = icmp ne i32 %calltmp, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  ret %"CQB::Engine::RunResult" { i32 -1, ptr @.str.44 }

ifcont:                                           ; preds = %entry
  call void @llvm.memset.inline.p0.i64(ptr align 8 %fa, i8 0, i64 80, i1 false)
  store %posix_spawn_file_actions_t zeroinitializer, ptr %fa, align 8
  %fa4 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %calltmp5 = call i32 @posix_spawn_file_actions_init(ptr %fa)
  %fa6 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %arr_elem_ptr = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1
  %arr_elem = load i32, ptr %arr_elem_ptr, align 4
  %calltmp7 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %arr_elem, i32 1)
  %fa8 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %arr_elem_ptr9 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1
  %arr_elem10 = load i32, ptr %arr_elem_ptr9, align 4
  %calltmp11 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %arr_elem10, i32 2)
  %fa12 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %arr_elem_ptr13 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %arr_elem14 = load i32, ptr %arr_elem_ptr13, align 4
  %calltmp15 = call i32 @posix_spawn_file_actions_addclose(ptr %fa, i32 %arr_elem14)
  %fa16 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %arr_elem_ptr17 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1
  %arr_elem18 = load i32, ptr %arr_elem_ptr17, align 4
  %calltmp19 = call i32 @posix_spawn_file_actions_addclose(ptr %fa, i32 %arr_elem18)
  call void @"Vector::Vec<char*>_push_T"(ptr %args1, ptr null)
  store ptr null, ptr %"CQB::Engine::argv", align 8
  %0 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %args1, i32 0, i32 0
  %data = load ptr, ptr %0, align 8
  store ptr %data, ptr %"CQB::Engine::argv", align 8
  store i32 0, ptr %"CQB::Engine::pid", align 4
  store i32 0, ptr %"CQB::Engine::pid", align 4
  store i32 0, ptr %"CQB::Engine::rc", align 4
  %pid = load i32, ptr %"CQB::Engine::pid", align 4
  %argv = load ptr, ptr %"CQB::Engine::argv", align 8
  %ptr_arr_addr = getelementptr ptr, ptr %argv, i32 0
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  %fa20 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %argv21 = load ptr, ptr %"CQB::Engine::argv", align 8
  %__environ = load ptr, ptr @__environ, align 8
  %calltmp22 = call i32 @posix_spawnp(ptr %"CQB::Engine::pid", ptr %ptr_arr_val, ptr %fa, ptr null, ptr %argv21, ptr %__environ)
  store i32 %calltmp22, ptr %"CQB::Engine::rc", align 4
  %fa23 = load %posix_spawn_file_actions_t, ptr %fa, align 8
  %calltmp24 = call i32 @posix_spawn_file_actions_destroy(ptr %fa)
  %arr_elem_ptr25 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1
  %arr_elem26 = load i32, ptr %arr_elem_ptr25, align 4
  call void @qc_close(i32 %arr_elem26)
  %rc = load i32, ptr %"CQB::Engine::rc", align 4
  %icmpne27 = icmp ne i32 %rc, 0
  br i1 %icmpne27, label %then28, label %ifcont29

then28:                                           ; preds = %ifcont
  %arr_elem_ptr30 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %arr_elem31 = load i32, ptr %arr_elem_ptr30, align 4
  call void @qc_close(i32 %arr_elem31)
  ret %"CQB::Engine::RunResult" { i32 -1, ptr @.str.45 }

ifcont29:                                         ; preds = %ifcont
  store %"String::Str" zeroinitializer, ptr %outs, align 8
  call void @"String::Str_Str_char*"(ptr %outs, ptr @.str.46)
  call void @llvm.memset.inline.p0.i64(ptr align 1 %"CQB::Engine::buf", i8 0, i64 4096, i1 false)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::buf", i8 0, i64 4096, i1 false)
  call void @llvm.memset.inline.p0.i64(ptr align 1 %"CQB::Engine::line", i8 0, i64 512, i1 false)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::line", i8 0, i64 512, i1 false)
  store [32 x i8] zeroinitializer, ptr %"CQB::Engine::phase", align 1
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::phase", i8 0, i64 32, i1 false)
  store i32 0, ptr %"CQB::Engine::lineLen", align 4
  store i32 0, ptr %"CQB::Engine::lineLen", align 4
  store i32 0, ptr %"CQB::Engine::steps", align 4
  store i32 0, ptr %"CQB::Engine::steps", align 4
  store i64 0, ptr %"CQB::Engine::phaseStart", align 8
  %calltmp32 = call i64 @"CQB::Engine::nowMs"()
  store i64 %calltmp32, ptr %"CQB::Engine::phaseStart", align 8
  store i64 0, ptr %"CQB::Engine::lastStepMs", align 8
  store i64 0, ptr %"CQB::Engine::lastStepMs", align 8
  store i32 0, ptr %"CQB::Engine::n", align 4
  %arr_elem_ptr33 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %arr_elem34 = load i32, ptr %arr_elem_ptr33, align 4
  %decayptr35 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0
  %builtin_call = call i64 @qc_read(i32 %arr_elem34, ptr %decayptr35, i64 4095)
  %trunc = trunc i64 %builtin_call to i32
  store i32 %trunc, ptr %"CQB::Engine::n", align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %ifcont29
  %n = load i32, ptr %"CQB::Engine::n", align 4
  %icmpgt = icmp sgt i32 %n, 0
  br i1 %icmpgt, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %n36 = load i32, ptr %"CQB::Engine::n", align 4
  %arr_elem_ptr37 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %n36
  store i8 0, ptr %arr_elem_ptr37, align 1
  store %"String::Str" zeroinitializer, ptr %s, align 8
  %arr_elem_ptr38 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0
  %arr_elem39 = load i8, ptr %arr_elem_ptr38, align 1
  %lval_arr_addr = getelementptr [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0
  call void @"String::Str_Str_char*"(ptr %s, ptr %lval_arr_addr)
  %assign_lhs_val = load %"String::Str", ptr %outs, align 8
  %s40 = load %"String::Str", ptr %s, align 8
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %outs, %"String::Str" %s40)
  call void @"String::Str__destroy"(ptr %s)
  store i32 0, ptr %"CQB::Engine::i", align 4
  store i32 0, ptr %"CQB::Engine::i", align 4
  br label %for.cond

while.end:                                        ; preds = %while.cond
  %arr_elem_ptr113 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %arr_elem114 = load i32, ptr %arr_elem_ptr113, align 4
  call void @qc_close(i32 %arr_elem114)
  store i32 0, ptr %"CQB::Engine::status", align 4
  store i32 0, ptr %"CQB::Engine::status", align 4
  %pid115 = load i32, ptr %"CQB::Engine::pid", align 4
  %status = load i32, ptr %"CQB::Engine::status", align 4
  %calltmp116 = call i32 @waitpid(i32 %pid115, ptr %"CQB::Engine::status", i32 0)
  %status117 = load i32, ptr %"CQB::Engine::status", align 4
  %calltmp118 = call i32 @"CQB::Engine::decodeStatus"(i32 %status117)
  %1 = insertvalue %"CQB::Engine::RunResult" zeroinitializer, i32 %calltmp118, 0
  %c_str_result = call ptr @"String::Str_c_str"(ptr %outs)
  %2 = insertvalue %"CQB::Engine::RunResult" %1, ptr %c_str_result, 1
  ret %"CQB::Engine::RunResult" %2

for.cond:                                         ; preds = %for.inc, %while.body
  %i = load i32, ptr %"CQB::Engine::i", align 4
  %n41 = load i32, ptr %"CQB::Engine::n", align 4
  %icmplt = icmp slt i32 %i, %n41
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i42 = load i32, ptr %"CQB::Engine::i", align 4
  %arr_elem_ptr43 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %i42
  %arr_elem44 = load i8, ptr %arr_elem_ptr43, align 1
  %icmpne45 = icmp ne i8 %arr_elem44, 10
  br i1 %icmpne45, label %then46, label %ifcont47

for.inc:                                          ; preds = %ifcont100, %then63, %ifcont50
  %inc_deref106 = load i32, ptr %"CQB::Engine::i", align 4
  %inc107 = add i32 %inc_deref106, 1
  store i32 %inc107, ptr %"CQB::Engine::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arr_elem_ptr108 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0
  %arr_elem109 = load i32, ptr %arr_elem_ptr108, align 4
  %decayptr110 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0
  %builtin_call111 = call i64 @qc_read(i32 %arr_elem109, ptr %decayptr110, i64 4095)
  %trunc112 = trunc i64 %builtin_call111 to i32
  store i32 %trunc112, ptr %"CQB::Engine::n", align 4
  br label %while.cond

then46:                                           ; preds = %for.body
  %lineLen = load i32, ptr %"CQB::Engine::lineLen", align 4
  %icmplt48 = icmp slt i32 %lineLen, 511
  br i1 %icmplt48, label %then49, label %ifcont50

ifcont47:                                         ; preds = %for.body
  %lineLen56 = load i32, ptr %"CQB::Engine::lineLen", align 4
  %arr_elem_ptr57 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %lineLen56
  store i8 0, ptr %arr_elem_ptr57, align 1
  store i32 0, ptr %"CQB::Engine::len", align 4
  %lineLen58 = load i32, ptr %"CQB::Engine::lineLen", align 4
  store i32 %lineLen58, ptr %"CQB::Engine::len", align 4
  store i32 0, ptr %"CQB::Engine::lineLen", align 4
  %arr_elem_ptr59 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 0
  %arr_elem60 = load i8, ptr %arr_elem_ptr59, align 1
  %lval_arr_addr61 = getelementptr [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 0
  %calltmp62 = call i1 @"CQB::Engine::isProgressLine"(ptr %lval_arr_addr61, i32 0)
  %not = xor i1 %calltmp62, true
  br i1 %not, label %then63, label %ifcont64

then49:                                           ; preds = %then46
  %lineLen51 = load i32, ptr %"CQB::Engine::lineLen", align 4
  %i52 = load i32, ptr %"CQB::Engine::i", align 4
  %arr_elem_ptr53 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %i52
  %arr_elem54 = load i8, ptr %arr_elem_ptr53, align 1
  %arr_elem_ptr55 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %lineLen51
  store i8 %arr_elem54, ptr %arr_elem_ptr55, align 1
  %inc_deref = load i32, ptr %"CQB::Engine::lineLen", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"CQB::Engine::lineLen", align 4
  br label %ifcont50

ifcont50:                                         ; preds = %then49, %then46
  br label %for.inc

then63:                                           ; preds = %ifcont47
  br label %for.inc

ifcont64:                                         ; preds = %ifcont47
  store i32 0, ptr %"CQB::Engine::p", align 4
  store i32 0, ptr %"CQB::Engine::p", align 4
  store i32 0, ptr %"CQB::Engine::j", align 4
  store i32 1, ptr %"CQB::Engine::j", align 4
  br label %while.cond65

while.cond65:                                     ; preds = %while.body66, %ifcont64
  %j = load i32, ptr %"CQB::Engine::j", align 4
  %len = load i32, ptr %"CQB::Engine::len", align 4
  %icmplt68 = icmp slt i32 %j, %len
  br i1 %icmplt68, label %and.rhs, label %and.end

while.body66:                                     ; preds = %and.end74
  %p77 = load i32, ptr %"CQB::Engine::p", align 4
  %j78 = load i32, ptr %"CQB::Engine::j", align 4
  %arr_elem_ptr79 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %j78
  %arr_elem80 = load i8, ptr %arr_elem_ptr79, align 1
  %arr_elem_ptr81 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 %p77
  store i8 %arr_elem80, ptr %arr_elem_ptr81, align 1
  %inc_deref82 = load i32, ptr %"CQB::Engine::p", align 4
  %inc83 = add i32 %inc_deref82, 1
  store i32 %inc83, ptr %"CQB::Engine::p", align 4
  %inc_deref84 = load i32, ptr %"CQB::Engine::j", align 4
  %inc85 = add i32 %inc_deref84, 1
  store i32 %inc85, ptr %"CQB::Engine::j", align 4
  br label %while.cond65

while.end67:                                      ; preds = %and.end74
  %p86 = load i32, ptr %"CQB::Engine::p", align 4
  %arr_elem_ptr87 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 %p86
  store i8 0, ptr %arr_elem_ptr87, align 1
  %arr_elem_ptr88 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0
  %arr_elem89 = load i8, ptr %arr_elem_ptr88, align 1
  %lval_arr_addr90 = getelementptr [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0
  %calltmp91 = call i32 @strncmp(ptr %lval_arr_addr90, ptr @.str.47, i64 5)
  %icmpeq = icmp eq i32 %calltmp91, 0
  br i1 %icmpeq, label %then92, label %else

and.rhs:                                          ; preds = %while.cond65
  %j69 = load i32, ptr %"CQB::Engine::j", align 4
  %arr_elem_ptr70 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %j69
  %arr_elem71 = load i8, ptr %arr_elem_ptr70, align 1
  %icmpne72 = icmp ne i8 %arr_elem71, 93
  br label %and.end

and.end:                                          ; preds = %and.rhs, %while.cond65
  %and = phi i1 [ false, %while.cond65 ], [ %icmpne72, %and.rhs ]
  br i1 %and, label %and.rhs73, label %and.end74

and.rhs73:                                        ; preds = %and.end
  %p = load i32, ptr %"CQB::Engine::p", align 4
  %icmplt75 = icmp slt i32 %p, 31
  br label %and.end74

and.end74:                                        ; preds = %and.rhs73, %and.end
  %and76 = phi i1 [ false, %and.end ], [ %icmplt75, %and.rhs73 ]
  br i1 %and76, label %while.body66, label %while.end67

then92:                                           ; preds = %while.end67
  %inc_deref94 = load i32, ptr %"CQB::Engine::steps", align 4
  %inc95 = add i32 %inc_deref94, 1
  store i32 %inc95, ptr %"CQB::Engine::steps", align 4
  %calltmp96 = call i64 @"CQB::Engine::nowMs"()
  %phaseStart = load i64, ptr %"CQB::Engine::phaseStart", align 8
  %sub = sub i64 %calltmp96, %phaseStart
  store i64 %sub, ptr %"CQB::Engine::lastStepMs", align 8
  br label %ifcont93

ifcont93:                                         ; preds = %else, %then92
  %tty98 = load i1, ptr %tty3, align 1
  br i1 %tty98, label %then99, label %ifcont100

else:                                             ; preds = %while.end67
  %calltmp97 = call i64 @"CQB::Engine::nowMs"()
  store i64 %calltmp97, ptr %"CQB::Engine::phaseStart", align 8
  br label %ifcont93

then99:                                           ; preds = %ifcont93
  %label101 = load ptr, ptr %label2, align 8
  %steps = load i32, ptr %"CQB::Engine::steps", align 4
  %lastStepMs = load i64, ptr %"CQB::Engine::lastStepMs", align 8
  %arr_elem_ptr102 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0
  %arr_elem103 = load i8, ptr %arr_elem_ptr102, align 1
  %lval_arr_addr104 = getelementptr [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0
  %varadics_array = alloca ptr, i32 4, align 8
  %3 = getelementptr ptr, ptr %varadics_array, i32 0
  store ptr %label101, ptr %3, align 8
  %4 = getelementptr ptr, ptr %varadics_array, i32 1
  %vararg_int_to_ptr = inttoptr i32 %steps to ptr
  store ptr %vararg_int_to_ptr, ptr %4, align 8
  %5 = getelementptr ptr, ptr %varadics_array, i32 2
  %vararg_int_to_ptr105 = inttoptr i64 %lastStepMs to ptr
  store ptr %vararg_int_to_ptr105, ptr %5, align 8
  %6 = getelementptr ptr, ptr %varadics_array, i32 3
  store ptr %lval_arr_addr104, ptr %6, align 8
  %variadic_struct = alloca { ptr, i32, i32 }, align 8
  %7 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0
  store ptr %varadics_array, ptr %7, align 8
  %8 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1
  store i32 4, ptr %8, align 4
  %9 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2
  store i32 0, ptr %9, align 4
  call void @"IO::qout"(ptr @.str.48, ptr %variadic_struct)
  call void @qc_flush()
  br label %ifcont100

ifcont100:                                        ; preds = %then99, %ifcont93
  br label %for.inc
}

define weak_odr void @"Vector::Vec<int>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 4, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<int>_push_T"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %value = alloca i32, align 4
  store i32 0, ptr %value, align 4
  store i32 %1, ptr %value, align 4
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr i32, ptr %data6, i32 %size5
  %value7 = load i32, ptr %value, align 4
  store i32 %value7, ptr %ptr_arr_asi, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<int>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<int>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<int>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<int>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 4, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr i32, ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr i32, ptr %data9, i32 %i8
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr i32, ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<int>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr i32 @"Vector::Iterator::It<int>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.49, ptr @10, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<int>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr i32, ptr %data, i32 %inc_deref
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  ret i32 %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr i32, ptr %data4, i32 %sub
  %ptr_arr_val6 = load i32, ptr %ptr_arr_addr5, align 4
  ret i32 %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<int>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr i32 @"Vector::Iterator::It<int>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.50, ptr @11, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<int>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr i32, ptr %data, i32 %dec
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  ret i32 %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr i32, ptr %data3, i32 %current_index
  %ptr_arr_val5 = load i32, ptr %ptr_arr_addr4, align 4
  ret i32 %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<int>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<int>" = alloca %"Vector::Iterator::It<int>", align 8
  store %"Vector::Iterator::It<int>" zeroinitializer, ptr %"temp_Vector::Iterator::It<int>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<int>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<int>_inst" = load %"Vector::Iterator::It<int>", ptr %"temp_Vector::Iterator::It<int>", align 8
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst"
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<int>" = alloca %"Vector::Iterator::It<int>", align 8
  store %"Vector::Iterator::It<int>" zeroinitializer, ptr %"temp_Vector::Iterator::It<int>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<int>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<int>_inst" = load %"Vector::Iterator::It<int>", ptr %"temp_Vector::Iterator::It<int>", align 8
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst"
}

define weak_odr void @"Vector::Vec<int>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<int>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<int>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<int>", align 8
  store %"Vector::Vec<int>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<int>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr i32, ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr i32, ptr %data6, i32 %i5
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<int>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"Vector::Vec<bool>_Vec"(ptr %0) !qc.return_types !23 {
entry:
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  ret void
}

define weak_odr void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
  store i32 0, ptr %cap, align 4
  store i32 %1, ptr %cap, align 4
  %cap1 = load i32, ptr %cap, align 4
  %icmpeq = icmp eq i32 %cap1, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  store i32 0, ptr %capacity_ptr, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  store i32 0, ptr %size_ptr, align 4
  ret void

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data2 = load ptr, ptr %3, align 8
  %cap3 = load i32, ptr %cap, align 4
  %promote_int = sext i32 %cap3 to i64
  %mul = mul i64 1, %promote_int
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul)
  store ptr %builtin_call, ptr %"Vector::new_data", align 8
  %new_data = load ptr, ptr %"Vector::new_data", align 8
  %ptr_eq = icmp eq ptr %new_data, null
  br i1 %ptr_eq, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  ret void

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  store i32 %cap6, ptr %capacity_ptr7, align 4
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %5, align 4
  %icmpgt = icmp sgt i32 %size, %capacity
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity10 = load i32, ptr %6, align 4
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  store i32 %capacity10, ptr %size_ptr11, align 4
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  store ptr %new_data12, ptr %data_ptr13, align 8
  ret void
}

define weak_odr void @"Vector::Vec<bool>_push_T"(ptr %0, i1 %1) !qc.return_types !21 {
entry:
  %value = alloca i1, align 1
  store i1 false, ptr %value, align 1
  store i1 %1, ptr %value, align 1
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %3, align 4
  %icmple = icmp sle i32 %capacity, %size
  br i1 %icmple, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %4, align 4
  %icmpeq = icmp eq i32 %capacity1, 0
  br i1 %icmpeq, label %ternary.true, label %ternary.false

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size5 = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data6 = load ptr, ptr %6, align 8
  %ptr_arr_asi = getelementptr i1, ptr %data6, i32 %size5
  %value7 = load i1, ptr %value, align 1
  store i1 %value7, ptr %ptr_arr_asi, align 1
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %size_ptr, align 4
  ret void

ternary.true:                                     ; preds = %then
  br label %ternary.end

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity2 = load i32, ptr %7, align 4
  %mul = mul i32 %capacity2, 2
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ]
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %ternary_val)
  %8 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %8, align 8
  %ptr_eq = icmp eq ptr %data, null
  br i1 %ptr_eq, label %then3, label %ifcont4

then3:                                            ; preds = %ternary.end
  ret void

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont
}

define weak_odr i32 @"Vector::Vec<bool>_length"(ptr %0) !qc.return_types !30 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<bool>_pop"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %inc_deref = load i32, ptr %size_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %size_ptr, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<bool>_shrinkToFit"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %size)
  ret void
}

define weak_odr void @"Vector::Vec<bool>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !qc.return_types !21 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i64 0, ptr %length, align 8
  store i64 %2, ptr %length, align 8
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, 0
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data1 = load ptr, ptr %4, align 8
  call void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %trunc = trunc i64 %length2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  %length3 = load i64, ptr %length, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %trunc4 = trunc i64 %length3 to i32
  store i32 %trunc4, ptr %size_ptr, align 4
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity5 = load i32, ptr %5, align 4
  %promote_int = sext i32 %capacity5 to i64
  %mul = mul i64 1, %promote_int
  %builtin_call = call ptr @qc_malloc(i64 %mul)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  store ptr %builtin_call, ptr %data_ptr, align 8
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data7 = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr i1, ptr %data7, i32 %i6
  %i8 = load i32, ptr %"Vector::i", align 4
  %data9 = load ptr, ptr %data, align 8
  %ptr_arr_addr = getelementptr i1, ptr %data9, i32 %i8
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

define weak_odr ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %0, i64 %1) !qc.return_types !31 {
entry:
  %index = alloca i64, align 8
  store i64 0, ptr %index, align 8
  store i64 %1, ptr %index, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %index1 = load i64, ptr %index, align 8
  %lval_ptr_arr_addr = getelementptr i1, ptr %data, i64 %index1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !qc.return_types !23 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
  store ptr null, ptr %data, align 8
  store ptr %1, ptr %data, align 8
  store i32 0, ptr %size, align 4
  store i32 %2, ptr %size, align 4
  store i1 false, ptr %is_end, align 1
  store i1 %3, ptr %is_end, align 1
  %data1 = load ptr, ptr %data, align 8
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0
  store ptr %data1, ptr %data_ptr, align 8
  %size2 = load i32, ptr %size, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  store i32 %size2, ptr %size_ptr, align 4
  %is_end3 = load i1, ptr %is_end, align 1
  br i1 %is_end3, label %ternary.true, label %ternary.false

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4
  br label %ternary.end

ternary.false:                                    ; preds = %entry
  br label %ternary.end

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ]
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  store i32 %ternary_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atEnd"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr i1 @"Vector::Iterator::It<bool>__next"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.53, ptr @12, i32 40) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<bool>__atEnd"(ptr %0)
  %not = xor i1 %_atEnd_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr i1, ptr %data, i32 %inc_deref
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  ret i1 %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size3 = load i32, ptr %3, align 4
  %sub = sub i32 %size3, 1
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0
  %data4 = load ptr, ptr %4, align 8
  %ptr_arr_addr5 = getelementptr i1, ptr %data4, i32 %sub
  %ptr_arr_val6 = load i1, ptr %ptr_arr_addr5, align 1
  ret i1 %ptr_arr_val6
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atStart"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp sle i32 %current_index, 0
  ret i1 %icmple
}

define weak_odr i1 @"Vector::Iterator::It<bool>__prev"(ptr %0) !qc.return_types !32 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.54, ptr @13, i32 56) #29
  unreachable

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<bool>__atStart"(ptr %0)
  %not = xor i1 %_atStart_result, true
  br i1 %not, label %then1, label %ifcont2

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  %inc_deref = load i32, ptr %current_index_ptr, align 4
  %dec = sub i32 %inc_deref, 1
  store i32 %dec, ptr %current_index_ptr, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %2, align 8
  %ptr_arr_addr = getelementptr i1, ptr %data, i32 %dec
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  ret i1 %ptr_arr_val

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  %current_index = load i32, ptr %3, align 4
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0
  %data3 = load ptr, ptr %4, align 8
  %ptr_arr_addr4 = getelementptr i1, ptr %data3, i32 %current_index
  %ptr_arr_val5 = load i1, ptr %ptr_arr_addr4, align 1
  ret i1 %ptr_arr_val5
}

define weak_odr void @"Vector::Iterator::It<bool>__moveTo_int"(ptr %0, i32 %1) !qc.return_types !21 {
entry:
  %index = alloca i32, align 4
  store i32 0, ptr %index, align 4
  store i32 %1, ptr %index, align 4
  %index1 = load i32, ptr %index, align 4
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  %icmpge = icmp sge i32 %index1, %size
  br i1 %icmpge, label %then, label %elif.cond

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1
  %size2 = load i32, ptr %3, align 4
  %sub = sub i32 %size2, 1
  store i32 %sub, ptr %index, align 4
  br label %ifcont

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2
  store i32 %index4, ptr %current_index_ptr, align 4
  ret void

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4
  %icmplt = icmp slt i32 %index3, 0
  br i1 %icmplt, label %elif.body, label %ifcont

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4
  br label %ifcont
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__begin"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<bool>" = alloca %"Vector::Iterator::It<bool>", align 8
  store %"Vector::Iterator::It<bool>" zeroinitializer, ptr %"temp_Vector::Iterator::It<bool>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<bool>", ptr %data, i32 %size, i1 false)
  %"Vector::Iterator::It<bool>_inst" = load %"Vector::Iterator::It<bool>", ptr %"temp_Vector::Iterator::It<bool>", align 8
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst"
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__end"(ptr %0) !qc.return_types !33 {
entry:
  %"temp_Vector::Iterator::It<bool>" = alloca %"Vector::Iterator::It<bool>", align 8
  store %"Vector::Iterator::It<bool>" zeroinitializer, ptr %"temp_Vector::Iterator::It<bool>", align 8
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %2, align 4
  call void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<bool>", ptr %data, i32 %size, i1 true)
  %"Vector::Iterator::It<bool>_inst" = load %"Vector::Iterator::It<bool>", ptr %"temp_Vector::Iterator::It<bool>", align 8
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst"
}

define weak_odr void @"Vector::Vec<bool>__destroy"(ptr %0) !qc.return_types !21 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %1, align 8
  call void @qc_free(ptr %data)
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  store ptr null, ptr %data_ptr, align 8
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  store i32 -1, ptr %size_ptr, align 4
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<bool>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<bool>" %1) !qc.return_types !34 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<bool>", align 8
  store %"Vector::Vec<bool>" zeroinitializer, ptr %other, align 8
  store %"Vector::Vec<bool>" %1, ptr %other, align 8
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 2
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2
  %capacity1 = load i32, ptr %3, align 4
  %icmpne = icmp ne i32 %capacity, %capacity1
  br i1 %icmpne, label %then, label %ifcont

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 2
  %capacity2 = load i32, ptr %4, align 4
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %capacity2)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 1
  %size = load i32, ptr %5, align 4
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  store i32 %size, ptr %size_ptr, align 4
  store i32 0, ptr %"Vector::i", align 4
  store i32 0, ptr %"Vector::i", align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 1
  %size3 = load i32, ptr %6, align 4
  %icmplt = icmp slt i32 %i, %size3
  br i1 %icmplt, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0
  %data = load ptr, ptr %7, align 8
  %ptr_arr_asi = getelementptr i1, ptr %data, i32 %i4
  %i5 = load i32, ptr %"Vector::i", align 4
  %8 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 0
  %data6 = load ptr, ptr %8, align 8
  %ptr_arr_addr = getelementptr i1, ptr %data6, i32 %i5
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %"Vector::i", align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<bool>_isEmpty"(ptr %0) !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr %"String::Str" @"String::toStr<int>"(i32 %value) {
entry:
  %"temp_String::Str34" = alloca %"String::Str", align 8
  %"String::temp" = alloca i8, align 1
  %"String::j" = alloca i64, align 8
  %"String::i" = alloca i64, align 8
  %"String::buffer" = alloca [64 x i8], align 1
  %"String::negative" = alloca i1, align 1
  %"temp_String::Str" = alloca %"String::Str", align 8
  %value1 = alloca i32, align 4
  store i32 0, ptr %value1, align 4
  store i32 %value, ptr %value1, align 4
  %value2 = load i32, ptr %value1, align 4
  %icmpeq = icmp eq i32 %value2, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  store %"String::Str" zeroinitializer, ptr %"temp_String::Str", align 8
  call void @"String::Str_Str_char*"(ptr %"temp_String::Str", ptr @.str.64)
  %"String::Str_inst" = load %"String::Str", ptr %"temp_String::Str", align 8
  ret %"String::Str" %"String::Str_inst"

ifcont:                                           ; preds = %entry
  store i1 false, ptr %"String::negative", align 1
  store i1 false, ptr %"String::negative", align 1
  %value3 = load i32, ptr %value1, align 4
  %icmplt = icmp slt i32 %value3, 0
  br i1 %icmplt, label %then4, label %ifcont5

then4:                                            ; preds = %ifcont
  store i1 true, ptr %"String::negative", align 1
  %value6 = load i32, ptr %value1, align 4
  %neg = sub i32 0, %value6
  store i32 %neg, ptr %value1, align 4
  br label %ifcont5

ifcont5:                                          ; preds = %then4, %ifcont
  store [64 x i8] zeroinitializer, ptr %"String::buffer", align 1
  call void @llvm.memset.inline.p0.i64(ptr %"String::buffer", i8 0, i64 64, i1 false)
  store i64 0, ptr %"String::i", align 8
  store i64 0, ptr %"String::i", align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %ifcont5
  %value7 = load i32, ptr %value1, align 4
  %icmpgt = icmp sgt i32 %value7, 0
  br i1 %icmpgt, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc_deref = load i64, ptr %"String::i", align 8
  %inc = add i64 %inc_deref, 1
  store i64 %inc, ptr %"String::i", align 8
  %value8 = load i32, ptr %value1, align 4
  %srem = srem i32 %value8, 10
  %add = add i32 48, %srem
  %trunc_char = trunc i32 %add to i8
  %arr_elem_ptr = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %inc_deref
  store i8 %trunc_char, ptr %arr_elem_ptr, align 1
  %assign_lhs_val = load i32, ptr %value1, align 4
  %sdiv = sdiv i32 %assign_lhs_val, 10
  store i32 %sdiv, ptr %value1, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %negative = load i1, ptr %"String::negative", align 1
  br i1 %negative, label %then9, label %ifcont10

then9:                                            ; preds = %while.end
  %inc_deref11 = load i64, ptr %"String::i", align 8
  %inc12 = add i64 %inc_deref11, 1
  store i64 %inc12, ptr %"String::i", align 8
  %arr_elem_ptr13 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %inc_deref11
  store i8 45, ptr %arr_elem_ptr13, align 1
  br label %ifcont10

ifcont10:                                         ; preds = %then9, %while.end
  store i64 0, ptr %"String::j", align 8
  store i64 0, ptr %"String::j", align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %ifcont10
  %j = load i64, ptr %"String::j", align 8
  %i = load i64, ptr %"String::i", align 8
  %sdiv14 = sdiv i64 %i, 2
  %icmplt15 = icmp slt i64 %j, %sdiv14
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %"String::temp", align 1
  %j16 = load i64, ptr %"String::j", align 8
  %arr_elem_ptr17 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %j16
  %arr_elem = load i8, ptr %arr_elem_ptr17, align 1
  store i8 %arr_elem, ptr %"String::temp", align 1
  %j18 = load i64, ptr %"String::j", align 8
  %i19 = load i64, ptr %"String::i", align 8
  %j20 = load i64, ptr %"String::j", align 8
  %sub = sub i64 %i19, %j20
  %sub21 = sub i64 %sub, 1
  %arr_elem_ptr22 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %sub21
  %arr_elem23 = load i8, ptr %arr_elem_ptr22, align 1
  %arr_elem_ptr24 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %j18
  store i8 %arr_elem23, ptr %arr_elem_ptr24, align 1
  %i25 = load i64, ptr %"String::i", align 8
  %j26 = load i64, ptr %"String::j", align 8
  %sub27 = sub i64 %i25, %j26
  %sub28 = sub i64 %sub27, 1
  %temp = load i8, ptr %"String::temp", align 1
  %arr_elem_ptr29 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %sub28
  store i8 %temp, ptr %arr_elem_ptr29, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc_deref30 = load i64, ptr %"String::j", align 8
  %inc31 = add i64 %inc_deref30, 1
  store i64 %inc31, ptr %"String::j", align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %i32 = load i64, ptr %"String::i", align 8
  %arr_elem_ptr33 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %i32
  store i8 0, ptr %arr_elem_ptr33, align 1
  store %"String::Str" zeroinitializer, ptr %"temp_String::Str34", align 8
  %decayptr = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i32 0
  call void @"String::Str_Str_char*"(ptr %"temp_String::Str34", ptr %decayptr)
  %"String::Str_inst35" = load %"String::Str", ptr %"temp_String::Str34", align 8
  ret %"String::Str" %"String::Str_inst35"
}

attributes #0 = { cold mustprogress nofree noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { cold nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn }

!llvm.ident = !{!0}
!llvm.errno.tbaa = !{!1}
!llvm.module.flags = !{!6, !7, !8}

!0 = !{!"clang version 23.1.4"}
!1 = !{!2, !3, i64 0}
!2 = !{!"__libc_errno", !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !3, i64 12}
!16 = !{!"_ZTS11qc_variadic", !17, i64 0, !3, i64 8, !3, i64 12}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!16, !3, i64 8}
!19 = !{!16, !17, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!"void"}
!22 = !{!"char*"}
!23 = !{}
!24 = !{!"Str"}
!25 = !{!"addr_t"}
!26 = !{!"View"}
!27 = !{!"bool"}
!28 = !{!"char&"}
!29 = !{!"qbool"}
!30 = !{!"int"}
!31 = !{!"T&"}
!32 = !{!"T"}
!33 = !{!"Iterator::It<T>"}
!34 = !{!"Vec<T>&"}
!35 = !{!"Command&"}
!36 = !{!"Builder*"}
!37 = !{!"Vector::Vec<Command>"}
!38 = !{!"Task*"}
!39 = !{!"Job*"}
!40 = !{!"cpu_set_t*"}
!41 = !{!"__uint16_t"}
!42 = !{!"__uint32_t"}
!43 = !{!"__uint64_t"}
!44 = !{!"ssize_t"}
!45 = !{!"i32u_t"}
!46 = !{!"__useconds_t"}
!47 = !{!"long int"}
!48 = !{!"size_t"}
!49 = !{!"__pid_t"}
!50 = !{!"__uid_t"}
!51 = !{!"__gid_t"}
!52 = !{!"void*"}
!53 = !{!"__sighandler_t"}
!54 = !{!"clock_t"}
!55 = !{!"time_t"}
!56 = !{!"double"}
!57 = !{!"tm*"}
!58 = !{!"RunResult"}
