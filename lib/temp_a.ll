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
@.str.43 = private constant [2 x i8] c"\0A\00"
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
@.str.70 = private constant [19 x i8] c"[%i/%i] %s FAILED\0A\00"
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
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
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
  br i1 %16, label %17, label %6, !llvm.loop !14

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
  br i1 %12, label %6, label %15, !llvm.loop !16

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
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp sge i32 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal ptr @qc_variadic_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  %9 = sext i32 %3 to i64
  %10 = getelementptr inbounds [8 x i8], ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = add nsw i32 %3, 1
  store i32 %12, ptr %2, align 4, !tbaa !17
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %14
}

declare !qc.return_types !23 void @"IO::qout"(ptr, ptr)

declare !qc.return_types !24 ptr @"IO::getWord"()

declare !qc.return_types !24 ptr @"IO::getLine"()

declare !qc.return_types !25 void @"String::Str_Str_char*"(ptr, ptr)

declare !qc.return_types !25 void @"String::Str_Str_addr_t_char"(ptr, i64, i8)

declare !qc.return_types !25 void @"String::Str_Str_char*_addr_t"(ptr, ptr, i64)

declare !qc.return_types !26 %"String::Str" @"String::Str_operator=_char*"(ptr, ptr)

declare !qc.return_types !27 i64 @"String::Str_len"(ptr)

declare !qc.return_types !26 %"String::Str" @"String::Str_substr_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !28 %"String::View" @"String::Str_subView_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !27 i64 @"String::Str_find_Str_addr_t"(ptr, %"String::Str", i64)

declare !qc.return_types !29 i1 @"String::Str_contains_Str"(ptr, %"String::Str")

declare !qc.return_types !29 i1 @"String::Str_startsWith_Str"(ptr, %"String::Str")

declare !qc.return_types !29 i1 @"String::Str_endsWith_Str"(ptr, %"String::Str")

declare !qc.return_types !29 i1 @"String::Str_isEmpty"(ptr)

declare !qc.return_types !29 i1 @"String::Str_operator==_Str"(ptr, %"String::Str")

declare !qc.return_types !29 i1 @"String::Str_operator!=_Str"(ptr, %"String::Str")

declare !qc.return_types !29 i1 @"String::Str__eval"(ptr)

declare !qc.return_types !26 %"String::Str" @"String::Str_operator+_char*"(ptr, ptr)

declare !qc.return_types !26 %"String::Str" @"String::Str_operator+=_char*"(ptr, ptr)

declare !qc.return_types !26 %"String::Str" @"String::Str_operator+_Str"(ptr, %"String::Str")

declare !qc.return_types !26 %"String::Str" @"String::Str_operator+=_Str"(ptr, %"String::Str")

declare !qc.return_types !30 ptr @"String::Str_operator[]_addr_t"(ptr, i64)

declare !qc.return_types !23 void @"String::Str__destroy"(ptr)

declare !qc.return_types !23 void @"String::Str_insert_addr_t_Str"(ptr, i64, %"String::Str")

declare !qc.return_types !23 void @"String::Str_erase_addr_t_addr_t"(ptr, i64, i64)

declare !qc.return_types !29 i1 @"String::Str_operator==_char*"(ptr, ptr)

declare !qc.return_types !29 i1 @"String::Str_operator!=_char*"(ptr, ptr)

declare !qc.return_types !29 i1 @"String::Str_toBool"(ptr)

declare !qc.return_types !31 i2 @"String::Str_toQBool"(ptr)

declare !qc.return_types !24 ptr @"String::Str_c_str"(ptr)

define weak_odr void @"Vector::Vec<char*>_Vec"(ptr %0) !dbg !32 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !36, !DIExpression(), !47)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !48
  store i32 0, ptr %size_ptr, align 4, !dbg !48
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !49
  store i32 0, ptr %capacity_ptr, align 4, !dbg !49
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !50
  store ptr null, ptr %data_ptr, align 8, !dbg !50
  ret void, !dbg !50
}

define weak_odr void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %1) !dbg !51 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !53, !DIExpression(), !55)
  store i32 0, ptr %cap, align 4, !dbg !55
  store i32 %1, ptr %cap, align 4, !dbg !55
    #dbg_value(i32 %1, !54, !DIExpression(), !55)
  %cap1 = load i32, ptr %cap, align 4, !dbg !56
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !56
  br i1 %icmpeq, label %then, label %ifcont, !dbg !56

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !57
  %data = load ptr, ptr %2, align 8, !dbg !57
  call void @qc_free(ptr %data), !dbg !57
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !58
  store ptr null, ptr %data_ptr, align 8, !dbg !58
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !59
  store i32 0, ptr %capacity_ptr, align 4, !dbg !59
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !60
  store i32 0, ptr %size_ptr, align 4, !dbg !60
  ret void, !dbg !61

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !62
    #dbg_declare(ptr %"Vector::new_data", !63, !DIExpression(), !62)
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !62
  %data2 = load ptr, ptr %3, align 8, !dbg !62
  %cap3 = load i32, ptr %cap, align 4, !dbg !62
  %promote_int = sext i32 %cap3 to i64, !dbg !62
  %mul = mul i64 8, %promote_int, !dbg !62
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !62
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !62
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !64
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !64
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !64

then4:                                            ; preds = %ifcont
  ret void, !dbg !65

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !66
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !66
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !66
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !67
  %size = load i32, ptr %4, align 4, !dbg !67
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !67
  %capacity = load i32, ptr %5, align 4, !dbg !67
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !67
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !67

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !68
  %capacity10 = load i32, ptr %6, align 4, !dbg !68
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !68
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !68
  br label %ifcont9, !dbg !68

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !69
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !69
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !69
  ret void, !dbg !69
}

define weak_odr void @"Vector::Vec<char*>_push_T"(ptr %0, ptr %1) !dbg !70 !qc.return_types !23 {
entry:
  %value = alloca ptr, align 8
    #dbg_value(ptr %0, !72, !DIExpression(), !74)
  store ptr null, ptr %value, align 8, !dbg !74
  store ptr %1, ptr %value, align 8, !dbg !74
    #dbg_value(ptr %1, !73, !DIExpression(), !74)
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !75
  %capacity = load i32, ptr %2, align 4, !dbg !75
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !75
  %size = load i32, ptr %3, align 4, !dbg !75
  %icmple = icmp sle i32 %capacity, %size, !dbg !75
  br i1 %icmple, label %then, label %ifcont, !dbg !75

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !76
  %capacity1 = load i32, ptr %4, align 4, !dbg !76
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !76
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !76

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !77
  %size5 = load i32, ptr %5, align 4, !dbg !77
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !77
  %data6 = load ptr, ptr %6, align 8, !dbg !77
  %ptr_arr_asi = getelementptr ptr, ptr %data6, i32 %size5, !dbg !77
  %value7 = load ptr, ptr %value, align 8, !dbg !77
  store ptr %value7, ptr %ptr_arr_asi, align 8, !dbg !77
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !78
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !78
  %inc = add i32 %inc_deref, 1, !dbg !78
  store i32 %inc, ptr %size_ptr, align 4, !dbg !78
  ret void, !dbg !78

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !76

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !76
  %capacity2 = load i32, ptr %7, align 4, !dbg !76
  %mul = mul i32 %capacity2, 2, !dbg !76
  br label %ternary.end, !dbg !76

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !76
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !76
  %8 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !79
  %data = load ptr, ptr %8, align 8, !dbg !79
  %ptr_eq = icmp eq ptr %data, null, !dbg !79
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !79

then3:                                            ; preds = %ternary.end
  ret void, !dbg !79

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !79
}

define weak_odr i32 @"Vector::Vec<char*>_length"(ptr %0) !dbg !80 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !82, !DIExpression(), !84)
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !85
  %size = load i32, ptr %1, align 4, !dbg !85
  ret i32 %size, !dbg !85
}

define weak_odr void @"Vector::Vec<char*>_pop"(ptr %0) !dbg !86 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !88, !DIExpression(), !89)
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !90
  %size = load i32, ptr %1, align 4, !dbg !90
  %icmpgt = icmp sgt i32 %size, 0, !dbg !90
  br i1 %icmpgt, label %then, label %ifcont, !dbg !90

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !91
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !91
  %dec = sub i32 %inc_deref, 1, !dbg !91
  store i32 %dec, ptr %size_ptr, align 4, !dbg !91
  br label %ifcont, !dbg !91

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !91
}

define weak_odr void @"Vector::Vec<char*>_shrinkToFit"(ptr %0) !dbg !92 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !94, !DIExpression(), !95)
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !96
  %size = load i32, ptr %1, align 4, !dbg !96
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %size), !dbg !96
  ret void, !dbg !96
}

define weak_odr void @"Vector::Vec<char*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !97 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !99, !DIExpression(), !103)
  store ptr null, ptr %data, align 8, !dbg !103
  store ptr %1, ptr %data, align 8, !dbg !103
    #dbg_value(ptr %1, !100, !DIExpression(), !103)
  store i64 0, ptr %length, align 8, !dbg !103
  store i64 %2, ptr %length, align 8, !dbg !103
    #dbg_value(i64 %2, !101, !DIExpression(), !103)
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !104
  %capacity = load i32, ptr %3, align 4, !dbg !104
  %icmpne = icmp ne i32 %capacity, 0, !dbg !104
  br i1 %icmpne, label %then, label %ifcont, !dbg !104

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !104
  %data1 = load ptr, ptr %4, align 8, !dbg !104
  call void @qc_free(ptr %data1), !dbg !104
  br label %ifcont, !dbg !104

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !105
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !105
  %trunc = trunc i64 %length2 to i32, !dbg !105
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !105
  %length3 = load i64, ptr %length, align 8, !dbg !106
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !106
  %trunc4 = trunc i64 %length3 to i32, !dbg !106
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !106
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !107
  %capacity5 = load i32, ptr %5, align 4, !dbg !107
  %promote_int = sext i32 %capacity5 to i64, !dbg !107
  %mul = mul i64 8, %promote_int, !dbg !107
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !107
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !107
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !107
  store i32 0, ptr %"Vector::i", align 4, !dbg !108
    #dbg_declare(ptr %"Vector::i", !109, !DIExpression(), !108)
  store i32 0, ptr %"Vector::i", align 4, !dbg !108
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !108
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !108
  %size = load i32, ptr %6, align 4, !dbg !108
  %icmplt = icmp slt i32 %i, %size, !dbg !108
  br i1 %icmplt, label %for.body, label %for.end, !dbg !108

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !110
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !110
  %data7 = load ptr, ptr %7, align 8, !dbg !110
  %ptr_arr_asi = getelementptr ptr, ptr %data7, i32 %i6, !dbg !110
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !110
  %data9 = load ptr, ptr %data, align 8, !dbg !110
  %ptr_arr_addr = getelementptr ptr, ptr %data9, i32 %i8, !dbg !110
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !110
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !110
  br label %for.inc, !dbg !110

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !108
  %inc = add i32 %inc_deref, 1, !dbg !108
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !108
  br label %for.cond, !dbg !108

for.end:                                          ; preds = %for.cond
  ret void, !dbg !108
}

define weak_odr ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !111 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !113, !DIExpression(), !116)
  store i64 0, ptr %index, align 8, !dbg !116
  store i64 %1, ptr %index, align 8, !dbg !116
    #dbg_value(i64 %1, !114, !DIExpression(), !116)
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !117
  %data = load ptr, ptr %2, align 8, !dbg !117
  %index1 = load i64, ptr %index, align 8, !dbg !117
  %lval_ptr_arr_addr = getelementptr ptr, ptr %data, i64 %index1, !dbg !117
  ret ptr %lval_ptr_arr_addr, !dbg !117
}

define weak_odr void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !118 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !120, !DIExpression(), !131)
  store ptr null, ptr %data, align 8, !dbg !131
  store ptr %1, ptr %data, align 8, !dbg !131
    #dbg_value(ptr %1, !127, !DIExpression(), !131)
  store i32 0, ptr %size, align 4, !dbg !131
  store i32 %2, ptr %size, align 4, !dbg !131
    #dbg_value(i32 %2, !128, !DIExpression(), !131)
  store i1 false, ptr %is_end, align 1, !dbg !131
  store i1 %3, ptr %is_end, align 1, !dbg !131
    #dbg_value(i1 %3, !129, !DIExpression(), !131)
  %data1 = load ptr, ptr %data, align 8, !dbg !132
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0, !dbg !132
  store ptr %data1, ptr %data_ptr, align 8, !dbg !132
  %size2 = load i32, ptr %size, align 4, !dbg !133
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !133
  store i32 %size2, ptr %size_ptr, align 4, !dbg !133
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !134
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !134

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !134
  br label %ternary.end, !dbg !134

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !134

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !134
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !134
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !134
  ret void, !dbg !134
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %0) !dbg !135 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !137, !DIExpression(), !138)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !139
  %size = load i32, ptr %1, align 4, !dbg !139
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !139
  %current_index = load i32, ptr %2, align 4, !dbg !139
  %icmple = icmp sle i32 %size, %current_index, !dbg !139
  ret i1 %icmple, !dbg !139
}

define weak_odr ptr @"Vector::Iterator::It<char*>__next"(ptr %0) !dbg !140 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !142, !DIExpression(), !144)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !145
  %size = load i32, ptr %1, align 4, !dbg !145
  %icmpeq = icmp eq i32 %size, 0, !dbg !145
  br i1 %icmpeq, label %then, label %ifcont, !dbg !145

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.1, ptr @0, i32 40) #29, !dbg !146
  unreachable, !dbg !146

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %0), !dbg !147
  %not = xor i1 %_atEnd_result, true, !dbg !147
  br i1 %not, label %then1, label %ifcont2, !dbg !147

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !148
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !148
  %inc = add i32 %inc_deref, 1, !dbg !148
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !148
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0, !dbg !148
  %data = load ptr, ptr %2, align 8, !dbg !148
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %inc_deref, !dbg !148
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !148
  ret ptr %ptr_arr_val, !dbg !148

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !149
  %size3 = load i32, ptr %3, align 4, !dbg !149
  %sub = sub i32 %size3, 1, !dbg !149
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0, !dbg !149
  %data4 = load ptr, ptr %4, align 8, !dbg !149
  %ptr_arr_addr5 = getelementptr ptr, ptr %data4, i32 %sub, !dbg !149
  %ptr_arr_val6 = load ptr, ptr %ptr_arr_addr5, align 8, !dbg !149
  ret ptr %ptr_arr_val6, !dbg !149
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atStart"(ptr %0) !dbg !150 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !152, !DIExpression(), !153)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !154
  %current_index = load i32, ptr %1, align 4, !dbg !154
  %icmple = icmp sle i32 %current_index, 0, !dbg !154
  ret i1 %icmple, !dbg !154
}

define weak_odr ptr @"Vector::Iterator::It<char*>__prev"(ptr %0) !dbg !155 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !157, !DIExpression(), !158)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !159
  %size = load i32, ptr %1, align 4, !dbg !159
  %icmpeq = icmp eq i32 %size, 0, !dbg !159
  br i1 %icmpeq, label %then, label %ifcont, !dbg !159

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.2, ptr @1, i32 56) #29, !dbg !160
  unreachable, !dbg !160

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<char*>__atStart"(ptr %0), !dbg !161
  %not = xor i1 %_atStart_result, true, !dbg !161
  br i1 %not, label %then1, label %ifcont2, !dbg !161

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !162
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !162
  %dec = sub i32 %inc_deref, 1, !dbg !162
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !162
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0, !dbg !162
  %data = load ptr, ptr %2, align 8, !dbg !162
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %dec, !dbg !162
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !162
  ret ptr %ptr_arr_val, !dbg !162

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !163
  %current_index = load i32, ptr %3, align 4, !dbg !163
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 0, !dbg !163
  %data3 = load ptr, ptr %4, align 8, !dbg !163
  %ptr_arr_addr4 = getelementptr ptr, ptr %data3, i32 %current_index, !dbg !163
  %ptr_arr_val5 = load ptr, ptr %ptr_arr_addr4, align 8, !dbg !163
  ret ptr %ptr_arr_val5, !dbg !163
}

define weak_odr void @"Vector::Iterator::It<char*>__moveTo_int"(ptr %0, i32 %1) !dbg !164 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !166, !DIExpression(), !168)
  store i32 0, ptr %index, align 4, !dbg !168
  store i32 %1, ptr %index, align 4, !dbg !168
    #dbg_value(i32 %1, !167, !DIExpression(), !168)
  %index1 = load i32, ptr %index, align 4, !dbg !169
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !169
  %size = load i32, ptr %2, align 4, !dbg !169
  %icmpge = icmp sge i32 %index1, %size, !dbg !169
  br i1 %icmpge, label %then, label %elif.cond, !dbg !169

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 1, !dbg !170
  %size2 = load i32, ptr %3, align 4, !dbg !170
  %sub = sub i32 %size2, 1, !dbg !170
  store i32 %sub, ptr %index, align 4, !dbg !170
  br label %ifcont, !dbg !170

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !171
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<char*>", ptr %0, i32 0, i32 2, !dbg !171
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !171
  ret void, !dbg !171

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !172
  %icmplt = icmp slt i32 %index3, 0, !dbg !172
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !172

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !173
  br label %ifcont, !dbg !173
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %0) !dbg !174 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<char*>" = alloca %"Vector::Iterator::It<char*>", align 8
    #dbg_value(ptr %0, !176, !DIExpression(), !178)
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<char*>", align 8, !dbg !179
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !179
  %data = load ptr, ptr %1, align 8, !dbg !179
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !179
  %size = load i32, ptr %2, align 4, !dbg !179
  call void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<char*>", ptr %data, i32 %size, i1 false), !dbg !179
  %"Vector::Iterator::It<char*>_inst" = load %"Vector::Iterator::It<char*>", ptr %"temp_Vector::Iterator::It<char*>", align 8, !dbg !179
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst", !dbg !179
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__end"(ptr %0) !dbg !180 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<char*>" = alloca %"Vector::Iterator::It<char*>", align 8
    #dbg_value(ptr %0, !182, !DIExpression(), !183)
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<char*>", align 8, !dbg !184
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !184
  %data = load ptr, ptr %1, align 8, !dbg !184
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !184
  %size = load i32, ptr %2, align 4, !dbg !184
  call void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<char*>", ptr %data, i32 %size, i1 true), !dbg !184
  %"Vector::Iterator::It<char*>_inst" = load %"Vector::Iterator::It<char*>", ptr %"temp_Vector::Iterator::It<char*>", align 8, !dbg !184
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst", !dbg !184
}

define weak_odr void @"Vector::Vec<char*>__destroy"(ptr %0) !dbg !185 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !187, !DIExpression(), !188)
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !189
  %data = load ptr, ptr %1, align 8, !dbg !189
  call void @qc_free(ptr %data), !dbg !189
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !190
  store ptr null, ptr %data_ptr, align 8, !dbg !190
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !191
  store i32 -1, ptr %size_ptr, align 4, !dbg !191
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !192
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !192
  ret void, !dbg !192
}

define weak_odr ptr @"Vector::Vec<char*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<char*>" %1) !dbg !193 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<char*>", align 8
    #dbg_value(ptr %0, !195, !DIExpression(), !198)
  store %"Vector::Vec<char*>" zeroinitializer, ptr %other, align 8, !dbg !198
  store %"Vector::Vec<char*>" %1, ptr %other, align 8, !dbg !198
    #dbg_value(%"Vector::Vec<char*>" %1, !196, !DIExpression(), !198)
  %2 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 2, !dbg !199
  %capacity = load i32, ptr %2, align 4, !dbg !199
  %3 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 2, !dbg !199
  %capacity1 = load i32, ptr %3, align 4, !dbg !199
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !199
  br i1 %icmpne, label %then, label %ifcont, !dbg !199

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 2, !dbg !200
  %capacity2 = load i32, ptr %4, align 4, !dbg !200
  call void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %capacity2), !dbg !200
  br label %ifcont, !dbg !200

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 1, !dbg !201
  %size = load i32, ptr %5, align 4, !dbg !201
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !201
  store i32 %size, ptr %size_ptr, align 4, !dbg !201
  store i32 0, ptr %"Vector::i", align 4, !dbg !202
    #dbg_declare(ptr %"Vector::i", !203, !DIExpression(), !202)
  store i32 0, ptr %"Vector::i", align 4, !dbg !202
  br label %for.cond, !dbg !202

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !202
  %6 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 1, !dbg !202
  %size3 = load i32, ptr %6, align 4, !dbg !202
  %icmplt = icmp slt i32 %i, %size3, !dbg !202
  br i1 %icmplt, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !204
  %7 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 0, !dbg !204
  %data = load ptr, ptr %7, align 8, !dbg !204
  %ptr_arr_asi = getelementptr ptr, ptr %data, i32 %i4, !dbg !204
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !204
  %8 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %other, i32 0, i32 0, !dbg !204
  %data6 = load ptr, ptr %8, align 8, !dbg !204
  %ptr_arr_addr = getelementptr ptr, ptr %data6, i32 %i5, !dbg !204
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !204
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !204
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !202
  %inc = add i32 %inc_deref, 1, !dbg !202
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !202
  br label %for.cond, !dbg !202

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !205
}

define weak_odr i1 @"Vector::Vec<char*>_isEmpty"(ptr %0) !dbg !206 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !208, !DIExpression(), !209)
  %1 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %0, i32 0, i32 1, !dbg !210
  %size = load i32, ptr %1, align 4, !dbg !210
  %icmpeq = icmp eq i32 %size, 0, !dbg !210
  ret i1 %icmpeq, !dbg !210
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_Vec"(ptr %0) !dbg !211 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !213, !DIExpression(), !228)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !229
  store i32 0, ptr %size_ptr, align 4, !dbg !229
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !230
  store i32 0, ptr %capacity_ptr, align 4, !dbg !230
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !231
  store ptr null, ptr %data_ptr, align 8, !dbg !231
  ret void, !dbg !231
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %1) !dbg !232 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !234, !DIExpression(), !236)
  store i32 0, ptr %cap, align 4, !dbg !236
  store i32 %1, ptr %cap, align 4, !dbg !236
    #dbg_value(i32 %1, !235, !DIExpression(), !236)
  %cap1 = load i32, ptr %cap, align 4, !dbg !237
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !237
  br i1 %icmpeq, label %then, label %ifcont, !dbg !237

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !238
  %data = load ptr, ptr %2, align 8, !dbg !238
  call void @qc_free(ptr %data), !dbg !238
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !239
  store ptr null, ptr %data_ptr, align 8, !dbg !239
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !240
  store i32 0, ptr %capacity_ptr, align 4, !dbg !240
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !241
  store i32 0, ptr %size_ptr, align 4, !dbg !241
  ret void, !dbg !242

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !243
    #dbg_declare(ptr %"Vector::new_data", !244, !DIExpression(), !243)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !243
  %data2 = load ptr, ptr %3, align 8, !dbg !243
  %cap3 = load i32, ptr %cap, align 4, !dbg !243
  %promote_int = sext i32 %cap3 to i64, !dbg !243
  %mul = mul i64 72, %promote_int, !dbg !243
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !243
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !243
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !245
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !245
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !245

then4:                                            ; preds = %ifcont
  ret void, !dbg !246

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !247
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !247
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !247
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !248
  %size = load i32, ptr %4, align 4, !dbg !248
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !248
  %capacity = load i32, ptr %5, align 4, !dbg !248
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !248
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !248

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !249
  %capacity10 = load i32, ptr %6, align 4, !dbg !249
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !249
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !249
  br label %ifcont9, !dbg !249

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !250
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !250
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !250
  ret void, !dbg !250
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %0, %"CQB::Build::Command" %1) !dbg !251 !qc.return_types !23 {
entry:
  %value = alloca %"CQB::Build::Command", align 8
    #dbg_value(ptr %0, !253, !DIExpression(), !255)
  call void @llvm.memset.inline.p0.i64(ptr align 8 %value, i8 0, i64 72, i1 false), !dbg !255
  store %"CQB::Build::Command" %1, ptr %value, align 8, !dbg !255
    #dbg_value(%"CQB::Build::Command" %1, !254, !DIExpression(), !255)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !256
  %capacity = load i32, ptr %2, align 4, !dbg !256
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !256
  %size = load i32, ptr %3, align 4, !dbg !256
  %icmple = icmp sle i32 %capacity, %size, !dbg !256
  br i1 %icmple, label %then, label %ifcont, !dbg !256

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !257
  %capacity1 = load i32, ptr %4, align 4, !dbg !257
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !257
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !257

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !258
  %size5 = load i32, ptr %5, align 4, !dbg !258
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !258
  %data6 = load ptr, ptr %6, align 8, !dbg !258
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data6, i32 %size5, !dbg !258
  %value7 = load %"CQB::Build::Command", ptr %value, align 8, !dbg !258
  store %"CQB::Build::Command" %value7, ptr %ptr_arr_asi, align 8, !dbg !258
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !259
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !259
  %inc = add i32 %inc_deref, 1, !dbg !259
  store i32 %inc, ptr %size_ptr, align 4, !dbg !259
  ret void, !dbg !259

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !257

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !257
  %capacity2 = load i32, ptr %7, align 4, !dbg !257
  %mul = mul i32 %capacity2, 2, !dbg !257
  br label %ternary.end, !dbg !257

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !257
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !257
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !260
  %data = load ptr, ptr %8, align 8, !dbg !260
  %ptr_eq = icmp eq ptr %data, null, !dbg !260
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !260

then3:                                            ; preds = %ternary.end
  ret void, !dbg !260

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !260
}

define weak_odr i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %0) !dbg !261 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !263, !DIExpression(), !264)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !265
  %size = load i32, ptr %1, align 4, !dbg !265
  ret i32 %size, !dbg !265
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_pop"(ptr %0) !dbg !266 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !268, !DIExpression(), !269)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !270
  %size = load i32, ptr %1, align 4, !dbg !270
  %icmpgt = icmp sgt i32 %size, 0, !dbg !270
  br i1 %icmpgt, label %then, label %ifcont, !dbg !270

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !271
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !271
  %dec = sub i32 %inc_deref, 1, !dbg !271
  store i32 %dec, ptr %size_ptr, align 4, !dbg !271
  br label %ifcont, !dbg !271

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !271
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_shrinkToFit"(ptr %0) !dbg !272 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !274, !DIExpression(), !275)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !276
  %size = load i32, ptr %1, align 4, !dbg !276
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %size), !dbg !276
  ret void, !dbg !276
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !277 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !279, !DIExpression(), !282)
  store ptr null, ptr %data, align 8, !dbg !282
  store ptr %1, ptr %data, align 8, !dbg !282
    #dbg_value(ptr %1, !280, !DIExpression(), !282)
  store i64 0, ptr %length, align 8, !dbg !282
  store i64 %2, ptr %length, align 8, !dbg !282
    #dbg_value(i64 %2, !281, !DIExpression(), !282)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !283
  %capacity = load i32, ptr %3, align 4, !dbg !283
  %icmpne = icmp ne i32 %capacity, 0, !dbg !283
  br i1 %icmpne, label %then, label %ifcont, !dbg !283

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !283
  %data1 = load ptr, ptr %4, align 8, !dbg !283
  call void @qc_free(ptr %data1), !dbg !283
  br label %ifcont, !dbg !283

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !284
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !284
  %trunc = trunc i64 %length2 to i32, !dbg !284
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !284
  %length3 = load i64, ptr %length, align 8, !dbg !285
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !285
  %trunc4 = trunc i64 %length3 to i32, !dbg !285
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !285
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !286
  %capacity5 = load i32, ptr %5, align 4, !dbg !286
  %promote_int = sext i32 %capacity5 to i64, !dbg !286
  %mul = mul i64 72, %promote_int, !dbg !286
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !286
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !286
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !286
  store i32 0, ptr %"Vector::i", align 4, !dbg !287
    #dbg_declare(ptr %"Vector::i", !288, !DIExpression(), !287)
  store i32 0, ptr %"Vector::i", align 4, !dbg !287
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !287
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !287
  %size = load i32, ptr %6, align 4, !dbg !287
  %icmplt = icmp slt i32 %i, %size, !dbg !287
  br i1 %icmplt, label %for.body, label %for.end, !dbg !287

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !289
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !289
  %data7 = load ptr, ptr %7, align 8, !dbg !289
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data7, i32 %i6, !dbg !289
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !289
  %data9 = load ptr, ptr %data, align 8, !dbg !289
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data9, i32 %i8, !dbg !289
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8, !dbg !289
  store %"CQB::Build::Command" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !289
  br label %for.inc, !dbg !289

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !287
  %inc = add i32 %inc_deref, 1, !dbg !287
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !287
  br label %for.cond, !dbg !287

for.end:                                          ; preds = %for.cond
  ret void, !dbg !287
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !290 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !292, !DIExpression(), !294)
  store i64 0, ptr %index, align 8, !dbg !294
  store i64 %1, ptr %index, align 8, !dbg !294
    #dbg_value(i64 %1, !293, !DIExpression(), !294)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !295
  %data = load ptr, ptr %2, align 8, !dbg !295
  %index1 = load i64, ptr %index, align 8, !dbg !295
  %lval_ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i64 %index1, !dbg !295
  ret ptr %lval_ptr_arr_addr, !dbg !295
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !296 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !298, !DIExpression(), !306)
  store ptr null, ptr %data, align 8, !dbg !306
  store ptr %1, ptr %data, align 8, !dbg !306
    #dbg_value(ptr %1, !303, !DIExpression(), !306)
  store i32 0, ptr %size, align 4, !dbg !306
  store i32 %2, ptr %size, align 4, !dbg !306
    #dbg_value(i32 %2, !304, !DIExpression(), !306)
  store i1 false, ptr %is_end, align 1, !dbg !306
  store i1 %3, ptr %is_end, align 1, !dbg !306
    #dbg_value(i1 %3, !305, !DIExpression(), !306)
  %data1 = load ptr, ptr %data, align 8, !dbg !307
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !307
  store ptr %data1, ptr %data_ptr, align 8, !dbg !307
  %size2 = load i32, ptr %size, align 4, !dbg !308
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !308
  store i32 %size2, ptr %size_ptr, align 4, !dbg !308
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !309
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !309

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !309
  br label %ternary.end, !dbg !309

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !309

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !309
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !309
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !309
  ret void, !dbg !309
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atEnd"(ptr %0) !dbg !310 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !312, !DIExpression(), !313)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !314
  %size = load i32, ptr %1, align 4, !dbg !314
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !314
  %current_index = load i32, ptr %2, align 4, !dbg !314
  %icmple = icmp sle i32 %size, %current_index, !dbg !314
  ret i1 %icmple, !dbg !314
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__next"(ptr %0) !dbg !315 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !317, !DIExpression(), !318)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !319
  %size = load i32, ptr %1, align 4, !dbg !319
  %icmpeq = icmp eq i32 %size, 0, !dbg !319
  br i1 %icmpeq, label %then, label %ifcont, !dbg !319

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.5, ptr @2, i32 40) #29, !dbg !320
  unreachable, !dbg !320

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::Build::Command>__atEnd"(ptr %0), !dbg !321
  %not = xor i1 %_atEnd_result, true, !dbg !321
  br i1 %not, label %then1, label %ifcont2, !dbg !321

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !322
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !322
  %inc = add i32 %inc_deref, 1, !dbg !322
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !322
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !322
  %data = load ptr, ptr %2, align 8, !dbg !322
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i32 %inc_deref, !dbg !322
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8, !dbg !322
  ret %"CQB::Build::Command" %ptr_arr_val, !dbg !322

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !323
  %size3 = load i32, ptr %3, align 4, !dbg !323
  %sub = sub i32 %size3, 1, !dbg !323
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !323
  %data4 = load ptr, ptr %4, align 8, !dbg !323
  %ptr_arr_addr5 = getelementptr %"CQB::Build::Command", ptr %data4, i32 %sub, !dbg !323
  %ptr_arr_val6 = load %"CQB::Build::Command", ptr %ptr_arr_addr5, align 8, !dbg !323
  ret %"CQB::Build::Command" %ptr_arr_val6, !dbg !323
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atStart"(ptr %0) !dbg !324 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !326, !DIExpression(), !327)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !328
  %current_index = load i32, ptr %1, align 4, !dbg !328
  %icmple = icmp sle i32 %current_index, 0, !dbg !328
  ret i1 %icmple, !dbg !328
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__prev"(ptr %0) !dbg !329 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !331, !DIExpression(), !332)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !333
  %size = load i32, ptr %1, align 4, !dbg !333
  %icmpeq = icmp eq i32 %size, 0, !dbg !333
  br i1 %icmpeq, label %then, label %ifcont, !dbg !333

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.6, ptr @3, i32 56) #29, !dbg !334
  unreachable, !dbg !334

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::Build::Command>__atStart"(ptr %0), !dbg !335
  %not = xor i1 %_atStart_result, true, !dbg !335
  br i1 %not, label %then1, label %ifcont2, !dbg !335

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !336
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !336
  %dec = sub i32 %inc_deref, 1, !dbg !336
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !336
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !336
  %data = load ptr, ptr %2, align 8, !dbg !336
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data, i32 %dec, !dbg !336
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8, !dbg !336
  ret %"CQB::Build::Command" %ptr_arr_val, !dbg !336

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !337
  %current_index = load i32, ptr %3, align 4, !dbg !337
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !337
  %data3 = load ptr, ptr %4, align 8, !dbg !337
  %ptr_arr_addr4 = getelementptr %"CQB::Build::Command", ptr %data3, i32 %current_index, !dbg !337
  %ptr_arr_val5 = load %"CQB::Build::Command", ptr %ptr_arr_addr4, align 8, !dbg !337
  ret %"CQB::Build::Command" %ptr_arr_val5, !dbg !337
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>__moveTo_int"(ptr %0, i32 %1) !dbg !338 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !340, !DIExpression(), !342)
  store i32 0, ptr %index, align 4, !dbg !342
  store i32 %1, ptr %index, align 4, !dbg !342
    #dbg_value(i32 %1, !341, !DIExpression(), !342)
  %index1 = load i32, ptr %index, align 4, !dbg !343
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !343
  %size = load i32, ptr %2, align 4, !dbg !343
  %icmpge = icmp sge i32 %index1, %size, !dbg !343
  br i1 %icmpge, label %then, label %elif.cond, !dbg !343

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !344
  %size2 = load i32, ptr %3, align 4, !dbg !344
  %sub = sub i32 %size2, 1, !dbg !344
  store i32 %sub, ptr %index, align 4, !dbg !344
  br label %ifcont, !dbg !344

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !345
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !345
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !345
  ret void, !dbg !345

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !346
  %icmplt = icmp slt i32 %index3, 0, !dbg !346
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !346

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !347
  br label %ifcont, !dbg !347
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__begin"(ptr %0) !dbg !348 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::Build::Command>" = alloca %"Vector::Iterator::It<CQB::Build::Command>", align 8
    #dbg_value(ptr %0, !350, !DIExpression(), !351)
  store %"Vector::Iterator::It<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8, !dbg !352
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !352
  %data = load ptr, ptr %1, align 8, !dbg !352
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !352
  %size = load i32, ptr %2, align 4, !dbg !352
  call void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", ptr %data, i32 %size, i1 false), !dbg !352
  %"Vector::Iterator::It<CQB::Build::Command>_inst" = load %"Vector::Iterator::It<CQB::Build::Command>", ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8, !dbg !352
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst", !dbg !352
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__end"(ptr %0) !dbg !353 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::Build::Command>" = alloca %"Vector::Iterator::It<CQB::Build::Command>", align 8
    #dbg_value(ptr %0, !355, !DIExpression(), !356)
  store %"Vector::Iterator::It<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8, !dbg !357
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !357
  %data = load ptr, ptr %1, align 8, !dbg !357
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !357
  %size = load i32, ptr %2, align 4, !dbg !357
  call void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", ptr %data, i32 %size, i1 true), !dbg !357
  %"Vector::Iterator::It<CQB::Build::Command>_inst" = load %"Vector::Iterator::It<CQB::Build::Command>", ptr %"temp_Vector::Iterator::It<CQB::Build::Command>", align 8, !dbg !357
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst", !dbg !357
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>__destroy"(ptr %0) !dbg !358 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !360, !DIExpression(), !361)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !362
  %data = load ptr, ptr %1, align 8, !dbg !362
  call void @qc_free(ptr %data), !dbg !362
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !363
  store ptr null, ptr %data_ptr, align 8, !dbg !363
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !364
  store i32 -1, ptr %size_ptr, align 4, !dbg !364
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !365
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !365
  ret void, !dbg !365
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1) !dbg !366 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::Build::Command>", align 8
    #dbg_value(ptr %0, !368, !DIExpression(), !370)
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %other, align 8, !dbg !370
  store %"Vector::Vec<CQB::Build::Command>" %1, ptr %other, align 8, !dbg !370
    #dbg_value(%"Vector::Vec<CQB::Build::Command>" %1, !369, !DIExpression(), !370)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 2, !dbg !371
  %capacity = load i32, ptr %2, align 4, !dbg !371
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 2, !dbg !371
  %capacity1 = load i32, ptr %3, align 4, !dbg !371
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !371
  br i1 %icmpne, label %then, label %ifcont, !dbg !371

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 2, !dbg !372
  %capacity2 = load i32, ptr %4, align 4, !dbg !372
  call void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %capacity2), !dbg !372
  br label %ifcont, !dbg !372

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 1, !dbg !373
  %size = load i32, ptr %5, align 4, !dbg !373
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !373
  store i32 %size, ptr %size_ptr, align 4, !dbg !373
  store i32 0, ptr %"Vector::i", align 4, !dbg !374
    #dbg_declare(ptr %"Vector::i", !375, !DIExpression(), !374)
  store i32 0, ptr %"Vector::i", align 4, !dbg !374
  br label %for.cond, !dbg !374

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !374
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 1, !dbg !374
  %size3 = load i32, ptr %6, align 4, !dbg !374
  %icmplt = icmp slt i32 %i, %size3, !dbg !374
  br i1 %icmplt, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !376
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 0, !dbg !376
  %data = load ptr, ptr %7, align 8, !dbg !376
  %ptr_arr_asi = getelementptr %"CQB::Build::Command", ptr %data, i32 %i4, !dbg !376
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !376
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %other, i32 0, i32 0, !dbg !376
  %data6 = load ptr, ptr %8, align 8, !dbg !376
  %ptr_arr_addr = getelementptr %"CQB::Build::Command", ptr %data6, i32 %i5, !dbg !376
  %ptr_arr_val = load %"CQB::Build::Command", ptr %ptr_arr_addr, align 8, !dbg !376
  store %"CQB::Build::Command" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !376
  br label %for.inc, !dbg !376

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !374
  %inc = add i32 %inc_deref, 1, !dbg !374
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !374
  br label %for.cond, !dbg !374

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !377
}

define weak_odr i1 @"Vector::Vec<CQB::Build::Command>_isEmpty"(ptr %0) !dbg !378 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !380, !DIExpression(), !381)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Build::Command>", ptr %0, i32 0, i32 1, !dbg !382
  %size = load i32, ptr %1, align 4, !dbg !382
  %icmpeq = icmp eq i32 %size, 0, !dbg !382
  ret i1 %icmpeq, !dbg !382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.inline.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

define weak_odr ptr @"CQB::Build::Builder_current_command"(ptr %0) !dbg !383 !qc.return_types !391 {
entry:
    #dbg_value(ptr %0, !385, !DIExpression(), !392)
  %1 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !393
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %1), !dbg !393
  %icmpeq = icmp eq i32 %length_result, 0, !dbg !393
  br i1 %icmpeq, label %then, label %ifcont, !dbg !393

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !394
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %2, %"CQB::Build::Command" zeroinitializer), !dbg !394
  br label %ifcont, !dbg !394

ifcont:                                           ; preds = %then, %entry
  %commands_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !395
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !395
  %length_result1 = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %3), !dbg !395
  %sub = sub i32 %length_result1, 1, !dbg !395
  %4 = sext i32 %sub to i64, !dbg !395
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %commands_ptr, i64 %4), !dbg !395
  ret ptr %"operator[]_result", !dbg !395
}

define weak_odr void @"CQB::Build::Builder_Builder"(ptr %0) !dbg !396 !qc.return_types !25 {
entry:
  %"temp_Vector::Vec<CQB::Build::Command>" = alloca %"Vector::Vec<CQB::Build::Command>", align 8
    #dbg_value(ptr %0, !398, !DIExpression(), !399)
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::Build::Command>", align 8, !dbg !400
  call void @"Vector::Vec<CQB::Build::Command>_Vec"(ptr %"temp_Vector::Vec<CQB::Build::Command>"), !dbg !400
  %"Vector::Vec<CQB::Build::Command>_inst" = load %"Vector::Vec<CQB::Build::Command>", ptr %"temp_Vector::Vec<CQB::Build::Command>", align 8, !dbg !400
  %commands_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !400
  store %"Vector::Vec<CQB::Build::Command>" %"Vector::Vec<CQB::Build::Command>_inst", ptr %commands_ptr, align 8, !dbg !400
  ret void, !dbg !400
}

define weak_odr ptr @"CQB::Build::Builder_project_char*"(ptr %0, ptr %1) !dbg !401 !qc.return_types !405 {
entry:
  %name = alloca ptr, align 8
    #dbg_value(ptr %0, !403, !DIExpression(), !406)
  store ptr null, ptr %name, align 8, !dbg !406
    #dbg_value(ptr %1, !404, !DIExpression(), !406)
  store ptr %1, ptr %name, align 8, !dbg !406
  %name1 = load ptr, ptr %name, align 8, !dbg !407
  %project_ptr = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 0, !dbg !407
  store ptr %name1, ptr %project_ptr, align 8, !dbg !407
  ret ptr %0, !dbg !408
}

define weak_odr ptr @"CQB::Build::Builder_alias_char*_char*"(ptr %0, ptr %1, ptr %2) !dbg !409 !qc.return_types !405 {
entry:
  %aliasName = alloca ptr, align 8
  %fileName = alloca ptr, align 8
    #dbg_value(ptr %0, !411, !DIExpression(), !414)
  store ptr null, ptr %fileName, align 8, !dbg !414
    #dbg_value(ptr %1, !412, !DIExpression(), !414)
  store ptr %1, ptr %fileName, align 8, !dbg !414
  store ptr null, ptr %aliasName, align 8, !dbg !414
    #dbg_value(ptr %2, !413, !DIExpression(), !414)
  store ptr %2, ptr %aliasName, align 8, !dbg !414
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.9), !dbg !415
  %fileName1 = load ptr, ptr %fileName, align 8, !dbg !416
  %flag_result2 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %fileName1), !dbg !416
  %aliasName3 = load ptr, ptr %aliasName, align 8, !dbg !417
  %flag_result4 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %aliasName3), !dbg !417
  ret ptr %0, !dbg !418
}

define weak_odr ptr @"CQB::Build::Builder_aliasDir_char*_char*"(ptr %0, ptr %1, ptr %2) !dbg !419 !qc.return_types !405 {
entry:
  %aliasName = alloca ptr, align 8
  %dirName = alloca ptr, align 8
    #dbg_value(ptr %0, !421, !DIExpression(), !424)
  store ptr null, ptr %dirName, align 8, !dbg !424
    #dbg_value(ptr %1, !422, !DIExpression(), !424)
  store ptr %1, ptr %dirName, align 8, !dbg !424
  store ptr null, ptr %aliasName, align 8, !dbg !424
    #dbg_value(ptr %2, !423, !DIExpression(), !424)
  store ptr %2, ptr %aliasName, align 8, !dbg !424
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.10), !dbg !425
  %dirName1 = load ptr, ptr %dirName, align 8, !dbg !426
  %flag_result2 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %dirName1), !dbg !426
  %aliasName3 = load ptr, ptr %aliasName, align 8, !dbg !427
  %flag_result4 = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %aliasName3), !dbg !427
  ret ptr %0, !dbg !428
}

define weak_odr ptr @"CQB::Build::Builder_define_char*"(ptr %0, ptr %1) !dbg !429 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_define = alloca ptr, align 8
    #dbg_value(ptr %0, !431, !DIExpression(), !433)
  store ptr null, ptr %to_define, align 8, !dbg !433
    #dbg_value(ptr %1, !432, !DIExpression(), !433)
  store ptr %1, ptr %to_define, align 8, !dbg !433
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !434
    #dbg_declare(ptr %def, !435, !DIExpression(), !434)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.11), !dbg !434
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !442
    #dbg_declare(ptr %toStr, !443, !DIExpression(), !442)
  %to_define1 = load ptr, ptr %to_define, align 8, !dbg !442
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_define1), !dbg !442
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !444
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !444
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !444
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !445
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !445
  call void @"String::Str__destroy"(ptr %def), !dbg !446
  call void @"String::Str__destroy"(ptr %toStr), !dbg !447
  ret ptr %0, !dbg !448
}

define weak_odr ptr @"CQB::Build::Builder_linkDir_char*"(ptr %0, ptr %1) !dbg !449 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_link = alloca ptr, align 8
    #dbg_value(ptr %0, !451, !DIExpression(), !453)
  store ptr null, ptr %to_link, align 8, !dbg !453
    #dbg_value(ptr %1, !452, !DIExpression(), !453)
  store ptr %1, ptr %to_link, align 8, !dbg !453
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !454
    #dbg_declare(ptr %def, !455, !DIExpression(), !454)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.12), !dbg !454
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !456
    #dbg_declare(ptr %toStr, !457, !DIExpression(), !456)
  %to_link1 = load ptr, ptr %to_link, align 8, !dbg !456
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_link1), !dbg !456
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !458
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !458
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !458
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !459
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !459
  call void @"String::Str__destroy"(ptr %def), !dbg !460
  call void @"String::Str__destroy"(ptr %toStr), !dbg !461
  ret ptr %0, !dbg !462
}

define weak_odr ptr @"CQB::Build::Builder_link_char*"(ptr %0, ptr %1) !dbg !463 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_link = alloca ptr, align 8
    #dbg_value(ptr %0, !465, !DIExpression(), !467)
  store ptr null, ptr %to_link, align 8, !dbg !467
    #dbg_value(ptr %1, !466, !DIExpression(), !467)
  store ptr %1, ptr %to_link, align 8, !dbg !467
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !468
    #dbg_declare(ptr %def, !469, !DIExpression(), !468)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.13), !dbg !468
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !470
    #dbg_declare(ptr %toStr, !471, !DIExpression(), !470)
  %to_link1 = load ptr, ptr %to_link, align 8, !dbg !470
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_link1), !dbg !470
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !472
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !472
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !472
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !473
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !473
  call void @"String::Str__destroy"(ptr %def), !dbg !474
  call void @"String::Str__destroy"(ptr %toStr), !dbg !475
  ret ptr %0, !dbg !476
}

define weak_odr ptr @"CQB::Build::Builder_include_char*"(ptr %0, ptr %1) !dbg !477 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_inc = alloca ptr, align 8
    #dbg_value(ptr %0, !479, !DIExpression(), !481)
  store ptr null, ptr %to_inc, align 8, !dbg !481
    #dbg_value(ptr %1, !480, !DIExpression(), !481)
  store ptr %1, ptr %to_inc, align 8, !dbg !481
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !482
    #dbg_declare(ptr %def, !483, !DIExpression(), !482)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.14), !dbg !482
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !484
    #dbg_declare(ptr %toStr, !485, !DIExpression(), !484)
  %to_inc1 = load ptr, ptr %to_inc, align 8, !dbg !484
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_inc1), !dbg !484
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !486
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !486
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !486
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !487
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !487
  call void @"String::Str__destroy"(ptr %def), !dbg !488
  call void @"String::Str__destroy"(ptr %toStr), !dbg !489
  ret ptr %0, !dbg !490
}

define weak_odr ptr @"CQB::Build::Builder_linkerFlag_char*"(ptr %0, ptr %1) !dbg !491 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_flag = alloca ptr, align 8
    #dbg_value(ptr %0, !493, !DIExpression(), !495)
  store ptr null, ptr %to_flag, align 8, !dbg !495
    #dbg_value(ptr %1, !494, !DIExpression(), !495)
  store ptr %1, ptr %to_flag, align 8, !dbg !495
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !496
    #dbg_declare(ptr %def, !497, !DIExpression(), !496)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.15), !dbg !496
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !498
    #dbg_declare(ptr %toStr, !499, !DIExpression(), !498)
  %to_flag1 = load ptr, ptr %to_flag, align 8, !dbg !498
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_flag1), !dbg !498
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !500
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !500
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !500
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !501
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !501
  call void @"String::Str__destroy"(ptr %def), !dbg !502
  call void @"String::Str__destroy"(ptr %toStr), !dbg !503
  ret ptr %0, !dbg !504
}

define weak_odr ptr @"CQB::Build::Builder_warn_char*"(ptr %0, ptr %1) !dbg !505 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_warn = alloca ptr, align 8
    #dbg_value(ptr %0, !507, !DIExpression(), !509)
  store ptr null, ptr %to_warn, align 8, !dbg !509
    #dbg_value(ptr %1, !508, !DIExpression(), !509)
  store ptr %1, ptr %to_warn, align 8, !dbg !509
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !510
    #dbg_declare(ptr %def, !511, !DIExpression(), !510)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.16), !dbg !510
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !512
    #dbg_declare(ptr %toStr, !513, !DIExpression(), !512)
  %to_warn1 = load ptr, ptr %to_warn, align 8, !dbg !512
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_warn1), !dbg !512
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !514
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !514
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !514
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !515
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !515
  call void @"String::Str__destroy"(ptr %def), !dbg !516
  call void @"String::Str__destroy"(ptr %toStr), !dbg !517
  ret ptr %0, !dbg !518
}

define weak_odr ptr @"CQB::Build::Builder_noWarn_char*"(ptr %0, ptr %1) !dbg !519 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_warn = alloca ptr, align 8
    #dbg_value(ptr %0, !521, !DIExpression(), !523)
  store ptr null, ptr %to_warn, align 8, !dbg !523
    #dbg_value(ptr %1, !522, !DIExpression(), !523)
  store ptr %1, ptr %to_warn, align 8, !dbg !523
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !524
    #dbg_declare(ptr %def, !525, !DIExpression(), !524)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.17), !dbg !524
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !526
    #dbg_declare(ptr %toStr, !527, !DIExpression(), !526)
  %to_warn1 = load ptr, ptr %to_warn, align 8, !dbg !526
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_warn1), !dbg !526
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !528
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !528
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !528
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !529
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !529
  call void @"String::Str__destroy"(ptr %def), !dbg !530
  call void @"String::Str__destroy"(ptr %toStr), !dbg !531
  ret ptr %0, !dbg !532
}

define weak_odr ptr @"CQB::Build::Builder_error_char*"(ptr %0, ptr %1) !dbg !533 !qc.return_types !405 {
entry:
  %toStr = alloca %"String::Str", align 8
  %def = alloca %"String::Str", align 8
  %to_error = alloca ptr, align 8
    #dbg_value(ptr %0, !535, !DIExpression(), !537)
  store ptr null, ptr %to_error, align 8, !dbg !537
    #dbg_value(ptr %1, !536, !DIExpression(), !537)
  store ptr %1, ptr %to_error, align 8, !dbg !537
  store %"String::Str" zeroinitializer, ptr %def, align 8, !dbg !538
    #dbg_declare(ptr %def, !539, !DIExpression(), !538)
  call void @"String::Str_Str_char*"(ptr %def, ptr @.str.18), !dbg !538
  store %"String::Str" zeroinitializer, ptr %toStr, align 8, !dbg !540
    #dbg_declare(ptr %toStr, !541, !DIExpression(), !540)
  %to_error1 = load ptr, ptr %to_error, align 8, !dbg !540
  call void @"String::Str_Str_char*"(ptr %toStr, ptr %to_error1), !dbg !540
  %assign_lhs_val = load %"String::Str", ptr %def, align 8, !dbg !542
  %toStr2 = load %"String::Str", ptr %toStr, align 8, !dbg !542
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %def, %"String::Str" %toStr2), !dbg !542
  %c_str_result = call ptr @"String::Str_c_str"(ptr %def), !dbg !543
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %c_str_result), !dbg !543
  call void @"String::Str__destroy"(ptr %def), !dbg !544
  call void @"String::Str__destroy"(ptr %toStr), !dbg !545
  ret ptr %0, !dbg !546
}

define weak_odr ptr @"CQB::Build::Builder_cArgs"(ptr %0) !dbg !547 !qc.return_types !405 {
entry:
    #dbg_value(ptr %0, !549, !DIExpression(), !550)
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.19), !dbg !551
  ret ptr %0, !dbg !552
}

define weak_odr ptr @"CQB::Build::Builder_addExecutable_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !dbg !553 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
    #dbg_value(ptr %0, !555, !DIExpression(), !558)
  store ptr null, ptr %outputName, align 8, !dbg !558
    #dbg_value(ptr %1, !556, !DIExpression(), !558)
  store ptr %1, ptr %outputName, align 8, !dbg !558
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8, !dbg !558
    #dbg_value(%"Vector::Vec<char*>" %2, !557, !DIExpression(), !558)
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8, !dbg !558
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !559
    #dbg_declare(ptr %cmd, !560, !DIExpression(), !559)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !559
  %outputName1 = load ptr, ptr %outputName, align 8, !dbg !561
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !561
  store ptr %outputName1, ptr %targetName_ptr, align 8, !dbg !561
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !562
  store ptr @.str.20, ptr %commandBin_ptr, align 8, !dbg !562
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8, !dbg !563
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2, !dbg !563
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8, !dbg !563
  %outputName3 = load ptr, ptr %outputName, align 8, !dbg !564
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !564
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8, !dbg !564
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !565
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !565
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !565
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !565
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !565
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !566
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !566
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4), !dbg !566
  ret ptr %0, !dbg !567
}

define weak_odr ptr @"CQB::Build::Builder_addObject_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !dbg !568 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
    #dbg_value(ptr %0, !570, !DIExpression(), !573)
  store ptr null, ptr %outputName, align 8, !dbg !573
    #dbg_value(ptr %1, !571, !DIExpression(), !573)
  store ptr %1, ptr %outputName, align 8, !dbg !573
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8, !dbg !573
    #dbg_value(%"Vector::Vec<char*>" %2, !572, !DIExpression(), !573)
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8, !dbg !573
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !574
    #dbg_declare(ptr %cmd, !575, !DIExpression(), !574)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !574
  %outputName1 = load ptr, ptr %outputName, align 8, !dbg !576
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !576
  store ptr %outputName1, ptr %targetName_ptr, align 8, !dbg !576
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !577
  store ptr @.str.21, ptr %commandBin_ptr, align 8, !dbg !577
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8, !dbg !578
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2, !dbg !578
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8, !dbg !578
  %outputName3 = load ptr, ptr %outputName, align 8, !dbg !579
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !579
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8, !dbg !579
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !580
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !580
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !580
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !580
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !580
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !581
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !581
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4), !dbg !581
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.22), !dbg !582
  ret ptr %0, !dbg !583
}

define weak_odr ptr @"CQB::Build::Builder_addStaticLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !dbg !584 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %objectFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
    #dbg_value(ptr %0, !586, !DIExpression(), !589)
  store ptr null, ptr %outputName, align 8, !dbg !589
    #dbg_value(ptr %1, !587, !DIExpression(), !589)
  store ptr %1, ptr %outputName, align 8, !dbg !589
  store %"Vector::Vec<char*>" zeroinitializer, ptr %objectFiles, align 8, !dbg !589
    #dbg_value(%"Vector::Vec<char*>" %2, !588, !DIExpression(), !589)
  store %"Vector::Vec<char*>" %2, ptr %objectFiles, align 8, !dbg !589
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !590
    #dbg_declare(ptr %cmd, !591, !DIExpression(), !590)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !590
  %outputName1 = load ptr, ptr %outputName, align 8, !dbg !592
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !592
  store ptr %outputName1, ptr %targetName_ptr, align 8, !dbg !592
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !593
  store ptr @.str.23, ptr %commandBin_ptr, align 8, !dbg !593
  %objectFiles2 = load %"Vector::Vec<char*>", ptr %objectFiles, align 8, !dbg !594
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2, !dbg !594
  store %"Vector::Vec<char*>" %objectFiles2, ptr %inputs_ptr, align 8, !dbg !594
  %outputName3 = load ptr, ptr %outputName, align 8, !dbg !595
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !595
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8, !dbg !595
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !596
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !596
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !596
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !596
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !596
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !597
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !597
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4), !dbg !597
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.24), !dbg !598
  ret ptr %0, !dbg !599
}

define weak_odr ptr @"CQB::Build::Builder_addDynamicLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !dbg !600 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %sourceFiles = alloca %"Vector::Vec<char*>", align 8
  %outputName = alloca ptr, align 8
    #dbg_value(ptr %0, !602, !DIExpression(), !605)
  store ptr null, ptr %outputName, align 8, !dbg !605
    #dbg_value(ptr %1, !603, !DIExpression(), !605)
  store ptr %1, ptr %outputName, align 8, !dbg !605
  store %"Vector::Vec<char*>" zeroinitializer, ptr %sourceFiles, align 8, !dbg !605
    #dbg_value(%"Vector::Vec<char*>" %2, !604, !DIExpression(), !605)
  store %"Vector::Vec<char*>" %2, ptr %sourceFiles, align 8, !dbg !605
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !606
    #dbg_declare(ptr %cmd, !607, !DIExpression(), !606)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !606
  %outputName1 = load ptr, ptr %outputName, align 8, !dbg !608
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !608
  store ptr %outputName1, ptr %targetName_ptr, align 8, !dbg !608
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !609
  store ptr @.str.25, ptr %commandBin_ptr, align 8, !dbg !609
  %sourceFiles2 = load %"Vector::Vec<char*>", ptr %sourceFiles, align 8, !dbg !610
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2, !dbg !610
  store %"Vector::Vec<char*>" %sourceFiles2, ptr %inputs_ptr, align 8, !dbg !610
  %outputName3 = load ptr, ptr %outputName, align 8, !dbg !611
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !611
  store ptr %outputName3, ptr %outputArtifact_ptr, align 8, !dbg !611
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !612
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !612
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !612
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !612
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !612
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !613
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !613
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4), !dbg !613
  %flag_result = call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr @.str.26), !dbg !614
  ret ptr %0, !dbg !615
}

define weak_odr ptr @"CQB::Build::Builder_targetFlags_Vector::Vec<char*>"(ptr %0, %"Vector::Vec<char*>" %1) !dbg !616 !qc.return_types !405 {
entry:
  %"CQB::Build::i" = alloca i64, align 8
  %targetflags = alloca %"Vector::Vec<char*>", align 8
    #dbg_value(ptr %0, !618, !DIExpression(), !620)
  store %"Vector::Vec<char*>" zeroinitializer, ptr %targetflags, align 8, !dbg !620
    #dbg_value(%"Vector::Vec<char*>" %1, !619, !DIExpression(), !620)
  store %"Vector::Vec<char*>" %1, ptr %targetflags, align 8, !dbg !620
  store i64 0, ptr %"CQB::Build::i", align 8, !dbg !621
    #dbg_declare(ptr %"CQB::Build::i", !622, !DIExpression(), !621)
  store i64 0, ptr %"CQB::Build::i", align 8, !dbg !621
  br label %for.cond, !dbg !621

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i64, ptr %"CQB::Build::i", align 8, !dbg !621
  %length_result = call i32 @"Vector::Vec<char*>_length"(ptr %targetflags), !dbg !621
  %promote_int = sext i32 %length_result to i64, !dbg !621
  %icmplt = icmp slt i64 %i, %promote_int, !dbg !621
  br i1 %icmplt, label %for.body, label %for.end, !dbg !621

for.body:                                         ; preds = %for.cond
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0), !dbg !623
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 4, !dbg !623
  %i1 = load i64, ptr %"CQB::Build::i", align 8, !dbg !623
  %"operator[]_result" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %targetflags, i64 %i1), !dbg !623
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %"operator[]_result"), !dbg !623
  br label %for.inc, !dbg !623

for.inc:                                          ; preds = %for.body
  %inc_deref = load i64, ptr %"CQB::Build::i", align 8, !dbg !621
  %inc = add i64 %inc_deref, 1, !dbg !621
  store i64 %inc, ptr %"CQB::Build::i", align 8, !dbg !621
  br label %for.cond, !dbg !621

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !624
}

define weak_odr ptr @"CQB::Build::Builder_addCustomCommand_char*_char*_char*"(ptr %0, ptr %1, ptr %2, ptr %3) !dbg !625 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %outputArtifact = alloca ptr, align 8
  %commandBin = alloca ptr, align 8
  %targetName = alloca ptr, align 8
    #dbg_value(ptr %0, !627, !DIExpression(), !631)
  store ptr null, ptr %targetName, align 8, !dbg !631
    #dbg_value(ptr %1, !628, !DIExpression(), !631)
  store ptr %1, ptr %targetName, align 8, !dbg !631
  store ptr null, ptr %commandBin, align 8, !dbg !631
    #dbg_value(ptr %2, !629, !DIExpression(), !631)
  store ptr %2, ptr %commandBin, align 8, !dbg !631
  store ptr null, ptr %outputArtifact, align 8, !dbg !631
    #dbg_value(ptr %3, !630, !DIExpression(), !631)
  store ptr %3, ptr %outputArtifact, align 8, !dbg !631
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !632
    #dbg_declare(ptr %cmd, !633, !DIExpression(), !632)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !632
  %targetName1 = load ptr, ptr %targetName, align 8, !dbg !634
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !634
  store ptr %targetName1, ptr %targetName_ptr, align 8, !dbg !634
  %commandBin2 = load ptr, ptr %commandBin, align 8, !dbg !635
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !635
  store ptr %commandBin2, ptr %commandBin_ptr, align 8, !dbg !635
  %outputArtifact3 = load ptr, ptr %outputArtifact, align 8, !dbg !636
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !636
  store ptr %outputArtifact3, ptr %outputArtifact_ptr, align 8, !dbg !636
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !637
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !637
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !637
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !637
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !637
  %4 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !638
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !638
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %4, %"CQB::Build::Command" %cmd4), !dbg !638
  ret ptr %0, !dbg !639
}

define weak_odr ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %1) !dbg !640 !qc.return_types !405 {
entry:
  %flag = alloca ptr, align 8
    #dbg_value(ptr %0, !642, !DIExpression(), !644)
  store ptr null, ptr %flag, align 8, !dbg !644
    #dbg_value(ptr %1, !643, !DIExpression(), !644)
  store ptr %1, ptr %flag, align 8, !dbg !644
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0), !dbg !645
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 4, !dbg !645
  %flag1 = load ptr, ptr %flag, align 8, !dbg !645
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %flag1), !dbg !645
  ret ptr %0, !dbg !646
}

define weak_odr ptr @"CQB::Build::Builder_addCDependency_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) !dbg !647 !qc.return_types !405 {
entry:
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8
  %cmd = alloca %"CQB::Build::Command", align 8
  %cSourceFiles = alloca %"Vector::Vec<char*>", align 8
  %targetName = alloca ptr, align 8
    #dbg_value(ptr %0, !649, !DIExpression(), !652)
  store ptr null, ptr %targetName, align 8, !dbg !652
    #dbg_value(ptr %1, !650, !DIExpression(), !652)
  store ptr %1, ptr %targetName, align 8, !dbg !652
  store %"Vector::Vec<char*>" zeroinitializer, ptr %cSourceFiles, align 8, !dbg !652
    #dbg_value(%"Vector::Vec<char*>" %2, !651, !DIExpression(), !652)
  store %"Vector::Vec<char*>" %2, ptr %cSourceFiles, align 8, !dbg !652
  call void @llvm.memset.inline.p0.i64(ptr align 8 %cmd, i8 0, i64 72, i1 false), !dbg !653
    #dbg_declare(ptr %cmd, !654, !DIExpression(), !653)
  store %"CQB::Build::Command" zeroinitializer, ptr %cmd, align 8, !dbg !653
  %targetName1 = load ptr, ptr %targetName, align 8, !dbg !655
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 0, !dbg !655
  store ptr %targetName1, ptr %targetName_ptr, align 8, !dbg !655
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 1, !dbg !656
  store ptr @.str.27, ptr %commandBin_ptr, align 8, !dbg !656
  %cSourceFiles2 = load %"Vector::Vec<char*>", ptr %cSourceFiles, align 8, !dbg !657
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 2, !dbg !657
  store %"Vector::Vec<char*>" %cSourceFiles2, ptr %inputs_ptr, align 8, !dbg !657
  %targetName3 = load ptr, ptr %targetName, align 8, !dbg !658
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 3, !dbg !658
  store ptr %targetName3, ptr %outputArtifact_ptr, align 8, !dbg !658
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !659
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !659
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !659
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %cmd, i32 0, i32 5, !dbg !659
  store %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", ptr %dependencies_ptr, align 8, !dbg !659
  %3 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !660
  %cmd4 = load %"CQB::Build::Command", ptr %cmd, align 8, !dbg !660
  call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %3, %"CQB::Build::Command" %cmd4), !dbg !660
  ret ptr %0, !dbg !661
}

define weak_odr ptr @"CQB::Build::Builder_dependsOn_char*"(ptr %0, ptr %1) !dbg !662 !qc.return_types !405 {
entry:
  %dependencyName = alloca ptr, align 8
    #dbg_value(ptr %0, !664, !DIExpression(), !666)
  store ptr null, ptr %dependencyName, align 8, !dbg !666
    #dbg_value(ptr %1, !665, !DIExpression(), !666)
  store ptr %1, ptr %dependencyName, align 8, !dbg !666
  %current_command_result = call ptr @"CQB::Build::Builder_current_command"(ptr %0), !dbg !667
  %2 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %current_command_result, i32 0, i32 5, !dbg !667
  %dependencyName1 = load ptr, ptr %dependencyName, align 8, !dbg !667
  call void @"Vector::Vec<char*>_push_T"(ptr %2, ptr %dependencyName1), !dbg !667
  ret ptr %0, !dbg !668
}

define weak_odr %"Vector::Vec<CQB::Build::Command>" @"CQB::Build::Builder_extractGraph"(ptr %0) !dbg !669 !qc.return_types !672 {
entry:
    #dbg_value(ptr %0, !671, !DIExpression(), !673)
  %1 = getelementptr inbounds nuw %"CQB::Build::Builder", ptr %0, i32 0, i32 1, !dbg !674
  %commands = load %"Vector::Vec<CQB::Build::Command>", ptr %1, align 8, !dbg !674
  ret %"Vector::Vec<CQB::Build::Command>" %commands, !dbg !674
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %0) !dbg !675 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !677, !DIExpression(), !699)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !700
  store i32 0, ptr %size_ptr, align 4, !dbg !700
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !701
  store i32 0, ptr %capacity_ptr, align 4, !dbg !701
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !702
  store ptr null, ptr %data_ptr, align 8, !dbg !702
  ret void, !dbg !702
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %1) !dbg !703 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !705, !DIExpression(), !707)
  store i32 0, ptr %cap, align 4, !dbg !707
  store i32 %1, ptr %cap, align 4, !dbg !707
    #dbg_value(i32 %1, !706, !DIExpression(), !707)
  %cap1 = load i32, ptr %cap, align 4, !dbg !708
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !708
  br i1 %icmpeq, label %then, label %ifcont, !dbg !708

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !709
  %data = load ptr, ptr %2, align 8, !dbg !709
  call void @qc_free(ptr %data), !dbg !709
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !710
  store ptr null, ptr %data_ptr, align 8, !dbg !710
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !711
  store i32 0, ptr %capacity_ptr, align 4, !dbg !711
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !712
  store i32 0, ptr %size_ptr, align 4, !dbg !712
  ret void, !dbg !713

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !714
    #dbg_declare(ptr %"Vector::new_data", !715, !DIExpression(), !714)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !714
  %data2 = load ptr, ptr %3, align 8, !dbg !714
  %cap3 = load i32, ptr %cap, align 4, !dbg !714
  %promote_int = sext i32 %cap3 to i64, !dbg !714
  %mul = mul i64 8, %promote_int, !dbg !714
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !714
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !714
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !716
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !716
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !716

then4:                                            ; preds = %ifcont
  ret void, !dbg !717

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !718
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !718
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !718
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !719
  %size = load i32, ptr %4, align 4, !dbg !719
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !719
  %capacity = load i32, ptr %5, align 4, !dbg !719
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !719
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !719

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !720
  %capacity10 = load i32, ptr %6, align 4, !dbg !720
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !720
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !720
  br label %ifcont9, !dbg !720

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !721
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !721
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !721
  ret void, !dbg !721
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %0, ptr %1) !dbg !722 !qc.return_types !23 {
entry:
  %value = alloca ptr, align 8
    #dbg_value(ptr %0, !724, !DIExpression(), !726)
  store ptr null, ptr %value, align 8, !dbg !726
  store ptr %1, ptr %value, align 8, !dbg !726
    #dbg_value(ptr %1, !725, !DIExpression(), !726)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !727
  %capacity = load i32, ptr %2, align 4, !dbg !727
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !727
  %size = load i32, ptr %3, align 4, !dbg !727
  %icmple = icmp sle i32 %capacity, %size, !dbg !727
  br i1 %icmple, label %then, label %ifcont, !dbg !727

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !728
  %capacity1 = load i32, ptr %4, align 4, !dbg !728
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !728
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !728

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !729
  %size5 = load i32, ptr %5, align 4, !dbg !729
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !729
  %data6 = load ptr, ptr %6, align 8, !dbg !729
  %ptr_arr_asi = getelementptr ptr, ptr %data6, i32 %size5, !dbg !729
  %value7 = load ptr, ptr %value, align 8, !dbg !729
  store ptr %value7, ptr %ptr_arr_asi, align 8, !dbg !729
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !730
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !730
  %inc = add i32 %inc_deref, 1, !dbg !730
  store i32 %inc, ptr %size_ptr, align 4, !dbg !730
  ret void, !dbg !730

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !728

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !728
  %capacity2 = load i32, ptr %7, align 4, !dbg !728
  %mul = mul i32 %capacity2, 2, !dbg !728
  br label %ternary.end, !dbg !728

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !728
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !728
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !731
  %data = load ptr, ptr %8, align 8, !dbg !731
  %ptr_eq = icmp eq ptr %data, null, !dbg !731
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !731

then3:                                            ; preds = %ternary.end
  ret void, !dbg !731

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !731
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Task*>_length"(ptr %0) !dbg !732 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !734, !DIExpression(), !735)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !736
  %size = load i32, ptr %1, align 4, !dbg !736
  ret i32 %size, !dbg !736
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_pop"(ptr %0) !dbg !737 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !739, !DIExpression(), !740)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !741
  %size = load i32, ptr %1, align 4, !dbg !741
  %icmpgt = icmp sgt i32 %size, 0, !dbg !741
  br i1 %icmpgt, label %then, label %ifcont, !dbg !741

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !742
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !742
  %dec = sub i32 %inc_deref, 1, !dbg !742
  store i32 %dec, ptr %size_ptr, align 4, !dbg !742
  br label %ifcont, !dbg !742

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !742
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_shrinkToFit"(ptr %0) !dbg !743 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !745, !DIExpression(), !746)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !747
  %size = load i32, ptr %1, align 4, !dbg !747
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %size), !dbg !747
  ret void, !dbg !747
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !748 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !750, !DIExpression(), !753)
  store ptr null, ptr %data, align 8, !dbg !753
  store ptr %1, ptr %data, align 8, !dbg !753
    #dbg_value(ptr %1, !751, !DIExpression(), !753)
  store i64 0, ptr %length, align 8, !dbg !753
  store i64 %2, ptr %length, align 8, !dbg !753
    #dbg_value(i64 %2, !752, !DIExpression(), !753)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !754
  %capacity = load i32, ptr %3, align 4, !dbg !754
  %icmpne = icmp ne i32 %capacity, 0, !dbg !754
  br i1 %icmpne, label %then, label %ifcont, !dbg !754

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !754
  %data1 = load ptr, ptr %4, align 8, !dbg !754
  call void @qc_free(ptr %data1), !dbg !754
  br label %ifcont, !dbg !754

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !755
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !755
  %trunc = trunc i64 %length2 to i32, !dbg !755
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !755
  %length3 = load i64, ptr %length, align 8, !dbg !756
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !756
  %trunc4 = trunc i64 %length3 to i32, !dbg !756
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !756
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !757
  %capacity5 = load i32, ptr %5, align 4, !dbg !757
  %promote_int = sext i32 %capacity5 to i64, !dbg !757
  %mul = mul i64 8, %promote_int, !dbg !757
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !757
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !757
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !757
  store i32 0, ptr %"Vector::i", align 4, !dbg !758
    #dbg_declare(ptr %"Vector::i", !759, !DIExpression(), !758)
  store i32 0, ptr %"Vector::i", align 4, !dbg !758
  br label %for.cond, !dbg !758

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !758
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !758
  %size = load i32, ptr %6, align 4, !dbg !758
  %icmplt = icmp slt i32 %i, %size, !dbg !758
  br i1 %icmplt, label %for.body, label %for.end, !dbg !758

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !760
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !760
  %data7 = load ptr, ptr %7, align 8, !dbg !760
  %ptr_arr_asi = getelementptr ptr, ptr %data7, i32 %i6, !dbg !760
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !760
  %data9 = load ptr, ptr %data, align 8, !dbg !760
  %ptr_arr_addr = getelementptr ptr, ptr %data9, i32 %i8, !dbg !760
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !760
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !760
  br label %for.inc, !dbg !760

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !758
  %inc = add i32 %inc_deref, 1, !dbg !758
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !758
  br label %for.cond, !dbg !758

for.end:                                          ; preds = %for.cond
  ret void, !dbg !758
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !761 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !763, !DIExpression(), !765)
  store i64 0, ptr %index, align 8, !dbg !765
  store i64 %1, ptr %index, align 8, !dbg !765
    #dbg_value(i64 %1, !764, !DIExpression(), !765)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !766
  %data = load ptr, ptr %2, align 8, !dbg !766
  %index1 = load i64, ptr %index, align 8, !dbg !766
  %lval_ptr_arr_addr = getelementptr ptr, ptr %data, i64 %index1, !dbg !766
  ret ptr %lval_ptr_arr_addr, !dbg !766
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !767 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !769, !DIExpression(), !777)
  store ptr null, ptr %data, align 8, !dbg !777
  store ptr %1, ptr %data, align 8, !dbg !777
    #dbg_value(ptr %1, !774, !DIExpression(), !777)
  store i32 0, ptr %size, align 4, !dbg !777
  store i32 %2, ptr %size, align 4, !dbg !777
    #dbg_value(i32 %2, !775, !DIExpression(), !777)
  store i1 false, ptr %is_end, align 1, !dbg !777
  store i1 %3, ptr %is_end, align 1, !dbg !777
    #dbg_value(i1 %3, !776, !DIExpression(), !777)
  %data1 = load ptr, ptr %data, align 8, !dbg !778
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !778
  store ptr %data1, ptr %data_ptr, align 8, !dbg !778
  %size2 = load i32, ptr %size, align 4, !dbg !779
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !779
  store i32 %size2, ptr %size_ptr, align 4, !dbg !779
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !780
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !780

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !780
  br label %ternary.end, !dbg !780

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !780

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !780
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !780
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !780
  ret void, !dbg !780
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %0) !dbg !781 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !783, !DIExpression(), !784)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !785
  %size = load i32, ptr %1, align 4, !dbg !785
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !785
  %current_index = load i32, ptr %2, align 4, !dbg !785
  %icmple = icmp sle i32 %size, %current_index, !dbg !785
  ret i1 %icmple, !dbg !785
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %0) !dbg !786 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !788, !DIExpression(), !789)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !790
  %size = load i32, ptr %1, align 4, !dbg !790
  %icmpeq = icmp eq i32 %size, 0, !dbg !790
  br i1 %icmpeq, label %then, label %ifcont, !dbg !790

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.32, ptr @6, i32 40) #29, !dbg !791
  unreachable, !dbg !791

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %0), !dbg !792
  %not = xor i1 %_atEnd_result, true, !dbg !792
  br i1 %not, label %then1, label %ifcont2, !dbg !792

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !793
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !793
  %inc = add i32 %inc_deref, 1, !dbg !793
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !793
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !793
  %data = load ptr, ptr %2, align 8, !dbg !793
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %inc_deref, !dbg !793
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !793
  ret ptr %ptr_arr_val, !dbg !793

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !794
  %size3 = load i32, ptr %3, align 4, !dbg !794
  %sub = sub i32 %size3, 1, !dbg !794
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !794
  %data4 = load ptr, ptr %4, align 8, !dbg !794
  %ptr_arr_addr5 = getelementptr ptr, ptr %data4, i32 %sub, !dbg !794
  %ptr_arr_val6 = load ptr, ptr %ptr_arr_addr5, align 8, !dbg !794
  ret ptr %ptr_arr_val6, !dbg !794
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atStart"(ptr %0) !dbg !795 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !797, !DIExpression(), !798)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !799
  %current_index = load i32, ptr %1, align 4, !dbg !799
  %icmple = icmp sle i32 %current_index, 0, !dbg !799
  ret i1 %icmple, !dbg !799
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__prev"(ptr %0) !dbg !800 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !802, !DIExpression(), !803)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !804
  %size = load i32, ptr %1, align 4, !dbg !804
  %icmpeq = icmp eq i32 %size, 0, !dbg !804
  br i1 %icmpeq, label %then, label %ifcont, !dbg !804

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.33, ptr @7, i32 56) #29, !dbg !805
  unreachable, !dbg !805

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atStart"(ptr %0), !dbg !806
  %not = xor i1 %_atStart_result, true, !dbg !806
  br i1 %not, label %then1, label %ifcont2, !dbg !806

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !807
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !807
  %dec = sub i32 %inc_deref, 1, !dbg !807
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !807
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !807
  %data = load ptr, ptr %2, align 8, !dbg !807
  %ptr_arr_addr = getelementptr ptr, ptr %data, i32 %dec, !dbg !807
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !807
  ret ptr %ptr_arr_val, !dbg !807

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !808
  %current_index = load i32, ptr %3, align 4, !dbg !808
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !808
  %data3 = load ptr, ptr %4, align 8, !dbg !808
  %ptr_arr_addr4 = getelementptr ptr, ptr %data3, i32 %current_index, !dbg !808
  %ptr_arr_val5 = load ptr, ptr %ptr_arr_addr4, align 8, !dbg !808
  ret ptr %ptr_arr_val5, !dbg !808
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>__moveTo_int"(ptr %0, i32 %1) !dbg !809 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !811, !DIExpression(), !813)
  store i32 0, ptr %index, align 4, !dbg !813
  store i32 %1, ptr %index, align 4, !dbg !813
    #dbg_value(i32 %1, !812, !DIExpression(), !813)
  %index1 = load i32, ptr %index, align 4, !dbg !814
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !814
  %size = load i32, ptr %2, align 4, !dbg !814
  %icmpge = icmp sge i32 %index1, %size, !dbg !814
  br i1 %icmpge, label %then, label %elif.cond, !dbg !814

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !815
  %size2 = load i32, ptr %3, align 4, !dbg !815
  %sub = sub i32 %size2, 1, !dbg !815
  store i32 %sub, ptr %index, align 4, !dbg !815
  br label %ifcont, !dbg !815

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !816
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !816
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !816
  ret void, !dbg !816

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !817
  %icmplt = icmp slt i32 %index3, 0, !dbg !817
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !817

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !818
  br label %ifcont, !dbg !818
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_Vec"(ptr %0) !dbg !819 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !821, !DIExpression(), !823)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !824
  store i32 0, ptr %size_ptr, align 4, !dbg !824
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !825
  store i32 0, ptr %capacity_ptr, align 4, !dbg !825
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !826
  store ptr null, ptr %data_ptr, align 8, !dbg !826
  ret void, !dbg !826
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %1) !dbg !827 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !829, !DIExpression(), !831)
  store i32 0, ptr %cap, align 4, !dbg !831
  store i32 %1, ptr %cap, align 4, !dbg !831
    #dbg_value(i32 %1, !830, !DIExpression(), !831)
  %cap1 = load i32, ptr %cap, align 4, !dbg !832
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !832
  br i1 %icmpeq, label %then, label %ifcont, !dbg !832

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !833
  %data = load ptr, ptr %2, align 8, !dbg !833
  call void @qc_free(ptr %data), !dbg !833
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !834
  store ptr null, ptr %data_ptr, align 8, !dbg !834
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !835
  store i32 0, ptr %capacity_ptr, align 4, !dbg !835
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !836
  store i32 0, ptr %size_ptr, align 4, !dbg !836
  ret void, !dbg !837

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !838
    #dbg_declare(ptr %"Vector::new_data", !839, !DIExpression(), !838)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !838
  %data2 = load ptr, ptr %3, align 8, !dbg !838
  %cap3 = load i32, ptr %cap, align 4, !dbg !838
  %promote_int = sext i32 %cap3 to i64, !dbg !838
  %mul = mul i64 24, %promote_int, !dbg !838
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !838
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !838
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !840
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !840
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !840

then4:                                            ; preds = %ifcont
  ret void, !dbg !841

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !842
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !842
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !842
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !843
  %size = load i32, ptr %4, align 4, !dbg !843
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !843
  %capacity = load i32, ptr %5, align 4, !dbg !843
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !843
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !843

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !844
  %capacity10 = load i32, ptr %6, align 4, !dbg !844
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !844
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !844
  br label %ifcont9, !dbg !844

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !845
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !845
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !845
  ret void, !dbg !845
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_push_T"(ptr %0, %"CQB::CI::Step" %1) !dbg !846 !qc.return_types !23 {
entry:
  %value = alloca %"CQB::CI::Step", align 8
    #dbg_value(ptr %0, !848, !DIExpression(), !850)
  store %"CQB::CI::Step" zeroinitializer, ptr %value, align 8, !dbg !850
  store %"CQB::CI::Step" %1, ptr %value, align 8, !dbg !850
    #dbg_value(%"CQB::CI::Step" %1, !849, !DIExpression(), !850)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !851
  %capacity = load i32, ptr %2, align 4, !dbg !851
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !851
  %size = load i32, ptr %3, align 4, !dbg !851
  %icmple = icmp sle i32 %capacity, %size, !dbg !851
  br i1 %icmple, label %then, label %ifcont, !dbg !851

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !852
  %capacity1 = load i32, ptr %4, align 4, !dbg !852
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !852
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !852

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !853
  %size5 = load i32, ptr %5, align 4, !dbg !853
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !853
  %data6 = load ptr, ptr %6, align 8, !dbg !853
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data6, i32 %size5, !dbg !853
  %value7 = load %"CQB::CI::Step", ptr %value, align 8, !dbg !853
  store %"CQB::CI::Step" %value7, ptr %ptr_arr_asi, align 8, !dbg !853
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !854
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !854
  %inc = add i32 %inc_deref, 1, !dbg !854
  store i32 %inc, ptr %size_ptr, align 4, !dbg !854
  ret void, !dbg !854

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !852

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !852
  %capacity2 = load i32, ptr %7, align 4, !dbg !852
  %mul = mul i32 %capacity2, 2, !dbg !852
  br label %ternary.end, !dbg !852

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !852
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !852
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !855
  %data = load ptr, ptr %8, align 8, !dbg !855
  %ptr_eq = icmp eq ptr %data, null, !dbg !855
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !855

then3:                                            ; preds = %ternary.end
  ret void, !dbg !855

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !855
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %0) !dbg !856 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !858, !DIExpression(), !859)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !860
  %size = load i32, ptr %1, align 4, !dbg !860
  ret i32 %size, !dbg !860
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_pop"(ptr %0) !dbg !861 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !863, !DIExpression(), !864)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !865
  %size = load i32, ptr %1, align 4, !dbg !865
  %icmpgt = icmp sgt i32 %size, 0, !dbg !865
  br i1 %icmpgt, label %then, label %ifcont, !dbg !865

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !866
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !866
  %dec = sub i32 %inc_deref, 1, !dbg !866
  store i32 %dec, ptr %size_ptr, align 4, !dbg !866
  br label %ifcont, !dbg !866

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !866
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_shrinkToFit"(ptr %0) !dbg !867 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !869, !DIExpression(), !870)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !871
  %size = load i32, ptr %1, align 4, !dbg !871
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %size), !dbg !871
  ret void, !dbg !871
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !872 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !874, !DIExpression(), !877)
  store ptr null, ptr %data, align 8, !dbg !877
  store ptr %1, ptr %data, align 8, !dbg !877
    #dbg_value(ptr %1, !875, !DIExpression(), !877)
  store i64 0, ptr %length, align 8, !dbg !877
  store i64 %2, ptr %length, align 8, !dbg !877
    #dbg_value(i64 %2, !876, !DIExpression(), !877)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !878
  %capacity = load i32, ptr %3, align 4, !dbg !878
  %icmpne = icmp ne i32 %capacity, 0, !dbg !878
  br i1 %icmpne, label %then, label %ifcont, !dbg !878

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !878
  %data1 = load ptr, ptr %4, align 8, !dbg !878
  call void @qc_free(ptr %data1), !dbg !878
  br label %ifcont, !dbg !878

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !879
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !879
  %trunc = trunc i64 %length2 to i32, !dbg !879
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !879
  %length3 = load i64, ptr %length, align 8, !dbg !880
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !880
  %trunc4 = trunc i64 %length3 to i32, !dbg !880
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !880
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !881
  %capacity5 = load i32, ptr %5, align 4, !dbg !881
  %promote_int = sext i32 %capacity5 to i64, !dbg !881
  %mul = mul i64 24, %promote_int, !dbg !881
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !881
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !881
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !881
  store i32 0, ptr %"Vector::i", align 4, !dbg !882
    #dbg_declare(ptr %"Vector::i", !883, !DIExpression(), !882)
  store i32 0, ptr %"Vector::i", align 4, !dbg !882
  br label %for.cond, !dbg !882

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !882
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !882
  %size = load i32, ptr %6, align 4, !dbg !882
  %icmplt = icmp slt i32 %i, %size, !dbg !882
  br i1 %icmplt, label %for.body, label %for.end, !dbg !882

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !884
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !884
  %data7 = load ptr, ptr %7, align 8, !dbg !884
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data7, i32 %i6, !dbg !884
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !884
  %data9 = load ptr, ptr %data, align 8, !dbg !884
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data9, i32 %i8, !dbg !884
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8, !dbg !884
  store %"CQB::CI::Step" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !884
  br label %for.inc, !dbg !884

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !882
  %inc = add i32 %inc_deref, 1, !dbg !882
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !882
  br label %for.cond, !dbg !882

for.end:                                          ; preds = %for.cond
  ret void, !dbg !882
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !885 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !887, !DIExpression(), !889)
  store i64 0, ptr %index, align 8, !dbg !889
  store i64 %1, ptr %index, align 8, !dbg !889
    #dbg_value(i64 %1, !888, !DIExpression(), !889)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !890
  %data = load ptr, ptr %2, align 8, !dbg !890
  %index1 = load i64, ptr %index, align 8, !dbg !890
  %lval_ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i64 %index1, !dbg !890
  ret ptr %lval_ptr_arr_addr, !dbg !890
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !891 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !893, !DIExpression(), !901)
  store ptr null, ptr %data, align 8, !dbg !901
  store ptr %1, ptr %data, align 8, !dbg !901
    #dbg_value(ptr %1, !898, !DIExpression(), !901)
  store i32 0, ptr %size, align 4, !dbg !901
  store i32 %2, ptr %size, align 4, !dbg !901
    #dbg_value(i32 %2, !899, !DIExpression(), !901)
  store i1 false, ptr %is_end, align 1, !dbg !901
  store i1 %3, ptr %is_end, align 1, !dbg !901
    #dbg_value(i1 %3, !900, !DIExpression(), !901)
  %data1 = load ptr, ptr %data, align 8, !dbg !902
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !902
  store ptr %data1, ptr %data_ptr, align 8, !dbg !902
  %size2 = load i32, ptr %size, align 4, !dbg !903
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !903
  store i32 %size2, ptr %size_ptr, align 4, !dbg !903
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !904
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !904

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !904
  br label %ternary.end, !dbg !904

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !904

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !904
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !904
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !904
  ret void, !dbg !904
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atEnd"(ptr %0) !dbg !905 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !907, !DIExpression(), !908)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !909
  %size = load i32, ptr %1, align 4, !dbg !909
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !909
  %current_index = load i32, ptr %2, align 4, !dbg !909
  %icmple = icmp sle i32 %size, %current_index, !dbg !909
  ret i1 %icmple, !dbg !909
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__next"(ptr %0) !dbg !910 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !912, !DIExpression(), !913)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !914
  %size = load i32, ptr %1, align 4, !dbg !914
  %icmpeq = icmp eq i32 %size, 0, !dbg !914
  br i1 %icmpeq, label %then, label %ifcont, !dbg !914

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.28, ptr @4, i32 40) #29, !dbg !915
  unreachable, !dbg !915

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Step>__atEnd"(ptr %0), !dbg !916
  %not = xor i1 %_atEnd_result, true, !dbg !916
  br i1 %not, label %then1, label %ifcont2, !dbg !916

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !917
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !917
  %inc = add i32 %inc_deref, 1, !dbg !917
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !917
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !917
  %data = load ptr, ptr %2, align 8, !dbg !917
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i32 %inc_deref, !dbg !917
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8, !dbg !917
  ret %"CQB::CI::Step" %ptr_arr_val, !dbg !917

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !918
  %size3 = load i32, ptr %3, align 4, !dbg !918
  %sub = sub i32 %size3, 1, !dbg !918
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !918
  %data4 = load ptr, ptr %4, align 8, !dbg !918
  %ptr_arr_addr5 = getelementptr %"CQB::CI::Step", ptr %data4, i32 %sub, !dbg !918
  %ptr_arr_val6 = load %"CQB::CI::Step", ptr %ptr_arr_addr5, align 8, !dbg !918
  ret %"CQB::CI::Step" %ptr_arr_val6, !dbg !918
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atStart"(ptr %0) !dbg !919 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !921, !DIExpression(), !922)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !923
  %current_index = load i32, ptr %1, align 4, !dbg !923
  %icmple = icmp sle i32 %current_index, 0, !dbg !923
  ret i1 %icmple, !dbg !923
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__prev"(ptr %0) !dbg !924 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !926, !DIExpression(), !927)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !928
  %size = load i32, ptr %1, align 4, !dbg !928
  %icmpeq = icmp eq i32 %size, 0, !dbg !928
  br i1 %icmpeq, label %then, label %ifcont, !dbg !928

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.29, ptr @5, i32 56) #29, !dbg !929
  unreachable, !dbg !929

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::CI::Step>__atStart"(ptr %0), !dbg !930
  %not = xor i1 %_atStart_result, true, !dbg !930
  br i1 %not, label %then1, label %ifcont2, !dbg !930

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !931
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !931
  %dec = sub i32 %inc_deref, 1, !dbg !931
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !931
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !931
  %data = load ptr, ptr %2, align 8, !dbg !931
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data, i32 %dec, !dbg !931
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8, !dbg !931
  ret %"CQB::CI::Step" %ptr_arr_val, !dbg !931

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !932
  %current_index = load i32, ptr %3, align 4, !dbg !932
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !932
  %data3 = load ptr, ptr %4, align 8, !dbg !932
  %ptr_arr_addr4 = getelementptr %"CQB::CI::Step", ptr %data3, i32 %current_index, !dbg !932
  %ptr_arr_val5 = load %"CQB::CI::Step", ptr %ptr_arr_addr4, align 8, !dbg !932
  ret %"CQB::CI::Step" %ptr_arr_val5, !dbg !932
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>__moveTo_int"(ptr %0, i32 %1) !dbg !933 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !935, !DIExpression(), !937)
  store i32 0, ptr %index, align 4, !dbg !937
  store i32 %1, ptr %index, align 4, !dbg !937
    #dbg_value(i32 %1, !936, !DIExpression(), !937)
  %index1 = load i32, ptr %index, align 4, !dbg !938
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !938
  %size = load i32, ptr %2, align 4, !dbg !938
  %icmpge = icmp sge i32 %index1, %size, !dbg !938
  br i1 %icmpge, label %then, label %elif.cond, !dbg !938

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !939
  %size2 = load i32, ptr %3, align 4, !dbg !939
  %sub = sub i32 %size2, 1, !dbg !939
  store i32 %sub, ptr %index, align 4, !dbg !939
  br label %ifcont, !dbg !939

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !940
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !940
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !940
  ret void, !dbg !940

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !941
  %icmplt = icmp slt i32 %index3, 0, !dbg !941
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !941

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !942
  br label %ifcont, !dbg !942
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__begin"(ptr %0) !dbg !943 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Step>" = alloca %"Vector::Iterator::It<CQB::CI::Step>", align 8
    #dbg_value(ptr %0, !945, !DIExpression(), !946)
  store %"Vector::Iterator::It<CQB::CI::Step>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8, !dbg !947
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !947
  %data = load ptr, ptr %1, align 8, !dbg !947
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !947
  %size = load i32, ptr %2, align 4, !dbg !947
  call void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", ptr %data, i32 %size, i1 false), !dbg !947
  %"Vector::Iterator::It<CQB::CI::Step>_inst" = load %"Vector::Iterator::It<CQB::CI::Step>", ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8, !dbg !947
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst", !dbg !947
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__end"(ptr %0) !dbg !948 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Step>" = alloca %"Vector::Iterator::It<CQB::CI::Step>", align 8
    #dbg_value(ptr %0, !950, !DIExpression(), !951)
  store %"Vector::Iterator::It<CQB::CI::Step>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8, !dbg !952
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !952
  %data = load ptr, ptr %1, align 8, !dbg !952
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !952
  %size = load i32, ptr %2, align 4, !dbg !952
  call void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", ptr %data, i32 %size, i1 true), !dbg !952
  %"Vector::Iterator::It<CQB::CI::Step>_inst" = load %"Vector::Iterator::It<CQB::CI::Step>", ptr %"temp_Vector::Iterator::It<CQB::CI::Step>", align 8, !dbg !952
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst", !dbg !952
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>__destroy"(ptr %0) !dbg !953 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !955, !DIExpression(), !956)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !957
  %data = load ptr, ptr %1, align 8, !dbg !957
  call void @qc_free(ptr %data), !dbg !957
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !958
  store ptr null, ptr %data_ptr, align 8, !dbg !958
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !959
  store i32 -1, ptr %size_ptr, align 4, !dbg !959
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !960
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !960
  ret void, !dbg !960
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Step>" %1) !dbg !961 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::CI::Step>", align 8
    #dbg_value(ptr %0, !963, !DIExpression(), !965)
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %other, align 8, !dbg !965
  store %"Vector::Vec<CQB::CI::Step>" %1, ptr %other, align 8, !dbg !965
    #dbg_value(%"Vector::Vec<CQB::CI::Step>" %1, !964, !DIExpression(), !965)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 2, !dbg !966
  %capacity = load i32, ptr %2, align 4, !dbg !966
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 2, !dbg !966
  %capacity1 = load i32, ptr %3, align 4, !dbg !966
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !966
  br i1 %icmpne, label %then, label %ifcont, !dbg !966

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 2, !dbg !967
  %capacity2 = load i32, ptr %4, align 4, !dbg !967
  call void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %capacity2), !dbg !967
  br label %ifcont, !dbg !967

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 1, !dbg !968
  %size = load i32, ptr %5, align 4, !dbg !968
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !968
  store i32 %size, ptr %size_ptr, align 4, !dbg !968
  store i32 0, ptr %"Vector::i", align 4, !dbg !969
    #dbg_declare(ptr %"Vector::i", !970, !DIExpression(), !969)
  store i32 0, ptr %"Vector::i", align 4, !dbg !969
  br label %for.cond, !dbg !969

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !969
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 1, !dbg !969
  %size3 = load i32, ptr %6, align 4, !dbg !969
  %icmplt = icmp slt i32 %i, %size3, !dbg !969
  br i1 %icmplt, label %for.body, label %for.end, !dbg !969

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !971
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 0, !dbg !971
  %data = load ptr, ptr %7, align 8, !dbg !971
  %ptr_arr_asi = getelementptr %"CQB::CI::Step", ptr %data, i32 %i4, !dbg !971
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !971
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %other, i32 0, i32 0, !dbg !971
  %data6 = load ptr, ptr %8, align 8, !dbg !971
  %ptr_arr_addr = getelementptr %"CQB::CI::Step", ptr %data6, i32 %i5, !dbg !971
  %ptr_arr_val = load %"CQB::CI::Step", ptr %ptr_arr_addr, align 8, !dbg !971
  store %"CQB::CI::Step" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !971
  br label %for.inc, !dbg !971

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !969
  %inc = add i32 %inc_deref, 1, !dbg !969
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !969
  br label %for.cond, !dbg !969

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !972
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Step>_isEmpty"(ptr %0) !dbg !973 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !975, !DIExpression(), !976)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Step>", ptr %0, i32 0, i32 1, !dbg !977
  %size = load i32, ptr %1, align 4, !dbg !977
  %icmpeq = icmp eq i32 %size, 0, !dbg !977
  ret i1 %icmpeq, !dbg !977
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %0) !dbg !978 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Task*>" = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
    #dbg_value(ptr %0, !980, !DIExpression(), !981)
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !982
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !982
  %data = load ptr, ptr %1, align 8, !dbg !982
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !982
  %size = load i32, ptr %2, align 4, !dbg !982
  call void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", ptr %data, i32 %size, i1 false), !dbg !982
  %"Vector::Iterator::It<CQB::CI::Task*>_inst" = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !982
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst", !dbg !982
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__end"(ptr %0) !dbg !983 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::CI::Task*>" = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8
    #dbg_value(ptr %0, !985, !DIExpression(), !986)
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !987
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !987
  %data = load ptr, ptr %1, align 8, !dbg !987
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !987
  %size = load i32, ptr %2, align 4, !dbg !987
  call void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", ptr %data, i32 %size, i1 true), !dbg !987
  %"Vector::Iterator::It<CQB::CI::Task*>_inst" = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %"temp_Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !987
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst", !dbg !987
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %0) !dbg !988 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !990, !DIExpression(), !991)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !992
  %data = load ptr, ptr %1, align 8, !dbg !992
  call void @qc_free(ptr %data), !dbg !992
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !993
  store ptr null, ptr %data_ptr, align 8, !dbg !993
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !994
  store i32 -1, ptr %size_ptr, align 4, !dbg !994
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !995
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !995
  ret void, !dbg !995
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Task*>" %1) !dbg !996 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
    #dbg_value(ptr %0, !998, !DIExpression(), !1000)
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %other, align 8, !dbg !1000
  store %"Vector::Vec<CQB::CI::Task*>" %1, ptr %other, align 8, !dbg !1000
    #dbg_value(%"Vector::Vec<CQB::CI::Task*>" %1, !999, !DIExpression(), !1000)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 2, !dbg !1001
  %capacity = load i32, ptr %2, align 4, !dbg !1001
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 2, !dbg !1001
  %capacity1 = load i32, ptr %3, align 4, !dbg !1001
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !1001
  br i1 %icmpne, label %then, label %ifcont, !dbg !1001

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 2, !dbg !1002
  %capacity2 = load i32, ptr %4, align 4, !dbg !1002
  call void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %capacity2), !dbg !1002
  br label %ifcont, !dbg !1002

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 1, !dbg !1003
  %size = load i32, ptr %5, align 4, !dbg !1003
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !1003
  store i32 %size, ptr %size_ptr, align 4, !dbg !1003
  store i32 0, ptr %"Vector::i", align 4, !dbg !1004
    #dbg_declare(ptr %"Vector::i", !1005, !DIExpression(), !1004)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1004
  br label %for.cond, !dbg !1004

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1004
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 1, !dbg !1004
  %size3 = load i32, ptr %6, align 4, !dbg !1004
  %icmplt = icmp slt i32 %i, %size3, !dbg !1004
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1004

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !1006
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 0, !dbg !1006
  %data = load ptr, ptr %7, align 8, !dbg !1006
  %ptr_arr_asi = getelementptr ptr, ptr %data, i32 %i4, !dbg !1006
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !1006
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %other, i32 0, i32 0, !dbg !1006
  %data6 = load ptr, ptr %8, align 8, !dbg !1006
  %ptr_arr_addr = getelementptr ptr, ptr %data6, i32 %i5, !dbg !1006
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !1006
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !1006
  br label %for.inc, !dbg !1006

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1004
  %inc = add i32 %inc_deref, 1, !dbg !1004
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1004
  br label %for.cond, !dbg !1004

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !1007
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Task*>_isEmpty"(ptr %0) !dbg !1008 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1010, !DIExpression(), !1011)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::CI::Task*>", ptr %0, i32 0, i32 1, !dbg !1012
  %size = load i32, ptr %1, align 4, !dbg !1012
  %icmpeq = icmp eq i32 %size, 0, !dbg !1012
  ret i1 %icmpeq, !dbg !1012
}

define weak_odr void @"CQB::CI::Job_Job_char*_Vector::Vec<Step>"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2) !dbg !1013 !qc.return_types !25 {
entry:
  %"temp_Vector::Vec<CQB::CI::Task*>" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8
  %"CQB::CI::task" = alloca ptr, align 8
  %steps = alloca %"Vector::Vec<CQB::CI::Step>", align 8
  %name = alloca ptr, align 8
    #dbg_value(ptr %0, !1015, !DIExpression(), !1024)
  store ptr null, ptr %name, align 8, !dbg !1024
    #dbg_value(ptr %1, !1022, !DIExpression(), !1024)
  store ptr %1, ptr %name, align 8, !dbg !1024
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %steps, align 8, !dbg !1024
    #dbg_value(%"Vector::Vec<CQB::CI::Step>" %2, !1023, !DIExpression(), !1024)
  store %"Vector::Vec<CQB::CI::Step>" %2, ptr %steps, align 8, !dbg !1024
  store ptr null, ptr %"CQB::CI::task", align 8, !dbg !1025
    #dbg_declare(ptr %"CQB::CI::task", !1026, !DIExpression(), !1025)
  %builtin_call = call ptr @qc_malloc(i64 48), !dbg !1025
  store ptr %builtin_call, ptr %"CQB::CI::task", align 8, !dbg !1025
  %task = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1027
  %name1 = load ptr, ptr %name, align 8, !dbg !1027
  %3 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %name1, 0, !dbg !1027
  %steps2 = load %"Vector::Vec<CQB::CI::Step>", ptr %steps, align 8, !dbg !1027
  %4 = insertvalue %"CQB::CI::Task" %3, %"Vector::Vec<CQB::CI::Step>" %steps2, 1, !dbg !1027
  store %"CQB::CI::Task" %4, ptr %task, align 8, !dbg !1027
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1028
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>"), !dbg !1028
  %"Vector::Vec<CQB::CI::Task*>_inst" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1028
  %task3 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1028
  %next_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task3, i32 0, i32 2, !dbg !1028
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst", ptr %next_ptr, align 8, !dbg !1028
  %5 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 0, !dbg !1029
  %task4 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1029
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %5, ptr %task4), !dbg !1029
  %task5 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1030
  %entry_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 1, !dbg !1030
  store ptr %task5, ptr %entry_ptr, align 8, !dbg !1030
  %task6 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1031
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2, !dbg !1031
  store ptr %task6, ptr %current_ptr, align 8, !dbg !1031
  ret void, !dbg !1031
}

define weak_odr ptr @"CQB::CI::Job_addTask_char*_Vector::Vec<Step>_bool"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2, i1 %3) !dbg !1032 !qc.return_types !1038 {
entry:
  %"CQB::CI::task" = alloca ptr, align 8
  %advance = alloca i1, align 1
  %steps = alloca %"Vector::Vec<CQB::CI::Step>", align 8
  %name = alloca ptr, align 8
    #dbg_value(ptr %0, !1034, !DIExpression(), !1039)
  store ptr null, ptr %name, align 8, !dbg !1039
    #dbg_value(ptr %1, !1035, !DIExpression(), !1039)
  store ptr %1, ptr %name, align 8, !dbg !1039
  store %"Vector::Vec<CQB::CI::Step>" zeroinitializer, ptr %steps, align 8, !dbg !1039
    #dbg_value(%"Vector::Vec<CQB::CI::Step>" %2, !1036, !DIExpression(), !1039)
  store %"Vector::Vec<CQB::CI::Step>" %2, ptr %steps, align 8, !dbg !1039
  store i1 false, ptr %advance, align 1, !dbg !1039
    #dbg_value(i1 %3, !1037, !DIExpression(), !1039)
  store i1 %3, ptr %advance, align 1, !dbg !1039
  store ptr null, ptr %"CQB::CI::task", align 8, !dbg !1040
    #dbg_declare(ptr %"CQB::CI::task", !1041, !DIExpression(), !1040)
  %builtin_call = call ptr @qc_malloc(i64 48), !dbg !1040
  store ptr %builtin_call, ptr %"CQB::CI::task", align 8, !dbg !1040
  %task = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1042
  %name1 = load ptr, ptr %name, align 8, !dbg !1042
  %4 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %name1, 0, !dbg !1042
  %steps2 = load %"Vector::Vec<CQB::CI::Step>", ptr %steps, align 8, !dbg !1042
  %5 = insertvalue %"CQB::CI::Task" %4, %"Vector::Vec<CQB::CI::Step>" %steps2, 1, !dbg !1042
  store %"CQB::CI::Task" %5, ptr %task, align 8, !dbg !1042
  %6 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 0, !dbg !1043
  %task3 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1043
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %6, ptr %task3), !dbg !1043
  %7 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2, !dbg !1044
  %current = load ptr, ptr %7, align 8, !dbg !1044
  %8 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %current, i32 0, i32 2, !dbg !1044
  %task4 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1044
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %8, ptr %task4), !dbg !1044
  %advance5 = load i1, ptr %advance, align 1, !dbg !1045
  br i1 %advance5, label %then, label %ifcont, !dbg !1045

then:                                             ; preds = %entry
  %task6 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1045
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2, !dbg !1045
  store ptr %task6, ptr %current_ptr, align 8, !dbg !1045
  br label %ifcont, !dbg !1045

ifcont:                                           ; preds = %then, %entry
  %task7 = load ptr, ptr %"CQB::CI::task", align 8, !dbg !1046
  ret ptr %task7, !dbg !1046
}

define weak_odr ptr @"CQB::CI::Job_focus_Task*"(ptr %0, ptr %1) !dbg !1047 !qc.return_types !1051 {
entry:
  %task = alloca ptr, align 8
    #dbg_value(ptr %0, !1049, !DIExpression(), !1052)
  store ptr null, ptr %task, align 8, !dbg !1052
    #dbg_value(ptr %1, !1050, !DIExpression(), !1052)
  store ptr %1, ptr %task, align 8, !dbg !1052
  %task1 = load ptr, ptr %task, align 8, !dbg !1053
  %current_ptr = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 2, !dbg !1053
  store ptr %task1, ptr %current_ptr, align 8, !dbg !1053
  ret ptr %0, !dbg !1054
}

define weak_odr ptr @"CQB::CI::Job_link_Task*_Task*"(ptr %0, ptr %1, ptr %2) !dbg !1055 !qc.return_types !1051 {
entry:
  %child = alloca ptr, align 8
  %parent = alloca ptr, align 8
    #dbg_value(ptr %0, !1057, !DIExpression(), !1060)
  store ptr null, ptr %parent, align 8, !dbg !1060
    #dbg_value(ptr %1, !1058, !DIExpression(), !1060)
  store ptr %1, ptr %parent, align 8, !dbg !1060
  store ptr null, ptr %child, align 8, !dbg !1060
    #dbg_value(ptr %2, !1059, !DIExpression(), !1060)
  store ptr %2, ptr %child, align 8, !dbg !1060
  %parent1 = load ptr, ptr %parent, align 8, !dbg !1061
  %3 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %parent1, i32 0, i32 2, !dbg !1061
  %child2 = load ptr, ptr %child, align 8, !dbg !1061
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %3, ptr %child2), !dbg !1061
  ret ptr %0, !dbg !1062
}

define weak_odr ptr @"CQB::CI::Job_getGraphRoot"(ptr %0) !dbg !1063 !qc.return_types !1038 {
entry:
    #dbg_value(ptr %0, !1065, !DIExpression(), !1066)
  %1 = getelementptr inbounds nuw %"CQB::CI::Job", ptr %0, i32 0, i32 1, !dbg !1067
  %entry1 = load ptr, ptr %1, align 8, !dbg !1067
  ret ptr %entry1, !dbg !1067
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_Vec"(ptr %0) !dbg !1068 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !1070, !DIExpression(), !1086)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1087
  store i32 0, ptr %size_ptr, align 4, !dbg !1087
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1088
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1088
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1089
  store ptr null, ptr %data_ptr, align 8, !dbg !1089
  ret void, !dbg !1089
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %1) !dbg !1090 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !1092, !DIExpression(), !1094)
  store i32 0, ptr %cap, align 4, !dbg !1094
  store i32 %1, ptr %cap, align 4, !dbg !1094
    #dbg_value(i32 %1, !1093, !DIExpression(), !1094)
  %cap1 = load i32, ptr %cap, align 4, !dbg !1095
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !1095
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1095

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1096
  %data = load ptr, ptr %2, align 8, !dbg !1096
  call void @qc_free(ptr %data), !dbg !1096
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1097
  store ptr null, ptr %data_ptr, align 8, !dbg !1097
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1098
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1098
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1099
  store i32 0, ptr %size_ptr, align 4, !dbg !1099
  ret void, !dbg !1100

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !1101
    #dbg_declare(ptr %"Vector::new_data", !1102, !DIExpression(), !1101)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1101
  %data2 = load ptr, ptr %3, align 8, !dbg !1101
  %cap3 = load i32, ptr %cap, align 4, !dbg !1101
  %promote_int = sext i32 %cap3 to i64, !dbg !1101
  %mul = mul i64 64, %promote_int, !dbg !1101
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !1101
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !1101
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !1103
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !1103
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !1103

then4:                                            ; preds = %ifcont
  ret void, !dbg !1104

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !1105
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1105
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !1105
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1106
  %size = load i32, ptr %4, align 4, !dbg !1106
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1106
  %capacity = load i32, ptr %5, align 4, !dbg !1106
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !1106
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !1106

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1107
  %capacity10 = load i32, ptr %6, align 4, !dbg !1107
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1107
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !1107
  br label %ifcont9, !dbg !1107

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !1108
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1108
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !1108
  ret void, !dbg !1108
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_push_T"(ptr %0, %"CQB::Engine::TaskState" %1) !dbg !1109 !qc.return_types !23 {
entry:
  %value = alloca %"CQB::Engine::TaskState", align 8
    #dbg_value(ptr %0, !1111, !DIExpression(), !1113)
  store %"CQB::Engine::TaskState" zeroinitializer, ptr %value, align 8, !dbg !1113
  store %"CQB::Engine::TaskState" %1, ptr %value, align 8, !dbg !1113
    #dbg_value(%"CQB::Engine::TaskState" %1, !1112, !DIExpression(), !1113)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1114
  %capacity = load i32, ptr %2, align 4, !dbg !1114
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1114
  %size = load i32, ptr %3, align 4, !dbg !1114
  %icmple = icmp sle i32 %capacity, %size, !dbg !1114
  br i1 %icmple, label %then, label %ifcont, !dbg !1114

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1115
  %capacity1 = load i32, ptr %4, align 4, !dbg !1115
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !1115
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !1115

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1116
  %size5 = load i32, ptr %5, align 4, !dbg !1116
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1116
  %data6 = load ptr, ptr %6, align 8, !dbg !1116
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data6, i32 %size5, !dbg !1116
  %value7 = load %"CQB::Engine::TaskState", ptr %value, align 8, !dbg !1116
  store %"CQB::Engine::TaskState" %value7, ptr %ptr_arr_asi, align 8, !dbg !1116
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1117
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1117
  %inc = add i32 %inc_deref, 1, !dbg !1117
  store i32 %inc, ptr %size_ptr, align 4, !dbg !1117
  ret void, !dbg !1117

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !1115

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1115
  %capacity2 = load i32, ptr %7, align 4, !dbg !1115
  %mul = mul i32 %capacity2, 2, !dbg !1115
  br label %ternary.end, !dbg !1115

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !1115
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !1115
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1118
  %data = load ptr, ptr %8, align 8, !dbg !1118
  %ptr_eq = icmp eq ptr %data, null, !dbg !1118
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !1118

then3:                                            ; preds = %ternary.end
  ret void, !dbg !1118

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !1118
}

define weak_odr i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %0) !dbg !1119 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !1121, !DIExpression(), !1122)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1123
  %size = load i32, ptr %1, align 4, !dbg !1123
  ret i32 %size, !dbg !1123
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_pop"(ptr %0) !dbg !1124 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1126, !DIExpression(), !1127)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1128
  %size = load i32, ptr %1, align 4, !dbg !1128
  %icmpgt = icmp sgt i32 %size, 0, !dbg !1128
  br i1 %icmpgt, label %then, label %ifcont, !dbg !1128

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1129
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1129
  %dec = sub i32 %inc_deref, 1, !dbg !1129
  store i32 %dec, ptr %size_ptr, align 4, !dbg !1129
  br label %ifcont, !dbg !1129

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !1129
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_shrinkToFit"(ptr %0) !dbg !1130 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1132, !DIExpression(), !1133)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1134
  %size = load i32, ptr %1, align 4, !dbg !1134
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %size), !dbg !1134
  ret void, !dbg !1134
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !1135 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1137, !DIExpression(), !1140)
  store ptr null, ptr %data, align 8, !dbg !1140
  store ptr %1, ptr %data, align 8, !dbg !1140
    #dbg_value(ptr %1, !1138, !DIExpression(), !1140)
  store i64 0, ptr %length, align 8, !dbg !1140
  store i64 %2, ptr %length, align 8, !dbg !1140
    #dbg_value(i64 %2, !1139, !DIExpression(), !1140)
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1141
  %capacity = load i32, ptr %3, align 4, !dbg !1141
  %icmpne = icmp ne i32 %capacity, 0, !dbg !1141
  br i1 %icmpne, label %then, label %ifcont, !dbg !1141

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1141
  %data1 = load ptr, ptr %4, align 8, !dbg !1141
  call void @qc_free(ptr %data1), !dbg !1141
  br label %ifcont, !dbg !1141

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !1142
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1142
  %trunc = trunc i64 %length2 to i32, !dbg !1142
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !1142
  %length3 = load i64, ptr %length, align 8, !dbg !1143
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1143
  %trunc4 = trunc i64 %length3 to i32, !dbg !1143
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !1143
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1144
  %capacity5 = load i32, ptr %5, align 4, !dbg !1144
  %promote_int = sext i32 %capacity5 to i64, !dbg !1144
  %mul = mul i64 64, %promote_int, !dbg !1144
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !1144
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1144
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !1144
  store i32 0, ptr %"Vector::i", align 4, !dbg !1145
    #dbg_declare(ptr %"Vector::i", !1146, !DIExpression(), !1145)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1145
  br label %for.cond, !dbg !1145

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1145
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1145
  %size = load i32, ptr %6, align 4, !dbg !1145
  %icmplt = icmp slt i32 %i, %size, !dbg !1145
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1145

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !1147
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1147
  %data7 = load ptr, ptr %7, align 8, !dbg !1147
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data7, i32 %i6, !dbg !1147
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !1147
  %data9 = load ptr, ptr %data, align 8, !dbg !1147
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data9, i32 %i8, !dbg !1147
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8, !dbg !1147
  store %"CQB::Engine::TaskState" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !1147
  br label %for.inc, !dbg !1147

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1145
  %inc = add i32 %inc_deref, 1, !dbg !1145
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1145
  br label %for.cond, !dbg !1145

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1145
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !1148 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !1150, !DIExpression(), !1152)
  store i64 0, ptr %index, align 8, !dbg !1152
  store i64 %1, ptr %index, align 8, !dbg !1152
    #dbg_value(i64 %1, !1151, !DIExpression(), !1152)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1153
  %data = load ptr, ptr %2, align 8, !dbg !1153
  %index1 = load i64, ptr %index, align 8, !dbg !1153
  %lval_ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i64 %index1, !dbg !1153
  ret ptr %lval_ptr_arr_addr, !dbg !1153
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !1154 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1156, !DIExpression(), !1164)
  store ptr null, ptr %data, align 8, !dbg !1164
  store ptr %1, ptr %data, align 8, !dbg !1164
    #dbg_value(ptr %1, !1161, !DIExpression(), !1164)
  store i32 0, ptr %size, align 4, !dbg !1164
  store i32 %2, ptr %size, align 4, !dbg !1164
    #dbg_value(i32 %2, !1162, !DIExpression(), !1164)
  store i1 false, ptr %is_end, align 1, !dbg !1164
  store i1 %3, ptr %is_end, align 1, !dbg !1164
    #dbg_value(i1 %3, !1163, !DIExpression(), !1164)
  %data1 = load ptr, ptr %data, align 8, !dbg !1165
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1165
  store ptr %data1, ptr %data_ptr, align 8, !dbg !1165
  %size2 = load i32, ptr %size, align 4, !dbg !1166
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1166
  store i32 %size2, ptr %size_ptr, align 4, !dbg !1166
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !1167
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !1167

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !1167
  br label %ternary.end, !dbg !1167

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !1167

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !1167
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1167
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !1167
  ret void, !dbg !1167
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atEnd"(ptr %0) !dbg !1168 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1170, !DIExpression(), !1171)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1172
  %size = load i32, ptr %1, align 4, !dbg !1172
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1172
  %current_index = load i32, ptr %2, align 4, !dbg !1172
  %icmple = icmp sle i32 %size, %current_index, !dbg !1172
  ret i1 %icmple, !dbg !1172
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__next"(ptr %0) !dbg !1173 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1175, !DIExpression(), !1176)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1177
  %size = load i32, ptr %1, align 4, !dbg !1177
  %icmpeq = icmp eq i32 %size, 0, !dbg !1177
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1177

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.38, ptr @8, i32 40) #29, !dbg !1178
  unreachable, !dbg !1178

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atEnd"(ptr %0), !dbg !1179
  %not = xor i1 %_atEnd_result, true, !dbg !1179
  br i1 %not, label %then1, label %ifcont2, !dbg !1179

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1180
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1180
  %inc = add i32 %inc_deref, 1, !dbg !1180
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !1180
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1180
  %data = load ptr, ptr %2, align 8, !dbg !1180
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %inc_deref, !dbg !1180
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8, !dbg !1180
  ret %"CQB::Engine::TaskState" %ptr_arr_val, !dbg !1180

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1181
  %size3 = load i32, ptr %3, align 4, !dbg !1181
  %sub = sub i32 %size3, 1, !dbg !1181
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1181
  %data4 = load ptr, ptr %4, align 8, !dbg !1181
  %ptr_arr_addr5 = getelementptr %"CQB::Engine::TaskState", ptr %data4, i32 %sub, !dbg !1181
  %ptr_arr_val6 = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr5, align 8, !dbg !1181
  ret %"CQB::Engine::TaskState" %ptr_arr_val6, !dbg !1181
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atStart"(ptr %0) !dbg !1182 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1184, !DIExpression(), !1185)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1186
  %current_index = load i32, ptr %1, align 4, !dbg !1186
  %icmple = icmp sle i32 %current_index, 0, !dbg !1186
  ret i1 %icmple, !dbg !1186
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__prev"(ptr %0) !dbg !1187 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1189, !DIExpression(), !1190)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1191
  %size = load i32, ptr %1, align 4, !dbg !1191
  %icmpeq = icmp eq i32 %size, 0, !dbg !1191
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1191

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.39, ptr @9, i32 56) #29, !dbg !1192
  unreachable, !dbg !1192

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atStart"(ptr %0), !dbg !1193
  %not = xor i1 %_atStart_result, true, !dbg !1193
  br i1 %not, label %then1, label %ifcont2, !dbg !1193

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1194
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1194
  %dec = sub i32 %inc_deref, 1, !dbg !1194
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !1194
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1194
  %data = load ptr, ptr %2, align 8, !dbg !1194
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %dec, !dbg !1194
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8, !dbg !1194
  ret %"CQB::Engine::TaskState" %ptr_arr_val, !dbg !1194

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1195
  %current_index = load i32, ptr %3, align 4, !dbg !1195
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1195
  %data3 = load ptr, ptr %4, align 8, !dbg !1195
  %ptr_arr_addr4 = getelementptr %"CQB::Engine::TaskState", ptr %data3, i32 %current_index, !dbg !1195
  %ptr_arr_val5 = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr4, align 8, !dbg !1195
  ret %"CQB::Engine::TaskState" %ptr_arr_val5, !dbg !1195
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>__moveTo_int"(ptr %0, i32 %1) !dbg !1196 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !1198, !DIExpression(), !1200)
  store i32 0, ptr %index, align 4, !dbg !1200
  store i32 %1, ptr %index, align 4, !dbg !1200
    #dbg_value(i32 %1, !1199, !DIExpression(), !1200)
  %index1 = load i32, ptr %index, align 4, !dbg !1201
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1201
  %size = load i32, ptr %2, align 4, !dbg !1201
  %icmpge = icmp sge i32 %index1, %size, !dbg !1201
  br i1 %icmpge, label %then, label %elif.cond, !dbg !1201

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1202
  %size2 = load i32, ptr %3, align 4, !dbg !1202
  %sub = sub i32 %size2, 1, !dbg !1202
  store i32 %sub, ptr %index, align 4, !dbg !1202
  br label %ifcont, !dbg !1202

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !1203
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1203
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !1203
  ret void, !dbg !1203

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !1204
  %icmplt = icmp slt i32 %index3, 0, !dbg !1204
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !1204

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !1205
  br label %ifcont, !dbg !1205
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__begin"(ptr %0) !dbg !1206 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::Engine::TaskState>" = alloca %"Vector::Iterator::It<CQB::Engine::TaskState>", align 8
    #dbg_value(ptr %0, !1208, !DIExpression(), !1209)
  store %"Vector::Iterator::It<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8, !dbg !1210
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1210
  %data = load ptr, ptr %1, align 8, !dbg !1210
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1210
  %size = load i32, ptr %2, align 4, !dbg !1210
  call void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", ptr %data, i32 %size, i1 false), !dbg !1210
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst" = load %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8, !dbg !1210
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst", !dbg !1210
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__end"(ptr %0) !dbg !1211 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<CQB::Engine::TaskState>" = alloca %"Vector::Iterator::It<CQB::Engine::TaskState>", align 8
    #dbg_value(ptr %0, !1213, !DIExpression(), !1214)
  store %"Vector::Iterator::It<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8, !dbg !1215
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1215
  %data = load ptr, ptr %1, align 8, !dbg !1215
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1215
  %size = load i32, ptr %2, align 4, !dbg !1215
  call void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", ptr %data, i32 %size, i1 true), !dbg !1215
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst" = load %"Vector::Iterator::It<CQB::Engine::TaskState>", ptr %"temp_Vector::Iterator::It<CQB::Engine::TaskState>", align 8, !dbg !1215
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst", !dbg !1215
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>__destroy"(ptr %0) !dbg !1216 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1218, !DIExpression(), !1219)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1220
  %data = load ptr, ptr %1, align 8, !dbg !1220
  call void @qc_free(ptr %data), !dbg !1220
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1221
  store ptr null, ptr %data_ptr, align 8, !dbg !1221
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1222
  store i32 -1, ptr %size_ptr, align 4, !dbg !1222
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1223
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !1223
  ret void, !dbg !1223
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Engine::TaskState>" %1) !dbg !1224 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<CQB::Engine::TaskState>", align 8
    #dbg_value(ptr %0, !1226, !DIExpression(), !1228)
  store %"Vector::Vec<CQB::Engine::TaskState>" zeroinitializer, ptr %other, align 8, !dbg !1228
  store %"Vector::Vec<CQB::Engine::TaskState>" %1, ptr %other, align 8, !dbg !1228
    #dbg_value(%"Vector::Vec<CQB::Engine::TaskState>" %1, !1227, !DIExpression(), !1228)
  %2 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 2, !dbg !1229
  %capacity = load i32, ptr %2, align 4, !dbg !1229
  %3 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 2, !dbg !1229
  %capacity1 = load i32, ptr %3, align 4, !dbg !1229
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !1229
  br i1 %icmpne, label %then, label %ifcont, !dbg !1229

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 2, !dbg !1230
  %capacity2 = load i32, ptr %4, align 4, !dbg !1230
  call void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %capacity2), !dbg !1230
  br label %ifcont, !dbg !1230

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 1, !dbg !1231
  %size = load i32, ptr %5, align 4, !dbg !1231
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1231
  store i32 %size, ptr %size_ptr, align 4, !dbg !1231
  store i32 0, ptr %"Vector::i", align 4, !dbg !1232
    #dbg_declare(ptr %"Vector::i", !1233, !DIExpression(), !1232)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1232
  br label %for.cond, !dbg !1232

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1232
  %6 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 1, !dbg !1232
  %size3 = load i32, ptr %6, align 4, !dbg !1232
  %icmplt = icmp slt i32 %i, %size3, !dbg !1232
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1232

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !1234
  %7 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 0, !dbg !1234
  %data = load ptr, ptr %7, align 8, !dbg !1234
  %ptr_arr_asi = getelementptr %"CQB::Engine::TaskState", ptr %data, i32 %i4, !dbg !1234
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !1234
  %8 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %other, i32 0, i32 0, !dbg !1234
  %data6 = load ptr, ptr %8, align 8, !dbg !1234
  %ptr_arr_addr = getelementptr %"CQB::Engine::TaskState", ptr %data6, i32 %i5, !dbg !1234
  %ptr_arr_val = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr, align 8, !dbg !1234
  store %"CQB::Engine::TaskState" %ptr_arr_val, ptr %ptr_arr_asi, align 8, !dbg !1234
  br label %for.inc, !dbg !1234

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1232
  %inc = add i32 %inc_deref, 1, !dbg !1232
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1232
  br label %for.cond, !dbg !1232

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !1235
}

define weak_odr i1 @"Vector::Vec<CQB::Engine::TaskState>_isEmpty"(ptr %0) !dbg !1236 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1238, !DIExpression(), !1239)
  %1 = getelementptr inbounds nuw %"Vector::Vec<CQB::Engine::TaskState>", ptr %0, i32 0, i32 1, !dbg !1240
  %size = load i32, ptr %1, align 4, !dbg !1240
  %icmpeq = icmp eq i32 %size, 0, !dbg !1240
  ret i1 %icmpeq, !dbg !1240
}

define weak_odr i32 @"CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*"(ptr %0, ptr %1, ptr %2) !dbg !1241 !qc.return_types !83 {
entry:
  %"CQB::Engine::i" = alloca i32, align 4
  %name = alloca ptr, align 8
  %g = alloca ptr, align 8
    #dbg_value(ptr %0, !1243, !DIExpression(), !1264)
  store ptr null, ptr %g, align 8, !dbg !1264
    #dbg_value(ptr %1, !1261, !DIExpression(), !1264)
  store ptr %1, ptr %g, align 8, !dbg !1264
  store ptr null, ptr %name, align 8, !dbg !1264
    #dbg_value(ptr %2, !1263, !DIExpression(), !1264)
  store ptr %2, ptr %name, align 8, !dbg !1264
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1265
    #dbg_declare(ptr %"CQB::Engine::i", !1266, !DIExpression(), !1265)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1265
  br label %for.cond, !dbg !1265

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1265
  %3 = load ptr, ptr %g, align 8, !dbg !1265
  %4 = load ptr, ptr %g, align 8, !dbg !1265
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %4), !dbg !1265
  %icmplt = icmp slt i32 %i, %length_result, !dbg !1265
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1265

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %g, align 8, !dbg !1267
  %i1 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1267
  %6 = sext i32 %i1 to i64, !dbg !1267
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %5, i64 %6), !dbg !1267
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result", i32 0, i32 0, !dbg !1267
  %targetName = load ptr, ptr %targetName_ptr, align 8, !dbg !1267
  %name2 = load ptr, ptr %name, align 8, !dbg !1267
  %ptr_eq = icmp eq ptr %targetName, %name2, !dbg !1267
  br i1 %ptr_eq, label %then, label %ifcont, !dbg !1267

for.inc:                                          ; preds = %ifcont
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1265
  %inc = add i32 %inc_deref, 1, !dbg !1265
  store i32 %inc, ptr %"CQB::Engine::i", align 4, !dbg !1265
  br label %for.cond, !dbg !1265

for.end:                                          ; preds = %for.cond
  ret i32 -1, !dbg !1268

then:                                             ; preds = %for.body
  %i3 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1267
  ret i32 %i3, !dbg !1267

ifcont:                                           ; preds = %for.body
  br label %for.inc, !dbg !1267
}

define weak_odr i32 @"CQB::Engine::Runner_runBuildPipeline_char*"(ptr %0, ptr %1) !dbg !1269 !qc.return_types !83 {
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
    #dbg_value(ptr %0, !1271, !DIExpression(), !1273)
  store ptr null, ptr %qc_exe, align 8, !dbg !1273
    #dbg_value(ptr %1, !1272, !DIExpression(), !1273)
  store ptr %1, ptr %qc_exe, align 8, !dbg !1273
  store %"Vector::Vec<int>" zeroinitializer, ptr %order, align 8, !dbg !1274
    #dbg_declare(ptr %order, !1275, !DIExpression(), !1274)
  call void @"Vector::Vec<int>_Vec"(ptr %order), !dbg !1274
  store i32 0, ptr %"CQB::Engine::n", align 4, !dbg !1280
    #dbg_declare(ptr %"CQB::Engine::n", !1281, !DIExpression(), !1280)
  %2 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1280
  %length_result = call i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %2), !dbg !1280
  store i32 %length_result, ptr %"CQB::Engine::n", align 4, !dbg !1280
  store %"Vector::Vec<int>" zeroinitializer, ptr %remaining, align 8, !dbg !1282
    #dbg_declare(ptr %remaining, !1283, !DIExpression(), !1282)
  call void @"Vector::Vec<int>_Vec"(ptr %remaining), !dbg !1282
  store %"Vector::Vec<bool>" zeroinitializer, ptr %done, align 8, !dbg !1284
    #dbg_declare(ptr %done, !1285, !DIExpression(), !1284)
  call void @"Vector::Vec<bool>_Vec"(ptr %done), !dbg !1284
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1290
    #dbg_declare(ptr %"CQB::Engine::i", !1291, !DIExpression(), !1290)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1290
  br label %for.cond, !dbg !1290

for.cond:                                         ; preds = %for.inc, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1290
  %n = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1290
  %icmplt = icmp slt i32 %i, %n, !dbg !1290
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1290

for.body:                                         ; preds = %for.cond
  %buildGraph_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1292
  %i1 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1292
  %3 = sext i32 %i1 to i64, !dbg !1292
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr, i64 %3), !dbg !1292
  %4 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result", i32 0, i32 5, !dbg !1292
  %length_result2 = call i32 @"Vector::Vec<char*>_length"(ptr %4), !dbg !1292
  call void @"Vector::Vec<int>_push_T"(ptr %remaining, i32 %length_result2), !dbg !1292
  call void @"Vector::Vec<bool>_push_T"(ptr %done, i1 false), !dbg !1293
  %buildGraph_ptr3 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1294
  %i4 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1294
  %5 = sext i32 %i4 to i64, !dbg !1294
  %"operator[]_result5" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr3, i64 %5), !dbg !1294
  %dependencies_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result5", i32 0, i32 5, !dbg !1294
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_dep, align 8, !dbg !1294
  %_begin_result = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %dependencies_ptr), !dbg !1294
  store %"Vector::Iterator::It<char*>" %_begin_result, ptr %__iter_dep, align 8, !dbg !1294
  store i32 0, ptr %__foreach_i_dep, align 4, !dbg !1294
  store ptr null, ptr %dep, align 8, !dbg !1294
  store i32 0, ptr %__foreach_i_dep, align 4, !dbg !1294
  br label %foreach.cond, !dbg !1294

for.inc:                                          ; preds = %foreach.end
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1290
  %inc = add i32 %inc_deref, 1, !dbg !1290
  store i32 %inc, ptr %"CQB::Engine::i", align 4, !dbg !1290
  br label %for.cond, !dbg !1290

for.end:                                          ; preds = %for.cond
  br label %while.cond, !dbg !1295

foreach.cond:                                     ; preds = %ifcont, %for.body
  %_atEnd_result = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_dep), !dbg !1294
  br i1 %_atEnd_result, label %foreach.end, label %foreach.body, !dbg !1294

foreach.body:                                     ; preds = %foreach.cond
  %6 = load %"Vector::Iterator::It<char*>", ptr %__iter_dep, align 8, !dbg !1294
  %_next_result = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_dep), !dbg !1294
  store ptr %_next_result, ptr %dep, align 8, !dbg !1294
  %buildGraph_ptr6 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1296
  %dep7 = load ptr, ptr %dep, align 8, !dbg !1296
  %indexOf_result = call i32 @"CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*"(ptr %0, ptr %buildGraph_ptr6, ptr %dep7), !dbg !1296
  %icmplt8 = icmp slt i32 %indexOf_result, 0, !dbg !1296
  br i1 %icmplt8, label %then, label %ifcont, !dbg !1296

foreach.end:                                      ; preds = %foreach.cond
  br label %for.inc, !dbg !1297

then:                                             ; preds = %foreach.body
  %buildGraph_ptr9 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1298
  %i10 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1298
  %7 = sext i32 %i10 to i64, !dbg !1298
  %"operator[]_result11" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr9, i64 %7), !dbg !1298
  %targetName_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result11", i32 0, i32 0, !dbg !1298
  %targetName = load ptr, ptr %targetName_ptr, align 8, !dbg !1298
  %dep12 = load ptr, ptr %dep, align 8, !dbg !1298
  %varadics_array = alloca ptr, i32 2, align 8, !dbg !1298
  %8 = getelementptr ptr, ptr %varadics_array, i32 0, !dbg !1298
  store ptr %targetName, ptr %8, align 8, !dbg !1298
  %9 = getelementptr ptr, ptr %varadics_array, i32 1, !dbg !1298
  store ptr %dep12, ptr %9, align 8, !dbg !1298
  %variadic_struct = alloca { ptr, i32, i32 }, align 8, !dbg !1298
  %10 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0, !dbg !1298
  store ptr %varadics_array, ptr %10, align 8, !dbg !1298
  %11 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1, !dbg !1298
  store i32 2, ptr %11, align 4, !dbg !1298
  %12 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2, !dbg !1298
  store i32 0, ptr %12, align 4, !dbg !1298
  call void @"IO::qout"(ptr @.str.57, ptr %variadic_struct), !dbg !1298
  call void @"Vector::Vec<int>__destroy"(ptr %order), !dbg !1299
  call void @"Vector::Vec<bool>__destroy"(ptr %done), !dbg !1300
  call void @"Vector::Vec<int>__destroy"(ptr %remaining), !dbg !1297
  ret i32 1, !dbg !1297

ifcont:                                           ; preds = %foreach.body
  br label %foreach.cond, !dbg !1297

while.cond:                                       ; preds = %ifcont68, %for.end
  %length_result13 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1295
  %n14 = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1295
  %icmplt15 = icmp slt i32 %length_result13, %n14, !dbg !1295
  br i1 %icmplt15, label %while.body, label %while.end, !dbg !1295

while.body:                                       ; preds = %while.cond
  store i1 false, ptr %"CQB::Engine::progressed", align 1, !dbg !1301
    #dbg_declare(ptr %"CQB::Engine::progressed", !1302, !DIExpression(), !1301)
  store i1 false, ptr %"CQB::Engine::progressed", align 1, !dbg !1301
  store i32 0, ptr %"CQB::Engine::i16", align 4, !dbg !1303
    #dbg_declare(ptr %"CQB::Engine::i16", !1304, !DIExpression(), !1303)
  store i32 0, ptr %"CQB::Engine::i16", align 4, !dbg !1303
  br label %for.cond17, !dbg !1303

while.end:                                        ; preds = %while.cond
  store i1 false, ptr %"CQB::Engine::tty", align 1, !dbg !1305
    #dbg_declare(ptr %"CQB::Engine::tty", !1306, !DIExpression(), !1305)
  %calltmp = call i32 @isatty(i32 1), !dbg !1305
  %icmpne71 = icmp ne i32 %calltmp, 0, !dbg !1305
  store i1 %icmpne71, ptr %"CQB::Engine::tty", align 1, !dbg !1305
  store i64 0, ptr %"CQB::Engine::totalStart", align 8, !dbg !1307
    #dbg_declare(ptr %"CQB::Engine::totalStart", !1308, !DIExpression(), !1307)
  %calltmp72 = call i64 @"CQB::Engine::nowMs"(), !dbg !1307
  store i64 %calltmp72, ptr %"CQB::Engine::totalStart", align 8, !dbg !1307
  store i32 0, ptr %"CQB::Engine::k", align 4, !dbg !1310
    #dbg_declare(ptr %"CQB::Engine::k", !1311, !DIExpression(), !1310)
  store i32 0, ptr %"CQB::Engine::k", align 4, !dbg !1310
  br label %for.cond73, !dbg !1310

for.cond17:                                       ; preds = %for.inc19, %while.body
  %i21 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1303
  %n22 = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1303
  %icmplt23 = icmp slt i32 %i21, %n22, !dbg !1303
  br i1 %icmplt23, label %for.body18, label %for.end20, !dbg !1303

for.body18:                                       ; preds = %for.cond17
  %i24 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1312
  %13 = sext i32 %i24 to i64, !dbg !1312
  %"operator[]_result25" = call ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %done, i64 %13), !dbg !1312
  %14 = load i1, ptr %"operator[]_result25", align 1, !dbg !1312
  br i1 %14, label %or.end, label %or.rhs, !dbg !1312

for.inc19:                                        ; preds = %for.end36, %then28
  %inc_deref65 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1303
  %inc66 = add i32 %inc_deref65, 1, !dbg !1303
  store i32 %inc66, ptr %"CQB::Engine::i16", align 4, !dbg !1303
  br label %for.cond17, !dbg !1303

for.end20:                                        ; preds = %for.cond17
  %progressed = load i1, ptr %"CQB::Engine::progressed", align 1, !dbg !1313
  %not = xor i1 %progressed, true, !dbg !1313
  br i1 %not, label %then67, label %ifcont68, !dbg !1313

or.rhs:                                           ; preds = %for.body18
  %i26 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1312
  %15 = sext i32 %i26 to i64, !dbg !1312
  %"operator[]_result27" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %remaining, i64 %15), !dbg !1312
  %16 = load i32, ptr %"operator[]_result27", align 4, !dbg !1312
  %icmpne = icmp ne i32 %16, 0, !dbg !1312
  br label %or.end, !dbg !1312

or.end:                                           ; preds = %or.rhs, %for.body18
  %or = phi i1 [ true, %for.body18 ], [ %icmpne, %or.rhs ], !dbg !1312
  br i1 %or, label %then28, label %ifcont29, !dbg !1312

then28:                                           ; preds = %or.end
  br label %for.inc19, !dbg !1312

ifcont29:                                         ; preds = %or.end
  %i30 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1314
  %17 = sext i32 %i30 to i64, !dbg !1314
  %"operator[]_result31" = call ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %done, i64 %17), !dbg !1314
  store i1 true, ptr %"operator[]_result31", align 1, !dbg !1314
  %i32 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1315
  call void @"Vector::Vec<int>_push_T"(ptr %order, i32 %i32), !dbg !1315
  store i1 true, ptr %"CQB::Engine::progressed", align 1, !dbg !1316
  store i32 0, ptr %"CQB::Engine::j", align 4, !dbg !1317
    #dbg_declare(ptr %"CQB::Engine::j", !1318, !DIExpression(), !1317)
  store i32 0, ptr %"CQB::Engine::j", align 4, !dbg !1317
  br label %for.cond33, !dbg !1317

for.cond33:                                       ; preds = %for.inc35, %ifcont29
  %j = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1317
  %n37 = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1317
  %icmplt38 = icmp slt i32 %j, %n37, !dbg !1317
  br i1 %icmplt38, label %for.body34, label %for.end36, !dbg !1317

for.body34:                                       ; preds = %for.cond33
  %buildGraph_ptr39 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1319
  %j40 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1319
  %18 = sext i32 %j40 to i64, !dbg !1319
  %"operator[]_result41" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr39, i64 %18), !dbg !1319
  %dependencies_ptr42 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result41", i32 0, i32 5, !dbg !1319
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_dep43, align 8, !dbg !1319
  %_begin_result44 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %dependencies_ptr42), !dbg !1319
  store %"Vector::Iterator::It<char*>" %_begin_result44, ptr %__iter_dep43, align 8, !dbg !1319
  store i32 0, ptr %__foreach_i_dep45, align 4, !dbg !1319
  store ptr null, ptr %dep46, align 8, !dbg !1319
  store i32 0, ptr %__foreach_i_dep45, align 4, !dbg !1319
  br label %foreach.cond47, !dbg !1319

for.inc35:                                        ; preds = %foreach.end49
  %inc_deref63 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1317
  %inc64 = add i32 %inc_deref63, 1, !dbg !1317
  store i32 %inc64, ptr %"CQB::Engine::j", align 4, !dbg !1317
  br label %for.cond33, !dbg !1317

for.end36:                                        ; preds = %for.cond33
  br label %for.inc19, !dbg !1317

foreach.cond47:                                   ; preds = %ifcont59, %for.body34
  %_atEnd_result50 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_dep43), !dbg !1319
  br i1 %_atEnd_result50, label %foreach.end49, label %foreach.body48, !dbg !1319

foreach.body48:                                   ; preds = %foreach.cond47
  %19 = load %"Vector::Iterator::It<char*>", ptr %__iter_dep43, align 8, !dbg !1319
  %_next_result51 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_dep43), !dbg !1319
  store ptr %_next_result51, ptr %dep46, align 8, !dbg !1319
  %dep52 = load ptr, ptr %dep46, align 8, !dbg !1320
  %buildGraph_ptr53 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1320
  %i54 = load i32, ptr %"CQB::Engine::i16", align 4, !dbg !1320
  %20 = sext i32 %i54 to i64, !dbg !1320
  %"operator[]_result55" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr53, i64 %20), !dbg !1320
  %targetName_ptr56 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %"operator[]_result55", i32 0, i32 0, !dbg !1320
  %targetName57 = load ptr, ptr %targetName_ptr56, align 8, !dbg !1320
  %ptr_eq = icmp eq ptr %dep52, %targetName57, !dbg !1320
  br i1 %ptr_eq, label %then58, label %ifcont59, !dbg !1320

foreach.end49:                                    ; preds = %foreach.cond47
  br label %for.inc35, !dbg !1320

then58:                                           ; preds = %foreach.body48
  %j60 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1320
  %21 = sext i32 %j60 to i64, !dbg !1320
  %"operator[]_result61" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %remaining, i64 %21), !dbg !1320
  %inc_deref62 = load i32, ptr %"operator[]_result61", align 4, !dbg !1320
  %dec = sub i32 %inc_deref62, 1, !dbg !1320
  store i32 %dec, ptr %"operator[]_result61", align 4, !dbg !1320
  br label %ifcont59, !dbg !1320

ifcont59:                                         ; preds = %then58, %foreach.body48
  br label %foreach.cond47, !dbg !1320

then67:                                           ; preds = %for.end20
  %varadics_array69 = alloca ptr, i32 0, align 8, !dbg !1321
  %variadic_struct70 = alloca { ptr, i32, i32 }, align 8, !dbg !1321
  %22 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 0, !dbg !1321
  store ptr %varadics_array69, ptr %22, align 8, !dbg !1321
  %23 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 1, !dbg !1321
  store i32 0, ptr %23, align 4, !dbg !1321
  %24 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct70, i32 0, i32 2, !dbg !1321
  store i32 0, ptr %24, align 4, !dbg !1321
  call void @"IO::qout"(ptr @.str.58, ptr %variadic_struct70), !dbg !1321
  call void @"Vector::Vec<int>__destroy"(ptr %order), !dbg !1299
  call void @"Vector::Vec<bool>__destroy"(ptr %done), !dbg !1300
  call void @"Vector::Vec<int>__destroy"(ptr %remaining), !dbg !1297
  ret i32 2, !dbg !1297

ifcont68:                                         ; preds = %for.end20
  br label %while.cond, !dbg !1297

for.cond73:                                       ; preds = %for.inc75, %while.end
  %k = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1310
  %length_result77 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1310
  %icmplt78 = icmp slt i32 %k, %length_result77, !dbg !1310
  br i1 %icmplt78, label %for.body74, label %for.end76, !dbg !1310

for.body74:                                       ; preds = %for.cond73
  %buildGraph_ptr79 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1322
  %k80 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1322
  %25 = sext i32 %k80 to i64, !dbg !1322
  %"operator[]_result81" = call ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %order, i64 %25), !dbg !1322
  %26 = load i64, ptr %"operator[]_result81", align 8, !dbg !1322
  %"operator[]_result82" = call ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %buildGraph_ptr79, i64 %26), !dbg !1322
  call void @llvm.memset.inline.p0.i64(ptr align 8 %command, i8 0, i64 72, i1 false), !dbg !1322
    #dbg_declare(ptr %command, !1323, !DIExpression(), !1322)
  %strip_ref = load %"CQB::Build::Command", ptr %"operator[]_result82", align 8, !dbg !1322
  store %"CQB::Build::Command" %strip_ref, ptr %command, align 8, !dbg !1322
  store %"Vector::Vec<char*>" zeroinitializer, ptr %comm, align 8, !dbg !1324
    #dbg_declare(ptr %comm, !1325, !DIExpression(), !1324)
  %commandBin_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 1, !dbg !1324
  %commandBin = load ptr, ptr %commandBin_ptr, align 8, !dbg !1324
  store [1 x ptr] zeroinitializer, ptr %arr_lit, align 8, !dbg !1324
  %arr_elem_ptr = getelementptr inbounds [1 x ptr], ptr %arr_lit, i32 0, i32 0, !dbg !1324
  store ptr %commandBin, ptr %arr_elem_ptr, align 8, !dbg !1324
  %decayptr = getelementptr inbounds [1 x ptr], ptr %arr_lit, i32 0, i32 0, !dbg !1324
  call void @"Vector::Vec<char*>_operator[]=_T*_addr_t"(ptr %comm, ptr %decayptr, i64 1), !dbg !1324
  store %"String::Str" zeroinitializer, ptr %qc, align 8, !dbg !1326
    #dbg_declare(ptr %qc, !1327, !DIExpression(), !1326)
  %"operator[]_result83" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %comm, i64 0), !dbg !1326
  %strip_ref84 = load ptr, ptr %"operator[]_result83", align 8, !dbg !1326
  call void @"String::Str_Str_char*"(ptr %qc, ptr %strip_ref84), !dbg !1326
  store i1 false, ptr %"CQB::Engine::isQc", align 1, !dbg !1328
    #dbg_declare(ptr %"CQB::Engine::isQc", !1329, !DIExpression(), !1328)
  %qc85 = load %"String::Str", ptr %qc, align 8, !dbg !1328
  store %"String::Str" zeroinitializer, ptr %temp_op_lhs, align 8, !dbg !1328
  store %"String::Str" %qc85, ptr %temp_op_lhs, align 8, !dbg !1328
  %op_result = call i1 @"String::Str_operator==_char*"(ptr %temp_op_lhs, ptr @.str.59), !dbg !1328
  store i1 %op_result, ptr %"CQB::Engine::isQc", align 1, !dbg !1328
  %isQc = load i1, ptr %"CQB::Engine::isQc", align 1, !dbg !1330
  br i1 %isQc, label %then86, label %else, !dbg !1330

for.inc75:                                        ; preds = %ifcont155
  %inc_deref204 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1310
  %inc205 = add i32 %inc_deref204, 1, !dbg !1310
  store i32 %inc205, ptr %"CQB::Engine::k", align 4, !dbg !1310
  br label %for.cond73, !dbg !1310

for.end76:                                        ; preds = %for.cond73
  store i64 0, ptr %"CQB::Engine::total", align 8, !dbg !1331
    #dbg_declare(ptr %"CQB::Engine::total", !1332, !DIExpression(), !1331)
  %calltmp206 = call i64 @"CQB::Engine::nowMs"(), !dbg !1331
  %totalStart = load i64, ptr %"CQB::Engine::totalStart", align 8, !dbg !1331
  %sub207 = sub i64 %calltmp206, %totalStart, !dbg !1331
  store i64 %sub207, ptr %"CQB::Engine::total", align 8, !dbg !1331
  %length_result208 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1333
  %total = load i64, ptr %"CQB::Engine::total", align 8, !dbg !1333
  %sdiv209 = sdiv i64 %total, 1000, !dbg !1333
  %total210 = load i64, ptr %"CQB::Engine::total", align 8, !dbg !1333
  %srem211 = srem i64 %total210, 1000, !dbg !1333
  %varadics_array212 = alloca ptr, i32 3, align 8, !dbg !1333
  %27 = getelementptr ptr, ptr %varadics_array212, i32 0, !dbg !1333
  %vararg_int_to_ptr213 = inttoptr i32 %length_result208 to ptr, !dbg !1333
  store ptr %vararg_int_to_ptr213, ptr %27, align 8, !dbg !1333
  %28 = getelementptr ptr, ptr %varadics_array212, i32 1, !dbg !1333
  %vararg_int_to_ptr214 = inttoptr i64 %sdiv209 to ptr, !dbg !1333
  store ptr %vararg_int_to_ptr214, ptr %28, align 8, !dbg !1333
  %29 = getelementptr ptr, ptr %varadics_array212, i32 2, !dbg !1333
  %vararg_int_to_ptr215 = inttoptr i64 %srem211 to ptr, !dbg !1333
  store ptr %vararg_int_to_ptr215, ptr %29, align 8, !dbg !1333
  %variadic_struct216 = alloca { ptr, i32, i32 }, align 8, !dbg !1333
  %30 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct216, i32 0, i32 0, !dbg !1333
  store ptr %varadics_array212, ptr %30, align 8, !dbg !1333
  %31 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct216, i32 0, i32 1, !dbg !1333
  store i32 3, ptr %31, align 4, !dbg !1333
  %32 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct216, i32 0, i32 2, !dbg !1333
  store i32 0, ptr %32, align 4, !dbg !1333
  call void @"IO::qout"(ptr @.str.71, ptr %variadic_struct216), !dbg !1333
  %buildDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 1, !dbg !1334
  store i1 true, ptr %buildDone_ptr, align 1, !dbg !1334
  call void @"Vector::Vec<int>__destroy"(ptr %order), !dbg !1299
  call void @"Vector::Vec<bool>__destroy"(ptr %done), !dbg !1300
  call void @"Vector::Vec<int>__destroy"(ptr %remaining), !dbg !1297
  ret i32 0, !dbg !1297

then86:                                           ; preds = %for.body74
  %"operator[]_result88" = call ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %comm, i64 0), !dbg !1335
  %qc_exe89 = load ptr, ptr %qc_exe, align 8, !dbg !1335
  store ptr %qc_exe89, ptr %"operator[]_result88", align 8, !dbg !1335
  %inputs_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 2, !dbg !1336
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_input, align 8, !dbg !1336
  %_begin_result90 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %inputs_ptr), !dbg !1336
  store %"Vector::Iterator::It<char*>" %_begin_result90, ptr %__iter_input, align 8, !dbg !1336
  store i32 0, ptr %__foreach_i_input, align 4, !dbg !1336
  store ptr null, ptr %input, align 8, !dbg !1336
  store i32 0, ptr %__foreach_i_input, align 4, !dbg !1336
  br label %foreach.cond91, !dbg !1336

ifcont87:                                         ; preds = %foreach.end128, %ifcont120
  call void @"String::Str__destroy"(ptr %qc), !dbg !1337
  store %"String::Str" zeroinitializer, ptr %label, align 8, !dbg !1338
    #dbg_declare(ptr %label, !1339, !DIExpression(), !1338)
  call void @"String::Str_Str_char*"(ptr %label, ptr @.str.63), !dbg !1338
  store %"String::Str" zeroinitializer, ptr %num, align 8, !dbg !1340
    #dbg_declare(ptr %num, !1341, !DIExpression(), !1340)
  %k132 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1340
  %add = add i32 %k132, 1, !dbg !1340
  %33 = call %"String::Str" @"String::toStr<int>"(i32 %add), !dbg !1340
  store %"String::Str" %33, ptr %num, align 8, !dbg !1340
  store %"String::Str" zeroinitializer, ptr %num2, align 8, !dbg !1342
    #dbg_declare(ptr %num2, !1343, !DIExpression(), !1342)
  %length_result133 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1342
  %34 = call %"String::Str" @"String::toStr<int>"(i32 %length_result133), !dbg !1342
  store %"String::Str" %34, ptr %num2, align 8, !dbg !1342
  %assign_lhs_val = load %"String::Str", ptr %label, align 8, !dbg !1344
  %num134 = load %"String::Str", ptr %num, align 8, !dbg !1344
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %num134), !dbg !1344
  store %"String::Str" zeroinitializer, ptr %slash, align 8, !dbg !1345
    #dbg_declare(ptr %slash, !1346, !DIExpression(), !1345)
  call void @"String::Str_Str_char*"(ptr %slash, ptr @.str.65), !dbg !1345
  %assign_lhs_val135 = load %"String::Str", ptr %label, align 8, !dbg !1347
  %slash136 = load %"String::Str", ptr %slash, align 8, !dbg !1347
  %op_assign_tmp137 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %slash136), !dbg !1347
  %assign_lhs_val138 = load %"String::Str", ptr %label, align 8, !dbg !1348
  %num2139 = load %"String::Str", ptr %num2, align 8, !dbg !1348
  %op_assign_tmp140 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %num2139), !dbg !1348
  store %"String::Str" zeroinitializer, ptr %lb, align 8, !dbg !1349
    #dbg_declare(ptr %lb, !1350, !DIExpression(), !1349)
  call void @"String::Str_Str_char*"(ptr %lb, ptr @.str.66), !dbg !1349
  %assign_lhs_val141 = load %"String::Str", ptr %label, align 8, !dbg !1351
  %lb142 = load %"String::Str", ptr %lb, align 8, !dbg !1351
  %op_assign_tmp143 = call %"String::Str" @"String::Str_operator+=_Str"(ptr %label, %"String::Str" %lb142), !dbg !1351
  store i64 0, ptr %"CQB::Engine::t0", align 8, !dbg !1352
    #dbg_declare(ptr %"CQB::Engine::t0", !1353, !DIExpression(), !1352)
  %calltmp144 = call i64 @"CQB::Engine::nowMs"(), !dbg !1352
  store i64 %calltmp144, ptr %"CQB::Engine::t0", align 8, !dbg !1352
  %comm145 = load %"Vector::Vec<char*>", ptr %comm, align 8, !dbg !1354
  %c_str_result = call ptr @"String::Str_c_str"(ptr %label), !dbg !1354
  %tty = load i1, ptr %"CQB::Engine::tty", align 1, !dbg !1354
  %calltmp146 = call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %comm145, ptr %c_str_result, i1 %tty), !dbg !1354
  store %"CQB::Engine::RunResult" zeroinitializer, ptr %res, align 8, !dbg !1354
    #dbg_declare(ptr %res, !1355, !DIExpression(), !1354)
  store %"CQB::Engine::RunResult" %calltmp146, ptr %res, align 8, !dbg !1354
  store i64 0, ptr %"CQB::Engine::ms", align 8, !dbg !1360
    #dbg_declare(ptr %"CQB::Engine::ms", !1361, !DIExpression(), !1360)
  %calltmp147 = call i64 @"CQB::Engine::nowMs"(), !dbg !1360
  %t0 = load i64, ptr %"CQB::Engine::t0", align 8, !dbg !1360
  %sub = sub i64 %calltmp147, %t0, !dbg !1360
  store i64 %sub, ptr %"CQB::Engine::ms", align 8, !dbg !1360
  call void @"Vector::Vec<char*>__destroy"(ptr %comm), !dbg !1362
  %tty148 = load i1, ptr %"CQB::Engine::tty", align 1, !dbg !1363
  br i1 %tty148, label %then149, label %ifcont150, !dbg !1363

else:                                             ; preds = %for.body74
  %flags_ptr121 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4, !dbg !1364
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag122, align 8, !dbg !1364
  %_begin_result123 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr121), !dbg !1364
  store %"Vector::Iterator::It<char*>" %_begin_result123, ptr %__iter_flag122, align 8, !dbg !1364
  store i32 0, ptr %__foreach_i_flag124, align 4, !dbg !1364
  store ptr null, ptr %flag125, align 8, !dbg !1364
  store i32 0, ptr %__foreach_i_flag124, align 4, !dbg !1364
  br label %foreach.cond126, !dbg !1364

foreach.cond91:                                   ; preds = %foreach.body92, %then86
  %_atEnd_result94 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_input), !dbg !1336
  br i1 %_atEnd_result94, label %foreach.end93, label %foreach.body92, !dbg !1336

foreach.body92:                                   ; preds = %foreach.cond91
  %35 = load %"Vector::Iterator::It<char*>", ptr %__iter_input, align 8, !dbg !1336
  %_next_result95 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_input), !dbg !1336
  store ptr %_next_result95, ptr %input, align 8, !dbg !1336
  %input96 = load ptr, ptr %input, align 8, !dbg !1336
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %input96), !dbg !1336
  br label %foreach.cond91, !dbg !1336

foreach.end93:                                    ; preds = %foreach.cond91
  %flags_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4, !dbg !1365
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag, align 8, !dbg !1365
  %_begin_result97 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr), !dbg !1365
  store %"Vector::Iterator::It<char*>" %_begin_result97, ptr %__iter_flag, align 8, !dbg !1365
  store i32 0, ptr %__foreach_i_flag, align 4, !dbg !1365
  store ptr null, ptr %flag, align 8, !dbg !1365
  store i32 0, ptr %__foreach_i_flag, align 4, !dbg !1365
  br label %foreach.cond98, !dbg !1365

foreach.cond98:                                   ; preds = %foreach.body99, %foreach.end93
  %_atEnd_result101 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag), !dbg !1365
  br i1 %_atEnd_result101, label %foreach.end100, label %foreach.body99, !dbg !1365

foreach.body99:                                   ; preds = %foreach.cond98
  %36 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag, align 8, !dbg !1365
  %_next_result102 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag), !dbg !1365
  store ptr %_next_result102, ptr %flag, align 8, !dbg !1365
  %flag103 = load ptr, ptr %flag, align 8, !dbg !1365
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %flag103), !dbg !1365
  br label %foreach.cond98, !dbg !1365

foreach.end100:                                   ; preds = %foreach.cond98
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr @.str.60), !dbg !1366
  %outputArtifact_ptr = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 3, !dbg !1367
  %outputArtifact = load ptr, ptr %outputArtifact_ptr, align 8, !dbg !1367
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %outputArtifact), !dbg !1367
  store i1 false, ptr %"CQB::Engine::hasProgress", align 1, !dbg !1368
    #dbg_declare(ptr %"CQB::Engine::hasProgress", !1369, !DIExpression(), !1368)
  store i1 false, ptr %"CQB::Engine::hasProgress", align 1, !dbg !1368
  %flags_ptr104 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 4, !dbg !1370
  store %"Vector::Iterator::It<char*>" zeroinitializer, ptr %__iter_flag105, align 8, !dbg !1370
  %_begin_result106 = call %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %flags_ptr104), !dbg !1370
  store %"Vector::Iterator::It<char*>" %_begin_result106, ptr %__iter_flag105, align 8, !dbg !1370
  store i32 0, ptr %__foreach_i_flag107, align 4, !dbg !1370
  store ptr null, ptr %flag108, align 8, !dbg !1370
  store i32 0, ptr %__foreach_i_flag107, align 4, !dbg !1370
  br label %foreach.cond109, !dbg !1370

foreach.cond109:                                  ; preds = %ifcont117, %foreach.end100
  %_atEnd_result112 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag105), !dbg !1370
  br i1 %_atEnd_result112, label %foreach.end111, label %foreach.body110, !dbg !1370

foreach.body110:                                  ; preds = %foreach.cond109
  %37 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag105, align 8, !dbg !1370
  %_next_result113 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag105), !dbg !1370
  store ptr %_next_result113, ptr %flag108, align 8, !dbg !1370
  %flag114 = load ptr, ptr %flag108, align 8, !dbg !1371
  %ptr_eq115 = icmp eq ptr %flag114, @.str.61, !dbg !1371
  br i1 %ptr_eq115, label %then116, label %ifcont117, !dbg !1371

foreach.end111:                                   ; preds = %foreach.cond109
  %hasProgress = load i1, ptr %"CQB::Engine::hasProgress", align 1, !dbg !1372
  %not118 = xor i1 %hasProgress, true, !dbg !1372
  br i1 %not118, label %then119, label %ifcont120, !dbg !1372

then116:                                          ; preds = %foreach.body110
  store i1 true, ptr %"CQB::Engine::hasProgress", align 1, !dbg !1371
  br label %ifcont117, !dbg !1371

ifcont117:                                        ; preds = %then116, %foreach.body110
  br label %foreach.cond109, !dbg !1371

then119:                                          ; preds = %foreach.end111
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr @.str.62), !dbg !1372
  br label %ifcont120, !dbg !1372

ifcont120:                                        ; preds = %then119, %foreach.end111
  br label %ifcont87, !dbg !1372

foreach.cond126:                                  ; preds = %foreach.body127, %else
  %_atEnd_result129 = call i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %__iter_flag122), !dbg !1364
  br i1 %_atEnd_result129, label %foreach.end128, label %foreach.body127, !dbg !1364

foreach.body127:                                  ; preds = %foreach.cond126
  %38 = load %"Vector::Iterator::It<char*>", ptr %__iter_flag122, align 8, !dbg !1364
  %_next_result130 = call ptr @"Vector::Iterator::It<char*>__next"(ptr %__iter_flag122), !dbg !1364
  store ptr %_next_result130, ptr %flag125, align 8, !dbg !1364
  %flag131 = load ptr, ptr %flag125, align 8, !dbg !1364
  call void @"Vector::Vec<char*>_push_T"(ptr %comm, ptr %flag131), !dbg !1364
  br label %foreach.cond126, !dbg !1364

foreach.end128:                                   ; preds = %foreach.cond126
  br label %ifcont87, !dbg !1364

then149:                                          ; preds = %ifcont87
  %varadics_array151 = alloca ptr, i32 0, align 8, !dbg !1373
  %variadic_struct152 = alloca { ptr, i32, i32 }, align 8, !dbg !1373
  %39 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 0, !dbg !1373
  store ptr %varadics_array151, ptr %39, align 8, !dbg !1373
  %40 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 1, !dbg !1373
  store i32 0, ptr %40, align 4, !dbg !1373
  %41 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct152, i32 0, i32 2, !dbg !1373
  store i32 0, ptr %41, align 4, !dbg !1373
  call void @"IO::qout"(ptr @.str.67, ptr %variadic_struct152), !dbg !1373
  %calltmp153 = call i32 @fflush(ptr null), !dbg !1374
  br label %ifcont150, !dbg !1374

ifcont150:                                        ; preds = %then149, %ifcont87
  %exitCode_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0, !dbg !1375
  %exitCode = load i32, ptr %exitCode_ptr, align 4, !dbg !1375
  %icmpeq = icmp eq i32 %exitCode, 0, !dbg !1375
  br i1 %icmpeq, label %then154, label %else156, !dbg !1375

then154:                                          ; preds = %ifcont150
  store i32 0, ptr %"CQB::Engine::steps", align 4, !dbg !1376
    #dbg_declare(ptr %"CQB::Engine::steps", !1377, !DIExpression(), !1376)
  %output_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1376
  %output = load ptr, ptr %output_ptr, align 8, !dbg !1376
  %calltmp157 = call i32 @"CQB::Engine::countDone"(ptr %output), !dbg !1376
  store i32 %calltmp157, ptr %"CQB::Engine::steps", align 4, !dbg !1376
  %steps = load i32, ptr %"CQB::Engine::steps", align 4, !dbg !1378
  %icmpgt = icmp sgt i32 %steps, 0, !dbg !1378
  br i1 %icmpgt, label %then158, label %else160, !dbg !1378

ifcont155:                                        ; preds = %ifcont159
  %output_ptr202 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1379
  %output203 = load ptr, ptr %output_ptr202, align 8, !dbg !1379
  call void @qc_free(ptr %output203), !dbg !1379
  call void @"String::Str__destroy"(ptr %lb), !dbg !1380
  call void @"String::Str__destroy"(ptr %slash), !dbg !1381
  call void @"String::Str__destroy"(ptr %num2), !dbg !1382
  call void @"String::Str__destroy"(ptr %num), !dbg !1383
  call void @"String::Str__destroy"(ptr %label), !dbg !1384
  br label %for.inc75, !dbg !1384

else156:                                          ; preds = %ifcont150
  %k189 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1385
  %add190 = add i32 %k189, 1, !dbg !1385
  %length_result191 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1385
  %targetName_ptr192 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0, !dbg !1385
  %targetName193 = load ptr, ptr %targetName_ptr192, align 8, !dbg !1385
  %varadics_array194 = alloca ptr, i32 3, align 8, !dbg !1385
  %42 = getelementptr ptr, ptr %varadics_array194, i32 0, !dbg !1385
  %vararg_int_to_ptr195 = inttoptr i32 %add190 to ptr, !dbg !1385
  store ptr %vararg_int_to_ptr195, ptr %42, align 8, !dbg !1385
  %43 = getelementptr ptr, ptr %varadics_array194, i32 1, !dbg !1385
  %vararg_int_to_ptr196 = inttoptr i32 %length_result191 to ptr, !dbg !1385
  store ptr %vararg_int_to_ptr196, ptr %43, align 8, !dbg !1385
  %44 = getelementptr ptr, ptr %varadics_array194, i32 2, !dbg !1385
  store ptr %targetName193, ptr %44, align 8, !dbg !1385
  %variadic_struct197 = alloca { ptr, i32, i32 }, align 8, !dbg !1385
  %45 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct197, i32 0, i32 0, !dbg !1385
  store ptr %varadics_array194, ptr %45, align 8, !dbg !1385
  %46 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct197, i32 0, i32 1, !dbg !1385
  store i32 3, ptr %46, align 4, !dbg !1385
  %47 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct197, i32 0, i32 2, !dbg !1385
  store i32 0, ptr %47, align 4, !dbg !1385
  call void @"IO::qout"(ptr @.str.70, ptr %variadic_struct197), !dbg !1385
  %output_ptr198 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1386
  %output199 = load ptr, ptr %output_ptr198, align 8, !dbg !1386
  call void @"CQB::Engine::printWithoutProgress"(ptr %output199), !dbg !1386
  call void @"String::Str__destroy"(ptr %lb), !dbg !1380
  call void @"String::Str__destroy"(ptr %slash), !dbg !1381
  call void @"String::Str__destroy"(ptr %num2), !dbg !1382
  call void @"String::Str__destroy"(ptr %num), !dbg !1383
  call void @"String::Str__destroy"(ptr %label), !dbg !1384
  call void @"Vector::Vec<int>__destroy"(ptr %order), !dbg !1299
  call void @"Vector::Vec<bool>__destroy"(ptr %done), !dbg !1300
  call void @"Vector::Vec<int>__destroy"(ptr %remaining), !dbg !1297
  %exitCode_ptr200 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0, !dbg !1387
  %exitCode201 = load i32, ptr %exitCode_ptr200, align 4, !dbg !1387
  ret i32 %exitCode201, !dbg !1387

then158:                                          ; preds = %then154
  %k161 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1388
  %add162 = add i32 %k161, 1, !dbg !1388
  %length_result163 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1388
  %targetName_ptr164 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0, !dbg !1388
  %targetName165 = load ptr, ptr %targetName_ptr164, align 8, !dbg !1388
  %steps166 = load i32, ptr %"CQB::Engine::steps", align 4, !dbg !1388
  %ms = load i64, ptr %"CQB::Engine::ms", align 8, !dbg !1388
  %sdiv = sdiv i64 %ms, 1000, !dbg !1388
  %ms167 = load i64, ptr %"CQB::Engine::ms", align 8, !dbg !1388
  %srem = srem i64 %ms167, 1000, !dbg !1388
  %varadics_array168 = alloca ptr, i32 6, align 8, !dbg !1388
  %48 = getelementptr ptr, ptr %varadics_array168, i32 0, !dbg !1388
  %vararg_int_to_ptr = inttoptr i32 %add162 to ptr, !dbg !1388
  store ptr %vararg_int_to_ptr, ptr %48, align 8, !dbg !1388
  %49 = getelementptr ptr, ptr %varadics_array168, i32 1, !dbg !1388
  %vararg_int_to_ptr169 = inttoptr i32 %length_result163 to ptr, !dbg !1388
  store ptr %vararg_int_to_ptr169, ptr %49, align 8, !dbg !1388
  %50 = getelementptr ptr, ptr %varadics_array168, i32 2, !dbg !1388
  store ptr %targetName165, ptr %50, align 8, !dbg !1388
  %51 = getelementptr ptr, ptr %varadics_array168, i32 3, !dbg !1388
  %vararg_int_to_ptr170 = inttoptr i32 %steps166 to ptr, !dbg !1388
  store ptr %vararg_int_to_ptr170, ptr %51, align 8, !dbg !1388
  %52 = getelementptr ptr, ptr %varadics_array168, i32 4, !dbg !1388
  %vararg_int_to_ptr171 = inttoptr i64 %sdiv to ptr, !dbg !1388
  store ptr %vararg_int_to_ptr171, ptr %52, align 8, !dbg !1388
  %53 = getelementptr ptr, ptr %varadics_array168, i32 5, !dbg !1388
  %vararg_int_to_ptr172 = inttoptr i64 %srem to ptr, !dbg !1388
  store ptr %vararg_int_to_ptr172, ptr %53, align 8, !dbg !1388
  %variadic_struct173 = alloca { ptr, i32, i32 }, align 8, !dbg !1388
  %54 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 0, !dbg !1388
  store ptr %varadics_array168, ptr %54, align 8, !dbg !1388
  %55 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 1, !dbg !1388
  store i32 6, ptr %55, align 4, !dbg !1388
  %56 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct173, i32 0, i32 2, !dbg !1388
  store i32 0, ptr %56, align 4, !dbg !1388
  call void @"IO::qout"(ptr @.str.68, ptr %variadic_struct173), !dbg !1388
  br label %ifcont159, !dbg !1388

ifcont159:                                        ; preds = %else160, %then158
  br label %ifcont155, !dbg !1389

else160:                                          ; preds = %then154
  %k174 = load i32, ptr %"CQB::Engine::k", align 4, !dbg !1389
  %add175 = add i32 %k174, 1, !dbg !1389
  %length_result176 = call i32 @"Vector::Vec<int>_length"(ptr %order), !dbg !1389
  %targetName_ptr177 = getelementptr inbounds nuw %"CQB::Build::Command", ptr %command, i32 0, i32 0, !dbg !1389
  %targetName178 = load ptr, ptr %targetName_ptr177, align 8, !dbg !1389
  %ms179 = load i64, ptr %"CQB::Engine::ms", align 8, !dbg !1389
  %sdiv180 = sdiv i64 %ms179, 1000, !dbg !1389
  %ms181 = load i64, ptr %"CQB::Engine::ms", align 8, !dbg !1389
  %srem182 = srem i64 %ms181, 1000, !dbg !1389
  %varadics_array183 = alloca ptr, i32 5, align 8, !dbg !1389
  %57 = getelementptr ptr, ptr %varadics_array183, i32 0, !dbg !1389
  %vararg_int_to_ptr184 = inttoptr i32 %add175 to ptr, !dbg !1389
  store ptr %vararg_int_to_ptr184, ptr %57, align 8, !dbg !1389
  %58 = getelementptr ptr, ptr %varadics_array183, i32 1, !dbg !1389
  %vararg_int_to_ptr185 = inttoptr i32 %length_result176 to ptr, !dbg !1389
  store ptr %vararg_int_to_ptr185, ptr %58, align 8, !dbg !1389
  %59 = getelementptr ptr, ptr %varadics_array183, i32 2, !dbg !1389
  store ptr %targetName178, ptr %59, align 8, !dbg !1389
  %60 = getelementptr ptr, ptr %varadics_array183, i32 3, !dbg !1389
  %vararg_int_to_ptr186 = inttoptr i64 %sdiv180 to ptr, !dbg !1389
  store ptr %vararg_int_to_ptr186, ptr %60, align 8, !dbg !1389
  %61 = getelementptr ptr, ptr %varadics_array183, i32 4, !dbg !1389
  %vararg_int_to_ptr187 = inttoptr i64 %srem182 to ptr, !dbg !1389
  store ptr %vararg_int_to_ptr187, ptr %61, align 8, !dbg !1389
  %variadic_struct188 = alloca { ptr, i32, i32 }, align 8, !dbg !1389
  %62 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 0, !dbg !1389
  store ptr %varadics_array183, ptr %62, align 8, !dbg !1389
  %63 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 1, !dbg !1389
  store i32 5, ptr %63, align 4, !dbg !1389
  %64 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct188, i32 0, i32 2, !dbg !1389
  store i32 0, ptr %64, align 4, !dbg !1389
  call void @"IO::qout"(ptr @.str.69, ptr %variadic_struct188), !dbg !1389
  br label %ifcont159, !dbg !1389
}

define weak_odr i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0) !dbg !1390 !qc.return_types !83 {
entry:
  %child = alloca ptr, align 8, !dbg !1393
  %__foreach_i_child = alloca i32, align 4, !dbg !1393
  %__iter_child = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !1393
  %res = alloca %"CQB::Engine::RunResult", align 8, !dbg !1393
  %step = alloca %"CQB::CI::Step", align 8, !dbg !1393
  %"CQB::Engine::i49" = alloca i32, align 4, !dbg !1393
  %"CQB::Engine::failed" = alloca i1, align 1, !dbg !1393
  %"CQB::Engine::state" = alloca ptr, align 8, !dbg !1393
  %state = alloca %"CQB::Engine::TaskState", align 8, !dbg !1393
  %"temp_Vector::Vec<char*>" = alloca %"Vector::Vec<char*>", align 8, !dbg !1393
  %"CQB::Engine::i" = alloca i32, align 4, !dbg !1393
  %"CQB::Engine::stateIndex" = alloca i32, align 4, !dbg !1393
  %previous = alloca ptr, align 8, !dbg !1393
  %__foreach_i_previous = alloca i32, align 4, !dbg !1393
  %__iter_previous = alloca %"Vector::Iterator::It<CQB::CI::Task*>", align 8, !dbg !1393
  %"CQB::Engine::seen" = alloca i1, align 1, !dbg !1393
  %"CQB::Engine::task" = alloca ptr, align 8, !dbg !1393
  %"CQB::Engine::head" = alloca i32, align 4, !dbg !1393
  %"temp_Vector::Vec<CQB::CI::Task*>1" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1393
  %visited = alloca %"Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1393
  %"temp_Vector::Vec<CQB::CI::Task*>" = alloca %"Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1393
  %pending = alloca %"Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1393
    #dbg_value(ptr %0, !1392, !DIExpression(), !1394)
  %1 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2, !dbg !1393
  %ciRoot = load ptr, ptr %1, align 8, !dbg !1393
  %ptr_eq = icmp eq ptr %ciRoot, null, !dbg !1393
  br i1 %ptr_eq, label %then, label %ifcont, !dbg !1393

then:                                             ; preds = %entry
  %varadics_array = alloca ptr, i32 0, align 8, !dbg !1395
  %variadic_struct = alloca { ptr, i32, i32 }, align 8, !dbg !1395
  %2 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0, !dbg !1395
  store ptr %varadics_array, ptr %2, align 8, !dbg !1395
  %3 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1, !dbg !1395
  store i32 0, ptr %3, align 4, !dbg !1395
  %4 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2, !dbg !1395
  store i32 0, ptr %4, align 4, !dbg !1395
  call void @"IO::qout"(ptr @.str.72, ptr %variadic_struct), !dbg !1395
  ret i32 1, !dbg !1396

ifcont:                                           ; preds = %entry
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %pending, align 8, !dbg !1397
    #dbg_declare(ptr %pending, !1398, !DIExpression(), !1397)
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1397
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>"), !dbg !1397
  %"Vector::Vec<CQB::CI::Task*>_inst" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>", align 8, !dbg !1397
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst", ptr %pending, align 8, !dbg !1397
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %visited, align 8, !dbg !1399
    #dbg_declare(ptr %visited, !1400, !DIExpression(), !1399)
  store %"Vector::Vec<CQB::CI::Task*>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::CI::Task*>1", align 8, !dbg !1399
  call void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %"temp_Vector::Vec<CQB::CI::Task*>1"), !dbg !1399
  %"Vector::Vec<CQB::CI::Task*>_inst2" = load %"Vector::Vec<CQB::CI::Task*>", ptr %"temp_Vector::Vec<CQB::CI::Task*>1", align 8, !dbg !1399
  store %"Vector::Vec<CQB::CI::Task*>" %"Vector::Vec<CQB::CI::Task*>_inst2", ptr %visited, align 8, !dbg !1399
  %5 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2, !dbg !1401
  %ciRoot3 = load ptr, ptr %5, align 8, !dbg !1401
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %pending, ptr %ciRoot3), !dbg !1401
  store i32 0, ptr %"CQB::Engine::head", align 4, !dbg !1402
    #dbg_declare(ptr %"CQB::Engine::head", !1403, !DIExpression(), !1402)
  store i32 0, ptr %"CQB::Engine::head", align 4, !dbg !1402
  br label %while.cond, !dbg !1404

while.cond:                                       ; preds = %foreach.end115, %then9, %ifcont
  %head = load i32, ptr %"CQB::Engine::head", align 4, !dbg !1404
  %length_result = call i32 @"Vector::Vec<CQB::CI::Task*>_length"(ptr %pending), !dbg !1404
  %icmplt = icmp slt i32 %head, %length_result, !dbg !1404
  br i1 %icmplt, label %while.body, label %while.end, !dbg !1404

while.body:                                       ; preds = %while.cond
  store ptr null, ptr %"CQB::Engine::task", align 8, !dbg !1405
    #dbg_declare(ptr %"CQB::Engine::task", !1406, !DIExpression(), !1405)
  %head4 = load i32, ptr %"CQB::Engine::head", align 4, !dbg !1405
  %6 = sext i32 %head4 to i64, !dbg !1405
  %"operator[]_result" = call ptr @"Vector::Vec<CQB::CI::Task*>_operator[]_addr_t"(ptr %pending, i64 %6), !dbg !1405
  %deref_ref = load ptr, ptr %"operator[]_result", align 8, !dbg !1405
  store ptr %deref_ref, ptr %"CQB::Engine::task", align 8, !dbg !1405
  %inc_deref = load i32, ptr %"CQB::Engine::head", align 4, !dbg !1407
  %inc = add i32 %inc_deref, 1, !dbg !1407
  store i32 %inc, ptr %"CQB::Engine::head", align 4, !dbg !1407
  store i1 false, ptr %"CQB::Engine::seen", align 1, !dbg !1408
    #dbg_declare(ptr %"CQB::Engine::seen", !1409, !DIExpression(), !1408)
  store i1 false, ptr %"CQB::Engine::seen", align 1, !dbg !1408
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %__iter_previous, align 8, !dbg !1410
  %_begin_result = call %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %visited), !dbg !1410
  store %"Vector::Iterator::It<CQB::CI::Task*>" %_begin_result, ptr %__iter_previous, align 8, !dbg !1410
  store i32 0, ptr %__foreach_i_previous, align 4, !dbg !1410
  store ptr null, ptr %previous, align 8, !dbg !1410
  store i32 0, ptr %__foreach_i_previous, align 4, !dbg !1410
  br label %foreach.cond, !dbg !1410

while.end:                                        ; preds = %while.cond
  %activeTask_ptr119 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4, !dbg !1411
  store ptr null, ptr %activeTask_ptr119, align 8, !dbg !1411
  %ciDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 0, !dbg !1412
  store i1 true, ptr %ciDone_ptr, align 1, !dbg !1412
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %pending), !dbg !1413
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %visited), !dbg !1414
  ret i32 0, !dbg !1414

foreach.cond:                                     ; preds = %ifcont8, %while.body
  %_atEnd_result = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %__iter_previous), !dbg !1410
  br i1 %_atEnd_result, label %foreach.end, label %foreach.body, !dbg !1410

foreach.body:                                     ; preds = %foreach.cond
  %7 = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %__iter_previous, align 8, !dbg !1410
  %_next_result = call ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %__iter_previous), !dbg !1410
  store ptr %_next_result, ptr %previous, align 8, !dbg !1410
  %previous5 = load ptr, ptr %previous, align 8, !dbg !1415
  %task = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1415
  %ptr_eq6 = icmp eq ptr %previous5, %task, !dbg !1415
  br i1 %ptr_eq6, label %then7, label %ifcont8, !dbg !1415

foreach.end:                                      ; preds = %then7, %foreach.cond
  %seen = load i1, ptr %"CQB::Engine::seen", align 1, !dbg !1416
  br i1 %seen, label %then9, label %ifcont10, !dbg !1416

then7:                                            ; preds = %foreach.body
  store i1 true, ptr %"CQB::Engine::seen", align 1, !dbg !1417
  br label %foreach.end, !dbg !1418

ifcont8:                                          ; preds = %foreach.body
  br label %foreach.cond, !dbg !1418

then9:                                            ; preds = %foreach.end
  br label %while.cond, !dbg !1416

ifcont10:                                         ; preds = %foreach.end
  %task11 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1419
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %visited, ptr %task11), !dbg !1419
  %task12 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1420
  %activeTask_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4, !dbg !1420
  store ptr %task12, ptr %activeTask_ptr, align 8, !dbg !1420
  store i32 0, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1421
    #dbg_declare(ptr %"CQB::Engine::stateIndex", !1422, !DIExpression(), !1421)
  store i32 -1, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1421
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1423
    #dbg_declare(ptr %"CQB::Engine::i", !1424, !DIExpression(), !1423)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1423
  br label %for.cond, !dbg !1423

for.cond:                                         ; preds = %for.inc, %ifcont10
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1423
  %8 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1423
  %length_result13 = call i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %8), !dbg !1423
  %icmplt14 = icmp slt i32 %i, %length_result13, !dbg !1423
  br i1 %icmplt14, label %for.body, label %for.end, !dbg !1423

for.body:                                         ; preds = %for.cond
  %activeStates_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1425
  %i15 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1425
  %9 = sext i32 %i15 to i64, !dbg !1425
  %"operator[]_result16" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr, i64 %9), !dbg !1425
  %name_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result16", i32 0, i32 0, !dbg !1425
  %name = load ptr, ptr %name_ptr, align 8, !dbg !1425
  %task17 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1425
  %name_ptr18 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task17, i32 0, i32 0, !dbg !1425
  %name19 = load ptr, ptr %name_ptr18, align 8, !dbg !1425
  %ptr_eq20 = icmp eq ptr %name, %name19, !dbg !1425
  br i1 %ptr_eq20, label %then21, label %ifcont22, !dbg !1425

for.inc:                                          ; preds = %ifcont22
  %inc_deref24 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1423
  %inc25 = add i32 %inc_deref24, 1, !dbg !1423
  store i32 %inc25, ptr %"CQB::Engine::i", align 4, !dbg !1423
  br label %for.cond, !dbg !1423

for.end:                                          ; preds = %then21, %for.cond
  %stateIndex = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1426
  %icmplt26 = icmp slt i32 %stateIndex, 0, !dbg !1426
  br i1 %icmplt26, label %then27, label %else, !dbg !1426

then21:                                           ; preds = %for.body
  %i23 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1427
  store i32 %i23, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1427
  br label %for.end, !dbg !1428

ifcont22:                                         ; preds = %for.body
  br label %for.inc, !dbg !1428

then27:                                           ; preds = %for.end
  %task29 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1429
  %name_ptr30 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task29, i32 0, i32 0, !dbg !1429
  %name31 = load ptr, ptr %name_ptr30, align 8, !dbg !1429
  %10 = insertvalue %"CQB::Engine::TaskState" zeroinitializer, ptr %name31, 0, !dbg !1429
  %11 = insertvalue %"CQB::Engine::TaskState" %10, ptr @.str.73, 1, !dbg !1429
  %12 = insertvalue %"CQB::Engine::TaskState" %11, ptr @.str.74, 2, !dbg !1429
  %13 = insertvalue %"CQB::Engine::TaskState" %12, i32 0, 3, !dbg !1429
  %14 = insertvalue %"CQB::Engine::TaskState" %13, ptr @.str.75, 4, !dbg !1429
  store %"Vector::Vec<char*>" zeroinitializer, ptr %"temp_Vector::Vec<char*>", align 8, !dbg !1430
  call void @"Vector::Vec<char*>_Vec"(ptr %"temp_Vector::Vec<char*>"), !dbg !1430
  %"Vector::Vec<char*>_inst" = load %"Vector::Vec<char*>", ptr %"temp_Vector::Vec<char*>", align 8, !dbg !1430
  %15 = insertvalue %"CQB::Engine::TaskState" %14, %"Vector::Vec<char*>" %"Vector::Vec<char*>_inst", 5, !dbg !1430
  %16 = insertvalue %"CQB::Engine::TaskState" %15, i32 0, 6, !dbg !1430
  %17 = insertvalue %"CQB::Engine::TaskState" %16, i32 0, 7, !dbg !1430
  store %"CQB::Engine::TaskState" zeroinitializer, ptr %state, align 8, !dbg !1430
    #dbg_declare(ptr %state, !1431, !DIExpression(), !1432)
  store %"CQB::Engine::TaskState" %17, ptr %state, align 8, !dbg !1430
  %18 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1433
  %state32 = load %"CQB::Engine::TaskState", ptr %state, align 8, !dbg !1433
  call void @"Vector::Vec<CQB::Engine::TaskState>_push_T"(ptr %18, %"CQB::Engine::TaskState" %state32), !dbg !1433
  %19 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1434
  %length_result33 = call i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %19), !dbg !1434
  %sub = sub i32 %length_result33, 1, !dbg !1434
  store i32 %sub, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1434
  br label %ifcont28, !dbg !1434

ifcont28:                                         ; preds = %else, %then27
  store ptr null, ptr %"CQB::Engine::state", align 8, !dbg !1435
    #dbg_declare(ptr %"CQB::Engine::state", !1436, !DIExpression(), !1435)
  %activeStates_ptr43 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1435
  %stateIndex44 = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1435
  %20 = sext i32 %stateIndex44 to i64, !dbg !1435
  %"operator[]_result45" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr43, i64 %20), !dbg !1435
  %activeStates_ptr46 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1435
  %stateIndex47 = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1435
  %21 = sext i32 %stateIndex47 to i64, !dbg !1435
  %"operator[]_result48" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr46, i64 %21), !dbg !1435
  store ptr %"operator[]_result48", ptr %"CQB::Engine::state", align 8, !dbg !1435
  store i1 false, ptr %"CQB::Engine::failed", align 1, !dbg !1437
    #dbg_declare(ptr %"CQB::Engine::failed", !1438, !DIExpression(), !1437)
  store i1 false, ptr %"CQB::Engine::failed", align 1, !dbg !1437
  store i32 0, ptr %"CQB::Engine::i49", align 4, !dbg !1439
    #dbg_declare(ptr %"CQB::Engine::i49", !1440, !DIExpression(), !1439)
  store i32 0, ptr %"CQB::Engine::i49", align 4, !dbg !1439
  br label %for.cond50, !dbg !1439

else:                                             ; preds = %for.end
  %activeStates_ptr34 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1441
  %stateIndex35 = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1441
  %22 = sext i32 %stateIndex35 to i64, !dbg !1441
  %"operator[]_result36" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr34, i64 %22), !dbg !1441
  %status_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result36", i32 0, i32 2, !dbg !1441
  store ptr @.str.76, ptr %status_ptr, align 8, !dbg !1441
  %activeStates_ptr37 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1442
  %stateIndex38 = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1442
  %23 = sext i32 %stateIndex38 to i64, !dbg !1442
  %"operator[]_result39" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr37, i64 %23), !dbg !1442
  %progress_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result39", i32 0, i32 3, !dbg !1442
  store i32 0, ptr %progress_ptr, align 4, !dbg !1442
  %activeStates_ptr40 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1443
  %stateIndex41 = load i32, ptr %"CQB::Engine::stateIndex", align 4, !dbg !1443
  %24 = sext i32 %stateIndex41 to i64, !dbg !1443
  %"operator[]_result42" = call ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %activeStates_ptr40, i64 %24), !dbg !1443
  %lastOutput_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %"operator[]_result42", i32 0, i32 4, !dbg !1443
  store ptr @.str.77, ptr %lastOutput_ptr, align 8, !dbg !1443
  br label %ifcont28, !dbg !1443

for.cond50:                                       ; preds = %for.inc52, %ifcont28
  %i54 = load i32, ptr %"CQB::Engine::i49", align 4, !dbg !1439
  %task55 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1439
  %25 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task55, i32 0, i32 1, !dbg !1439
  %length_result56 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %25), !dbg !1439
  %icmplt57 = icmp slt i32 %i54, %length_result56, !dbg !1439
  br i1 %icmplt57, label %for.body51, label %for.end53, !dbg !1439

for.body51:                                       ; preds = %for.cond50
  %task58 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1444
  %steps_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task58, i32 0, i32 1, !dbg !1444
  %i59 = load i32, ptr %"CQB::Engine::i49", align 4, !dbg !1444
  %26 = sext i32 %i59 to i64, !dbg !1444
  %"operator[]_result60" = call ptr @"Vector::Vec<CQB::CI::Step>_operator[]_addr_t"(ptr %steps_ptr, i64 %26), !dbg !1444
  store %"CQB::CI::Step" zeroinitializer, ptr %step, align 8, !dbg !1444
    #dbg_declare(ptr %step, !1445, !DIExpression(), !1444)
  %strip_ref = load %"CQB::CI::Step", ptr %"operator[]_result60", align 8, !dbg !1444
  store %"CQB::CI::Step" %strip_ref, ptr %step, align 8, !dbg !1444
  %task61 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1446
  %27 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task61, i32 0, i32 1, !dbg !1446
  %length_result62 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %27), !dbg !1446
  %icmpgt = icmp sgt i32 %length_result62, 0, !dbg !1446
  br i1 %icmpgt, label %ternary.true, label %ternary.false, !dbg !1446

for.inc52:                                        ; preds = %ifcont85
  %inc_deref102 = load i32, ptr %"CQB::Engine::i49", align 4, !dbg !1439
  %inc103 = add i32 %inc_deref102, 1, !dbg !1439
  store i32 %inc103, ptr %"CQB::Engine::i49", align 4, !dbg !1439
  br label %for.cond50, !dbg !1439

for.end53:                                        ; preds = %then96, %for.cond50
  %failed = load i1, ptr %"CQB::Engine::failed", align 1, !dbg !1447
  br i1 %failed, label %then104, label %ifcont105, !dbg !1447

ternary.true:                                     ; preds = %for.body51
  %i63 = load i32, ptr %"CQB::Engine::i49", align 4, !dbg !1446
  %mul = mul i32 %i63, 100, !dbg !1446
  %task64 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1446
  %28 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task64, i32 0, i32 1, !dbg !1446
  %length_result65 = call i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %28), !dbg !1446
  %sdiv = sdiv i32 %mul, %length_result65, !dbg !1446
  br label %ternary.end, !dbg !1446

ternary.false:                                    ; preds = %for.body51
  br label %ternary.end, !dbg !1446

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %sdiv, %ternary.true ], [ 100, %ternary.false ], !dbg !1446
  %state66 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1446
  %progress_ptr67 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state66, i32 0, i32 3, !dbg !1446
  store i32 %ternary_val, ptr %progress_ptr67, align 4, !dbg !1446
  %task68 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1448
  %name_ptr69 = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task68, i32 0, i32 0, !dbg !1448
  %name70 = load ptr, ptr %name_ptr69, align 8, !dbg !1448
  %name_ptr71 = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 0, !dbg !1448
  %name72 = load ptr, ptr %name_ptr71, align 8, !dbg !1448
  %varadics_array73 = alloca ptr, i32 2, align 8, !dbg !1448
  %29 = getelementptr ptr, ptr %varadics_array73, i32 0, !dbg !1448
  store ptr %name70, ptr %29, align 8, !dbg !1448
  %30 = getelementptr ptr, ptr %varadics_array73, i32 1, !dbg !1448
  store ptr %name72, ptr %30, align 8, !dbg !1448
  %variadic_struct74 = alloca { ptr, i32, i32 }, align 8, !dbg !1448
  %31 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 0, !dbg !1448
  store ptr %varadics_array73, ptr %31, align 8, !dbg !1448
  %32 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 1, !dbg !1448
  store i32 2, ptr %32, align 4, !dbg !1448
  %33 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct74, i32 0, i32 2, !dbg !1448
  store i32 0, ptr %33, align 4, !dbg !1448
  call void @"IO::qout"(ptr @.str.78, ptr %variadic_struct74), !dbg !1448
  %command_ptr = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 1, !dbg !1449
  %command = load %"Vector::Vec<char*>", ptr %command_ptr, align 8, !dbg !1449
  %calltmp = call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %command, ptr @.str.79, i1 false), !dbg !1449
  store %"CQB::Engine::RunResult" zeroinitializer, ptr %res, align 8, !dbg !1449
    #dbg_declare(ptr %res, !1450, !DIExpression(), !1449)
  store %"CQB::Engine::RunResult" %calltmp, ptr %res, align 8, !dbg !1449
  %output_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1451
  %output = load ptr, ptr %output_ptr, align 8, !dbg !1451
  %state75 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1451
  %lastOutput_ptr76 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state75, i32 0, i32 4, !dbg !1451
  store ptr %output, ptr %lastOutput_ptr76, align 8, !dbg !1451
  %state77 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1452
  %34 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state77, i32 0, i32 5, !dbg !1452
  %output_ptr78 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1452
  %output79 = load ptr, ptr %output_ptr78, align 8, !dbg !1452
  call void @"Vector::Vec<char*>_push_T"(ptr %34, ptr %output79), !dbg !1452
  %output_ptr80 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1453
  %output81 = load ptr, ptr %output_ptr80, align 8, !dbg !1453
  %varadics_array82 = alloca ptr, align 8, !dbg !1453
  %35 = getelementptr ptr, ptr %varadics_array82, i32 0, !dbg !1453
  store ptr %output81, ptr %35, align 8, !dbg !1453
  %variadic_struct83 = alloca { ptr, i32, i32 }, align 8, !dbg !1453
  %36 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 0, !dbg !1453
  store ptr %varadics_array82, ptr %36, align 8, !dbg !1453
  %37 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 1, !dbg !1453
  store i32 1, ptr %37, align 4, !dbg !1453
  %38 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct83, i32 0, i32 2, !dbg !1453
  store i32 0, ptr %38, align 4, !dbg !1453
  call void @"IO::qout"(ptr @.str.80, ptr %variadic_struct83), !dbg !1453
  %exitCode_ptr = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0, !dbg !1454
  %exitCode = load i32, ptr %exitCode_ptr, align 4, !dbg !1454
  %icmpne = icmp ne i32 %exitCode, 0, !dbg !1454
  br i1 %icmpne, label %then84, label %ifcont85, !dbg !1454

then84:                                           ; preds = %ternary.end
  %state86 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1455
  %errorsCount_ptr = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state86, i32 0, i32 7, !dbg !1455
  %inc_deref87 = load i32, ptr %errorsCount_ptr, align 4, !dbg !1455
  %inc88 = add i32 %inc_deref87, 1, !dbg !1455
  store i32 %inc88, ptr %errorsCount_ptr, align 4, !dbg !1455
  %name_ptr89 = getelementptr inbounds nuw %"CQB::CI::Step", ptr %step, i32 0, i32 0, !dbg !1456
  %name90 = load ptr, ptr %name_ptr89, align 8, !dbg !1456
  %exitCode_ptr91 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 0, !dbg !1456
  %exitCode92 = load i32, ptr %exitCode_ptr91, align 4, !dbg !1456
  %varadics_array93 = alloca ptr, i32 2, align 8, !dbg !1456
  %39 = getelementptr ptr, ptr %varadics_array93, i32 0, !dbg !1456
  store ptr %name90, ptr %39, align 8, !dbg !1456
  %40 = getelementptr ptr, ptr %varadics_array93, i32 1, !dbg !1456
  %vararg_int_to_ptr = inttoptr i32 %exitCode92 to ptr, !dbg !1456
  store ptr %vararg_int_to_ptr, ptr %40, align 8, !dbg !1456
  %variadic_struct94 = alloca { ptr, i32, i32 }, align 8, !dbg !1456
  %41 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 0, !dbg !1456
  store ptr %varadics_array93, ptr %41, align 8, !dbg !1456
  %42 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 1, !dbg !1456
  store i32 2, ptr %42, align 4, !dbg !1456
  %43 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct94, i32 0, i32 2, !dbg !1456
  store i32 0, ptr %43, align 4, !dbg !1456
  call void @"IO::qout"(ptr @.str.81, ptr %variadic_struct94), !dbg !1456
  %task95 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1457
  %ignoreFailure_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task95, i32 0, i32 3, !dbg !1457
  %ignoreFailure = load i1, ptr %ignoreFailure_ptr, align 1, !dbg !1457
  %not = xor i1 %ignoreFailure, true, !dbg !1457
  br i1 %not, label %then96, label %ifcont97, !dbg !1457

ifcont85:                                         ; preds = %ifcont97, %ternary.end
  %output_ptr100 = getelementptr inbounds nuw %"CQB::Engine::RunResult", ptr %res, i32 0, i32 1, !dbg !1458
  %output101 = load ptr, ptr %output_ptr100, align 8, !dbg !1458
  call void @qc_free(ptr %output101), !dbg !1458
  br label %for.inc52, !dbg !1458

then96:                                           ; preds = %then84
  %state98 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1459
  %status_ptr99 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state98, i32 0, i32 2, !dbg !1459
  store ptr @.str.82, ptr %status_ptr99, align 8, !dbg !1459
  store i1 true, ptr %"CQB::Engine::failed", align 1, !dbg !1460
  br label %for.end53, !dbg !1461

ifcont97:                                         ; preds = %then84
  br label %ifcont85, !dbg !1461

then104:                                          ; preds = %for.end53
  %activeTask_ptr106 = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4, !dbg !1462
  store ptr null, ptr %activeTask_ptr106, align 8, !dbg !1462
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %pending), !dbg !1413
  call void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %visited), !dbg !1414
  ret i32 1, !dbg !1414

ifcont105:                                        ; preds = %for.end53
  %state107 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1463
  %progress_ptr108 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state107, i32 0, i32 3, !dbg !1463
  store i32 100, ptr %progress_ptr108, align 4, !dbg !1463
  %state109 = load ptr, ptr %"CQB::Engine::state", align 8, !dbg !1464
  %status_ptr110 = getelementptr inbounds nuw %"CQB::Engine::TaskState", ptr %state109, i32 0, i32 2, !dbg !1464
  store ptr @.str.83, ptr %status_ptr110, align 8, !dbg !1464
  %task111 = load ptr, ptr %"CQB::Engine::task", align 8, !dbg !1465
  %next_ptr = getelementptr inbounds nuw %"CQB::CI::Task", ptr %task111, i32 0, i32 2, !dbg !1465
  store %"Vector::Iterator::It<CQB::CI::Task*>" zeroinitializer, ptr %__iter_child, align 8, !dbg !1465
  %_begin_result112 = call %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %next_ptr), !dbg !1465
  store %"Vector::Iterator::It<CQB::CI::Task*>" %_begin_result112, ptr %__iter_child, align 8, !dbg !1465
  store i32 0, ptr %__foreach_i_child, align 4, !dbg !1465
  store ptr null, ptr %child, align 8, !dbg !1465
  store i32 0, ptr %__foreach_i_child, align 4, !dbg !1465
  br label %foreach.cond113, !dbg !1465

foreach.cond113:                                  ; preds = %foreach.body114, %ifcont105
  %_atEnd_result116 = call i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %__iter_child), !dbg !1465
  br i1 %_atEnd_result116, label %foreach.end115, label %foreach.body114, !dbg !1465

foreach.body114:                                  ; preds = %foreach.cond113
  %44 = load %"Vector::Iterator::It<CQB::CI::Task*>", ptr %__iter_child, align 8, !dbg !1465
  %_next_result117 = call ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %__iter_child), !dbg !1465
  store ptr %_next_result117, ptr %child, align 8, !dbg !1465
  %child118 = load ptr, ptr %child, align 8, !dbg !1466
  call void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %pending, ptr %child118), !dbg !1466
  br label %foreach.cond113, !dbg !1466

foreach.end115:                                   ; preds = %foreach.cond113
  br label %while.cond, !dbg !1466
}

define weak_odr void @"CQB::Engine::Runner_Runner_Vector::Vec<Build::Command>_CI::Task*"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1, ptr %2) !dbg !1467 !qc.return_types !25 {
entry:
  %"temp_Vector::Vec<CQB::Engine::TaskState>" = alloca %"Vector::Vec<CQB::Engine::TaskState>", align 8
  %ciRoot = alloca ptr, align 8
  %build = alloca %"Vector::Vec<CQB::Build::Command>", align 8
    #dbg_value(ptr %0, !1469, !DIExpression(), !1472)
  store %"Vector::Vec<CQB::Build::Command>" zeroinitializer, ptr %build, align 8, !dbg !1472
    #dbg_value(%"Vector::Vec<CQB::Build::Command>" %1, !1470, !DIExpression(), !1472)
  store %"Vector::Vec<CQB::Build::Command>" %1, ptr %build, align 8, !dbg !1472
  store ptr null, ptr %ciRoot, align 8, !dbg !1472
    #dbg_value(ptr %2, !1471, !DIExpression(), !1472)
  store ptr %2, ptr %ciRoot, align 8, !dbg !1472
  %build1 = load %"Vector::Vec<CQB::Build::Command>", ptr %build, align 8, !dbg !1473
  %buildGraph_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 5, !dbg !1473
  store %"Vector::Vec<CQB::Build::Command>" %build1, ptr %buildGraph_ptr, align 8, !dbg !1473
  %ciRoot2 = load ptr, ptr %ciRoot, align 8, !dbg !1474
  %ciRoot_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 2, !dbg !1474
  store ptr %ciRoot2, ptr %ciRoot_ptr, align 8, !dbg !1474
  %ciRoot3 = load ptr, ptr %ciRoot, align 8, !dbg !1475
  %activeTask_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 4, !dbg !1475
  store ptr %ciRoot3, ptr %activeTask_ptr, align 8, !dbg !1475
  store %"Vector::Vec<CQB::Engine::TaskState>" zeroinitializer, ptr %"temp_Vector::Vec<CQB::Engine::TaskState>", align 8, !dbg !1476
  call void @"Vector::Vec<CQB::Engine::TaskState>_Vec"(ptr %"temp_Vector::Vec<CQB::Engine::TaskState>"), !dbg !1476
  %"Vector::Vec<CQB::Engine::TaskState>_inst" = load %"Vector::Vec<CQB::Engine::TaskState>", ptr %"temp_Vector::Vec<CQB::Engine::TaskState>", align 8, !dbg !1476
  %activeStates_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 3, !dbg !1476
  store %"Vector::Vec<CQB::Engine::TaskState>" %"Vector::Vec<CQB::Engine::TaskState>_inst", ptr %activeStates_ptr, align 8, !dbg !1476
  %ciDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 0, !dbg !1477
  store i1 false, ptr %ciDone_ptr, align 1, !dbg !1477
  %buildDone_ptr = getelementptr inbounds nuw %"CQB::Engine::Runner", ptr %0, i32 0, i32 1, !dbg !1478
  store i1 false, ptr %buildDone_ptr, align 1, !dbg !1478
  ret void, !dbg !1478
}

define weak_odr i1 @"CQB::Engine::Runner_Run_char*"(ptr %0, ptr %1) !dbg !1479 !qc.return_types !29 {
entry:
  %qc_exe = alloca ptr, align 8
    #dbg_value(ptr %0, !1481, !DIExpression(), !1483)
  store ptr null, ptr %qc_exe, align 8, !dbg !1483
    #dbg_value(ptr %1, !1482, !DIExpression(), !1483)
  store ptr %1, ptr %qc_exe, align 8, !dbg !1483
  %runCIPipeline_result = call i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0), !dbg !1484
  %qc_exe1 = load ptr, ptr %qc_exe, align 8, !dbg !1485
  %runBuildPipeline_result = call i32 @"CQB::Engine::Runner_runBuildPipeline_char*"(ptr %0, ptr %qc_exe1), !dbg !1485
  ret i1 true, !dbg !1486
}

declare !qc.return_types !83 i32 @__sched_cpucount(i64, ptr)

declare !qc.return_types !1487 ptr @__sched_cpualloc(i64)

declare !qc.return_types !23 void @__sched_cpufree(ptr)

declare !qc.return_types !83 i32 @sched_setparam(i32, ptr)

declare !qc.return_types !83 i32 @sched_getparam(i32, ptr)

declare !qc.return_types !83 i32 @sched_setscheduler(i32, i32, ptr)

declare !qc.return_types !83 i32 @sched_getscheduler(i32)

declare !qc.return_types !83 i32 @sched_yield()

declare !qc.return_types !83 i32 @sched_get_priority_max(i32)

declare !qc.return_types !83 i32 @sched_get_priority_min(i32)

declare !qc.return_types !83 i32 @sched_rr_get_interval(i32, ptr)

define weak_odr i16 @__bswap_16(i16 %__bsx) !dbg !1488 !qc.return_types !1492 {
entry:
  %__bsx1 = alloca i16, align 2
    #dbg_value(i16 %__bsx, !1490, !DIExpression(), !1493)
  store i16 0, ptr %__bsx1, align 2, !dbg !1493
  store i16 %__bsx, ptr %__bsx1, align 2, !dbg !1493
  %__bsx2 = load i16, ptr %__bsx1, align 2, !dbg !1493
  %promote_int = sext i16 %__bsx2 to i32, !dbg !1493
  %ashrtmp = ashr i32 %promote_int, 8, !dbg !1493
  %promote_int3 = sext i32 %ashrtmp to i64, !dbg !1493
  %andtmp = and i64 %promote_int3, 255, !dbg !1493
  %__bsx4 = load i16, ptr %__bsx1, align 2, !dbg !1493
  %promote_int5 = sext i16 %__bsx4 to i64, !dbg !1493
  %andtmp6 = and i64 %promote_int5, 255, !dbg !1493
  %shltmp = shl i64 %andtmp6, 8, !dbg !1493
  %ortmp = or i64 %andtmp, %shltmp, !dbg !1493
  %0 = trunc i64 %ortmp to i16, !dbg !1493
  ret i16 %0, !dbg !1493
}

define weak_odr i32 @__bswap_32(i32 %__bsx) !dbg !1494 !qc.return_types !1498 {
entry:
  %__bsx1 = alloca i32, align 4
    #dbg_value(i32 %__bsx, !1496, !DIExpression(), !1499)
  store i32 0, ptr %__bsx1, align 4, !dbg !1499
  store i32 %__bsx, ptr %__bsx1, align 4, !dbg !1499
  %__bsx2 = load i32, ptr %__bsx1, align 4, !dbg !1499
  %promote_int = sext i32 %__bsx2 to i64, !dbg !1499
  %andtmp = and i64 %promote_int, 4278190080, !dbg !1499
  %lshrtmp = lshr i64 %andtmp, 24, !dbg !1499
  %__bsx3 = load i32, ptr %__bsx1, align 4, !dbg !1499
  %promote_int4 = sext i32 %__bsx3 to i64, !dbg !1499
  %andtmp5 = and i64 %promote_int4, 16711680, !dbg !1499
  %lshrtmp6 = lshr i64 %andtmp5, 8, !dbg !1499
  %ortmp = or i64 %lshrtmp, %lshrtmp6, !dbg !1499
  %__bsx7 = load i32, ptr %__bsx1, align 4, !dbg !1499
  %promote_int8 = sext i32 %__bsx7 to i64, !dbg !1499
  %andtmp9 = and i64 %promote_int8, 65280, !dbg !1499
  %shltmp = shl i64 %andtmp9, 8, !dbg !1499
  %ortmp10 = or i64 %ortmp, %shltmp, !dbg !1499
  %__bsx11 = load i32, ptr %__bsx1, align 4, !dbg !1499
  %promote_int12 = sext i32 %__bsx11 to i64, !dbg !1499
  %andtmp13 = and i64 %promote_int12, 255, !dbg !1499
  %shltmp14 = shl i64 %andtmp13, 24, !dbg !1499
  %ortmp15 = or i64 %ortmp10, %shltmp14, !dbg !1499
  %arg_trunc = trunc i64 %ortmp15 to i32, !dbg !1499
  ret i32 %arg_trunc, !dbg !1499
}

define weak_odr i64 @__bswap_64(i64 %__bsx) !dbg !1500 !qc.return_types !1503 {
entry:
  %__bsx1 = alloca i64, align 8
    #dbg_value(i64 %__bsx, !1502, !DIExpression(), !1504)
  store i64 0, ptr %__bsx1, align 8, !dbg !1504
  store i64 %__bsx, ptr %__bsx1, align 8, !dbg !1504
  %__bsx2 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp = and i64 %__bsx2, -72057594037927936, !dbg !1504
  %lshrtmp = lshr i64 %andtmp, 56, !dbg !1504
  %__bsx3 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp4 = and i64 %__bsx3, 71776119061217280, !dbg !1504
  %lshrtmp5 = lshr i64 %andtmp4, 40, !dbg !1504
  %ortmp = or i64 %lshrtmp, %lshrtmp5, !dbg !1504
  %__bsx6 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp7 = and i64 %__bsx6, 280375465082880, !dbg !1504
  %lshrtmp8 = lshr i64 %andtmp7, 24, !dbg !1504
  %ortmp9 = or i64 %ortmp, %lshrtmp8, !dbg !1504
  %__bsx10 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp11 = and i64 %__bsx10, 1095216660480, !dbg !1504
  %lshrtmp12 = lshr i64 %andtmp11, 8, !dbg !1504
  %ortmp13 = or i64 %ortmp9, %lshrtmp12, !dbg !1504
  %__bsx14 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp15 = and i64 %__bsx14, 4278190080, !dbg !1504
  %shltmp = shl i64 %andtmp15, 8, !dbg !1504
  %ortmp16 = or i64 %ortmp13, %shltmp, !dbg !1504
  %__bsx17 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp18 = and i64 %__bsx17, 16711680, !dbg !1504
  %shltmp19 = shl i64 %andtmp18, 24, !dbg !1504
  %ortmp20 = or i64 %ortmp16, %shltmp19, !dbg !1504
  %__bsx21 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp22 = and i64 %__bsx21, 65280, !dbg !1504
  %shltmp23 = shl i64 %andtmp22, 40, !dbg !1504
  %ortmp24 = or i64 %ortmp20, %shltmp23, !dbg !1504
  %__bsx25 = load i64, ptr %__bsx1, align 8, !dbg !1504
  %andtmp26 = and i64 %__bsx25, 255, !dbg !1504
  %shltmp27 = shl i64 %andtmp26, 56, !dbg !1504
  %ortmp28 = or i64 %ortmp24, %shltmp27, !dbg !1504
  ret i64 %ortmp28, !dbg !1504
}

define weak_odr i16 @__uint16_identity(i16 %__x) !dbg !1505 !qc.return_types !1492 {
entry:
  %__x1 = alloca i16, align 2
    #dbg_value(i16 %__x, !1507, !DIExpression(), !1508)
  store i16 0, ptr %__x1, align 2, !dbg !1508
  store i16 %__x, ptr %__x1, align 2, !dbg !1508
  %__x2 = load i16, ptr %__x1, align 2, !dbg !1508
  ret i16 %__x2, !dbg !1508
}

define weak_odr i32 @__uint32_identity(i32 %__x) !dbg !1509 !qc.return_types !1498 {
entry:
  %__x1 = alloca i32, align 4
    #dbg_value(i32 %__x, !1511, !DIExpression(), !1512)
  store i32 0, ptr %__x1, align 4, !dbg !1512
  store i32 %__x, ptr %__x1, align 4, !dbg !1512
  %__x2 = load i32, ptr %__x1, align 4, !dbg !1512
  ret i32 %__x2, !dbg !1512
}

define weak_odr i64 @__uint64_identity(i64 %__x) !dbg !1513 !qc.return_types !1503 {
entry:
  %__x1 = alloca i64, align 8
    #dbg_value(i64 %__x, !1515, !DIExpression(), !1516)
  store i64 0, ptr %__x1, align 8, !dbg !1516
  store i64 %__x, ptr %__x1, align 8, !dbg !1516
  %__x2 = load i64, ptr %__x1, align 8, !dbg !1516
  ret i64 %__x2, !dbg !1516
}

declare !qc.return_types !83 i32 @select(i32, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @pselect(i32, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_init(ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_destroy(ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_getsigdefault(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setsigdefault(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_getsigmask(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setsigmask(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_getflags(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setflags(ptr, i16)

declare !qc.return_types !83 i32 @posix_spawnattr_getpgroup(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setpgroup(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawnattr_getschedpolicy(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setschedpolicy(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawnattr_getschedparam(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setschedparam(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_init(ptr)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_destroy(ptr)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addopen(ptr, i32, ptr, i32, i32)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addclose(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addchdir_np(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addfchdir_np(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addclosefrom_np(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawn_file_actions_addtcsetpgrp_np(ptr, i32)

declare !qc.return_types !83 i32 @posix_spawnattr_getcgroup_np(ptr, ptr)

declare !qc.return_types !83 i32 @posix_spawnattr_setcgroup_np(ptr, i32)

declare !qc.return_types !83 i32 @pidfd_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @pidfd_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare !qc.return_types !83 i32 @access(ptr, i32)

declare !qc.return_types !83 i32 @faccessat(i32, ptr, i32, i32)

declare !qc.return_types !23 void @closefrom(i32)

declare !qc.return_types !1517 i64 @pread(i32, ptr, i64, i64)

declare !qc.return_types !1517 i64 @pwrite(i32, ptr, i64, i64)

declare !qc.return_types !83 i32 @pipe(ptr)

declare !qc.return_types !1518 i32 @alarm(i32)

declare !qc.return_types !1518 i32 @sleep(i32)

declare !qc.return_types !1519 i32 @ualarm(i32, i32)

declare !qc.return_types !83 i32 @usleep(i32)

declare !qc.return_types !83 i32 @pause()

declare !qc.return_types !83 i32 @chown(ptr, i32, i32)

declare !qc.return_types !83 i32 @fchown(i32, i32, i32)

declare !qc.return_types !83 i32 @lchown(ptr, i32, i32)

declare !qc.return_types !83 i32 @fchownat(i32, ptr, i32, i32, i32)

declare !qc.return_types !83 i32 @chdir(ptr)

declare !qc.return_types !83 i32 @fchdir(i32)

declare !qc.return_types !24 ptr @getcwd(ptr, i64)

declare !qc.return_types !24 ptr @getwd(ptr)

declare !qc.return_types !83 i32 @dup(i32)

declare !qc.return_types !83 i32 @dup2(i32, i32)

declare !qc.return_types !83 i32 @execve(ptr, ptr, ptr)

declare !qc.return_types !83 i32 @fexecve(i32, ptr, ptr)

declare !qc.return_types !83 i32 @execv(ptr, ptr)

declare !qc.return_types !83 i32 @execle(ptr, ptr, ...)

declare !qc.return_types !83 i32 @execl(ptr, ptr, ...)

declare !qc.return_types !83 i32 @execvp(ptr, ptr)

declare !qc.return_types !83 i32 @execlp(ptr, ptr, ...)

declare !qc.return_types !83 i32 @nice(i32)

declare !qc.return_types !23 void @_exit(i32)

declare !qc.return_types !1520 i64 @pathconf(ptr, i32)

declare !qc.return_types !1520 i64 @fpathconf(i32, i32)

declare !qc.return_types !1520 i64 @sysconf(i32)

declare !qc.return_types !1521 i64 @confstr(i32, ptr, i64)

declare !qc.return_types !1522 i32 @getpid()

declare !qc.return_types !1522 i32 @getppid()

declare !qc.return_types !1522 i32 @getpgrp()

declare !qc.return_types !1522 i32 @__getpgid(i32)

declare !qc.return_types !1522 i32 @getpgid(i32)

declare !qc.return_types !83 i32 @setpgid(i32, i32)

declare !qc.return_types !83 i32 @setpgrp()

declare !qc.return_types !1522 i32 @setsid()

declare !qc.return_types !1522 i32 @getsid(i32)

declare !qc.return_types !1523 i32 @getuid()

declare !qc.return_types !1523 i32 @geteuid()

declare !qc.return_types !1524 i32 @getgid()

declare !qc.return_types !1524 i32 @getegid()

declare !qc.return_types !83 i32 @getgroups(i32, ptr)

declare !qc.return_types !83 i32 @setuid(i32)

declare !qc.return_types !83 i32 @setreuid(i32, i32)

declare !qc.return_types !83 i32 @seteuid(i32)

declare !qc.return_types !83 i32 @setgid(i32)

declare !qc.return_types !83 i32 @setregid(i32, i32)

declare !qc.return_types !83 i32 @setegid(i32)

declare !qc.return_types !1522 i32 @fork()

declare !qc.return_types !83 i32 @vfork()

declare !qc.return_types !24 ptr @ttyname(i32)

declare !qc.return_types !83 i32 @ttyname_r(i32, ptr, i64)

declare !qc.return_types !83 i32 @isatty(i32)

declare !qc.return_types !83 i32 @ttyslot()

declare !qc.return_types !83 i32 @link(ptr, ptr)

declare !qc.return_types !83 i32 @linkat(i32, ptr, i32, ptr, i32)

declare !qc.return_types !83 i32 @symlink(ptr, ptr)

declare !qc.return_types !1517 i64 @readlink(ptr, ptr, i64)

declare !qc.return_types !83 i32 @symlinkat(ptr, i32, ptr)

declare !qc.return_types !1517 i64 @readlinkat(i32, ptr, ptr, i64)

declare !qc.return_types !83 i32 @unlink(ptr)

declare !qc.return_types !83 i32 @unlinkat(i32, ptr, i32)

declare !qc.return_types !83 i32 @rmdir(ptr)

declare !qc.return_types !1522 i32 @tcgetpgrp(i32)

declare !qc.return_types !83 i32 @tcsetpgrp(i32, i32)

declare !qc.return_types !24 ptr @getlogin()

declare !qc.return_types !83 i32 @getlogin_r(ptr, i64)

declare !qc.return_types !83 i32 @setlogin(ptr)

declare !qc.return_types !83 i32 @getopt(i32, ptr, ptr)

declare !qc.return_types !83 i32 @gethostname(ptr, i64)

declare !qc.return_types !83 i32 @sethostname(ptr, i64)

declare !qc.return_types !83 i32 @sethostid(i64)

declare !qc.return_types !83 i32 @getdomainname(ptr, i64)

declare !qc.return_types !83 i32 @setdomainname(ptr, i64)

declare !qc.return_types !83 i32 @vhangup()

declare !qc.return_types !83 i32 @revoke(ptr)

declare !qc.return_types !83 i32 @profil(ptr, i64, i64, i32)

declare !qc.return_types !83 i32 @acct(ptr)

declare !qc.return_types !24 ptr @getusershell()

declare !qc.return_types !23 void @endusershell()

declare !qc.return_types !23 void @setusershell()

declare !qc.return_types !83 i32 @daemon(i32, i32)

declare !qc.return_types !83 i32 @chroot(ptr)

declare !qc.return_types !24 ptr @getpass(ptr)

declare !qc.return_types !83 i32 @fsync(i32)

declare !qc.return_types !1520 i64 @gethostid()

declare !qc.return_types !23 void @sync()

declare !qc.return_types !83 i32 @getpagesize()

declare !qc.return_types !83 i32 @getdtablesize()

declare !qc.return_types !83 i32 @truncate(ptr, i64)

declare !qc.return_types !83 i32 @ftruncate(i32, i64)

declare !qc.return_types !83 i32 @brk(ptr)

declare !qc.return_types !1525 ptr @sbrk(i64)

declare !qc.return_types !1520 i64 @syscall(i64, ...)

declare !qc.return_types !83 i32 @lockf(i32, i32, i64)

declare !qc.return_types !83 i32 @fdatasync(i32)

declare !qc.return_types !24 ptr @crypt(ptr, ptr)

declare !qc.return_types !83 i32 @getentropy(ptr, i64)

declare !qc.return_types !1526 ptr @__sysv_signal(i32, ptr)

declare !qc.return_types !1526 ptr @signal(i32, ptr)

declare !qc.return_types !83 i32 @kill(i32, i32)

declare !qc.return_types !83 i32 @killpg(i32, i32)

declare !qc.return_types !83 i32 @raise(i32)

declare !qc.return_types !1526 ptr @ssignal(i32, ptr)

declare !qc.return_types !83 i32 @gsignal(i32)

declare !qc.return_types !23 void @psignal(i32, ptr)

declare !qc.return_types !23 void @psiginfo(ptr, ptr)

declare !qc.return_types !83 i32 @sigblock(i32)

declare !qc.return_types !83 i32 @sigsetmask(i32)

declare !qc.return_types !83 i32 @siggetmask()

declare !qc.return_types !83 i32 @sigemptyset(ptr)

declare !qc.return_types !83 i32 @sigfillset(ptr)

declare !qc.return_types !83 i32 @sigaddset(ptr, i32)

declare !qc.return_types !83 i32 @sigdelset(ptr, i32)

declare !qc.return_types !83 i32 @sigismember(ptr, i32)

declare !qc.return_types !83 i32 @sigprocmask(i32, ptr, ptr)

declare !qc.return_types !83 i32 @sigsuspend(ptr)

declare !qc.return_types !83 i32 @sigaction(i32, ptr, ptr)

declare !qc.return_types !83 i32 @sigpending(ptr)

declare !qc.return_types !83 i32 @sigwait(ptr, ptr)

declare !qc.return_types !83 i32 @sigwaitinfo(ptr, ptr)

declare !qc.return_types !83 i32 @sigtimedwait(ptr, ptr, ptr)

declare !qc.return_types !83 i32 @sigqueue(i32, i32, %sigval)

declare !qc.return_types !83 i32 @sigreturn(ptr)

declare !qc.return_types !83 i32 @siginterrupt(i32, i32)

declare !qc.return_types !83 i32 @sigaltstack(ptr, ptr)

declare !qc.return_types !83 i32 @sigstack(ptr, ptr)

declare !qc.return_types !83 i32 @pthread_sigmask(i32, ptr, ptr)

declare !qc.return_types !83 i32 @pthread_kill(i64, i32)

declare !qc.return_types !83 i32 @__libc_current_sigrtmin()

declare !qc.return_types !83 i32 @__libc_current_sigrtmax()

declare !qc.return_types !1522 i32 @wait(ptr)

declare !qc.return_types !1522 i32 @waitpid(i32, ptr, i32)

declare !qc.return_types !83 i32 @waitid(%idtype_t, i32, ptr, i32)

declare !qc.return_types !1522 i32 @wait3(ptr, i32, ptr)

declare !qc.return_types !1522 i32 @wait4(i32, ptr, i32, ptr)

declare !qc.return_types !1527 i64 @clock()

declare !qc.return_types !1528 i64 @time(ptr)

declare !qc.return_types !1529 double @difftime(i64, i64)

declare !qc.return_types !1528 i64 @mktime(ptr)

declare !qc.return_types !1521 i64 @strftime(ptr, i64, ptr, ptr)

declare !qc.return_types !1521 i64 @strftime_l(ptr, i64, ptr, ptr, ptr)

declare !qc.return_types !1530 ptr @gmtime(ptr)

declare !qc.return_types !1530 ptr @localtime(ptr)

declare !qc.return_types !1530 ptr @gmtime_r(ptr, ptr)

declare !qc.return_types !1530 ptr @localtime_r(ptr, ptr)

declare !qc.return_types !24 ptr @asctime(ptr)

declare !qc.return_types !24 ptr @ctime(ptr)

declare !qc.return_types !24 ptr @asctime_r(ptr, ptr)

declare !qc.return_types !24 ptr @ctime_r(ptr, ptr)

declare !qc.return_types !23 void @tzset()

declare !qc.return_types !1528 i64 @timegm(ptr)

declare !qc.return_types !1528 i64 @timelocal(ptr)

declare !qc.return_types !83 i32 @dysize(i32)

declare !qc.return_types !83 i32 @nanosleep(ptr, ptr)

declare !qc.return_types !83 i32 @clock_getres(i32, ptr)

declare !qc.return_types !83 i32 @clock_gettime(i32, ptr)

declare !qc.return_types !83 i32 @clock_settime(i32, ptr)

declare !qc.return_types !83 i32 @clock_nanosleep(i32, i32, ptr, ptr)

declare !qc.return_types !83 i32 @clock_getcpuclockid(i32, ptr)

declare !qc.return_types !83 i32 @timer_create(i32, ptr, ptr)

declare !qc.return_types !83 i32 @timer_delete(ptr)

declare !qc.return_types !83 i32 @timer_settime(ptr, i32, ptr, ptr)

declare !qc.return_types !83 i32 @timer_gettime(ptr, ptr)

declare !qc.return_types !83 i32 @timer_getoverrun(ptr)

declare !qc.return_types !83 i32 @timespec_get(ptr, i32)

declare !qc.return_types !1525 ptr @memcpy(ptr, ptr, i64)

declare !qc.return_types !1525 ptr @memmove(ptr, ptr, i64)

declare !qc.return_types !1525 ptr @memccpy(ptr, ptr, i32, i64)

declare !qc.return_types !1525 ptr @memset(ptr, i32, i64)

declare !qc.return_types !1525 ptr @memset_explicit(ptr, i32, i64)

declare !qc.return_types !83 i32 @memcmp(ptr, ptr, i64)

declare !qc.return_types !83 i32 @__memcmpeq(ptr, ptr, i64)

declare !qc.return_types !1525 ptr @memchr(ptr, i32, i64)

declare !qc.return_types !24 ptr @strcpy(ptr, ptr)

declare !qc.return_types !24 ptr @strncpy(ptr, ptr, i64)

declare !qc.return_types !24 ptr @strcat(ptr, ptr)

declare !qc.return_types !24 ptr @strncat(ptr, ptr, i64)

declare !qc.return_types !83 i32 @strcmp(ptr, ptr)

declare !qc.return_types !83 i32 @strncmp(ptr, ptr, i64)

declare !qc.return_types !83 i32 @strcoll(ptr, ptr)

declare !qc.return_types !27 i64 @strxfrm(ptr, ptr, i64)

declare !qc.return_types !83 i32 @strcoll_l(ptr, ptr, ptr)

declare !qc.return_types !1521 i64 @strxfrm_l(ptr, ptr, i64, ptr)

declare !qc.return_types !24 ptr @strdup(ptr)

declare !qc.return_types !24 ptr @strndup(ptr, i64)

declare !qc.return_types !24 ptr @strchr(ptr, i32)

declare !qc.return_types !24 ptr @strrchr(ptr, i32)

declare !qc.return_types !24 ptr @strchrnul(ptr, i32)

declare !qc.return_types !27 i64 @strcspn(ptr, ptr)

declare !qc.return_types !27 i64 @strspn(ptr, ptr)

declare !qc.return_types !24 ptr @strpbrk(ptr, ptr)

declare !qc.return_types !24 ptr @strstr(ptr, ptr)

declare !qc.return_types !24 ptr @strtok(ptr, ptr)

declare !qc.return_types !24 ptr @__strtok_r(ptr, ptr, ptr)

declare !qc.return_types !24 ptr @strtok_r(ptr, ptr, ptr)

declare !qc.return_types !24 ptr @strcasestr(ptr, ptr)

declare !qc.return_types !1525 ptr @memmem(ptr, i64, ptr, i64)

declare !qc.return_types !1525 ptr @__mempcpy(ptr, ptr, i64)

declare !qc.return_types !1525 ptr @mempcpy(ptr, ptr, i64)

declare !qc.return_types !1521 i64 @strnlen(ptr, i64)

declare !qc.return_types !24 ptr @strerror(i32)

declare !qc.return_types !83 i32 @strerror_r(i32, ptr, i64)

declare !qc.return_types !24 ptr @strerror_l(i32, ptr)

declare !qc.return_types !83 i32 @bcmp(ptr, ptr, i64)

declare !qc.return_types !23 void @bcopy(ptr, ptr, i64)

declare !qc.return_types !23 void @bzero(ptr, i64)

declare !qc.return_types !24 ptr @index(ptr, i32)

declare !qc.return_types !24 ptr @rindex(ptr, i32)

declare !qc.return_types !83 i32 @ffs(i32)

declare !qc.return_types !83 i32 @ffsl(i64)

declare !qc.return_types !83 i32 @ffsll(i64)

declare !qc.return_types !83 i32 @strcasecmp(ptr, ptr)

declare !qc.return_types !83 i32 @strncasecmp(ptr, ptr, i64)

declare !qc.return_types !83 i32 @strcasecmp_l(ptr, ptr, ptr)

declare !qc.return_types !83 i32 @strncasecmp_l(ptr, ptr, i64, ptr)

declare !qc.return_types !23 void @explicit_bzero(ptr, i64)

declare !qc.return_types !24 ptr @strsep(ptr, ptr)

declare !qc.return_types !24 ptr @strsignal(i32)

declare !qc.return_types !24 ptr @__stpcpy(ptr, ptr)

declare !qc.return_types !24 ptr @stpcpy(ptr, ptr)

declare !qc.return_types !24 ptr @__stpncpy(ptr, ptr, i64)

declare !qc.return_types !24 ptr @stpncpy(ptr, ptr, i64)

declare !qc.return_types !27 i64 @strlcpy(ptr, ptr, i64)

declare !qc.return_types !27 i64 @strlcat(ptr, ptr, i64)

define weak_odr i64 @"CQB::Engine::nowMs"() !dbg !1531 !qc.return_types !1520 {
entry:
  %ts = alloca %timespec, align 8
  store %timespec zeroinitializer, ptr %ts, align 8, !dbg !1532
    #dbg_declare(ptr %ts, !1533, !DIExpression(), !1532)
  store %timespec zeroinitializer, ptr %ts, align 8, !dbg !1532
  %ts1 = load %timespec, ptr %ts, align 8, !dbg !1538
  %calltmp = call i32 @clock_gettime(i32 1, ptr %ts), !dbg !1538
  %tv_sec_ptr = getelementptr inbounds nuw %timespec, ptr %ts, i32 0, i32 0, !dbg !1539
  %tv_sec = load i64, ptr %tv_sec_ptr, align 8, !dbg !1539
  %mul = mul i64 %tv_sec, 1000, !dbg !1539
  %tv_nsec_ptr = getelementptr inbounds nuw %timespec, ptr %ts, i32 0, i32 1, !dbg !1539
  %tv_nsec = load i64, ptr %tv_nsec_ptr, align 8, !dbg !1539
  %sdiv = sdiv i64 %tv_nsec, 1000000, !dbg !1539
  %add = add i64 %mul, %sdiv, !dbg !1539
  ret i64 %add, !dbg !1539
}

define weak_odr i1 @"CQB::Engine::isProgressLine"(ptr %s, i32 %start) !dbg !1540 !qc.return_types !29 {
entry:
  %"CQB::Engine::c" = alloca i8, align 1
  %"CQB::Engine::j" = alloca i32, align 4
  %start2 = alloca i32, align 4
  %s1 = alloca ptr, align 8
    #dbg_value(ptr %s, !1542, !DIExpression(), !1544)
  store ptr null, ptr %s1, align 8, !dbg !1544
  store ptr %s, ptr %s1, align 8, !dbg !1544
    #dbg_value(i32 %start, !1543, !DIExpression(), !1544)
  store i32 0, ptr %start2, align 4, !dbg !1544
  store i32 %start, ptr %start2, align 4, !dbg !1544
  %start3 = load i32, ptr %start2, align 4, !dbg !1545
  %s4 = load ptr, ptr %s1, align 8, !dbg !1545
  %ptr_arr_addr = getelementptr i8, ptr %s4, i32 %start3, !dbg !1545
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1, !dbg !1545
  %icmpne = icmp ne i8 %ptr_arr_val, 91, !dbg !1545
  br i1 %icmpne, label %then, label %ifcont, !dbg !1545

then:                                             ; preds = %entry
  ret i1 false, !dbg !1545

ifcont:                                           ; preds = %entry
  store i32 0, ptr %"CQB::Engine::j", align 4, !dbg !1546
    #dbg_declare(ptr %"CQB::Engine::j", !1547, !DIExpression(), !1546)
  %start5 = load i32, ptr %start2, align 4, !dbg !1546
  %add = add i32 %start5, 1, !dbg !1546
  store i32 %add, ptr %"CQB::Engine::j", align 4, !dbg !1546
  br label %while.cond, !dbg !1548

while.cond:                                       ; preds = %ifcont26, %ifcont
  %j = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1548
  %s6 = load ptr, ptr %s1, align 8, !dbg !1548
  %ptr_arr_addr7 = getelementptr i8, ptr %s6, i32 %j, !dbg !1548
  %ptr_arr_val8 = load i8, ptr %ptr_arr_addr7, align 1, !dbg !1548
  %icmpne9 = icmp ne i8 %ptr_arr_val8, 93, !dbg !1548
  br i1 %icmpne9, label %while.body, label %while.end, !dbg !1548

while.body:                                       ; preds = %while.cond
  store i8 0, ptr %"CQB::Engine::c", align 1, !dbg !1549
    #dbg_declare(ptr %"CQB::Engine::c", !1550, !DIExpression(), !1549)
  %j10 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1549
  %s11 = load ptr, ptr %s1, align 8, !dbg !1549
  %ptr_arr_addr12 = getelementptr i8, ptr %s11, i32 %j10, !dbg !1549
  %ptr_arr_val13 = load i8, ptr %ptr_arr_addr12, align 1, !dbg !1549
  store i8 %ptr_arr_val13, ptr %"CQB::Engine::c", align 1, !dbg !1549
  %c = load i8, ptr %"CQB::Engine::c", align 1, !dbg !1551
  %icmpeq = icmp eq i8 %c, 0, !dbg !1551
  br i1 %icmpeq, label %or.end, label %or.rhs, !dbg !1551

while.end:                                        ; preds = %while.cond
  ret i1 true, !dbg !1552

or.rhs:                                           ; preds = %while.body
  %c14 = load i8, ptr %"CQB::Engine::c", align 1, !dbg !1551
  %icmpeq15 = icmp eq i8 %c14, 10, !dbg !1551
  br label %or.end, !dbg !1551

or.end:                                           ; preds = %or.rhs, %while.body
  %or = phi i1 [ true, %while.body ], [ %icmpeq15, %or.rhs ], !dbg !1551
  br i1 %or, label %then16, label %ifcont17, !dbg !1551

then16:                                           ; preds = %or.end
  ret i1 false, !dbg !1551

ifcont17:                                         ; preds = %or.end
  %c18 = load i8, ptr %"CQB::Engine::c", align 1, !dbg !1553
  %icmpge = icmp sge i8 %c18, 65, !dbg !1553
  br i1 %icmpge, label %and.rhs, label %and.end, !dbg !1553

and.rhs:                                          ; preds = %ifcont17
  %c19 = load i8, ptr %"CQB::Engine::c", align 1, !dbg !1553
  %icmple = icmp sle i8 %c19, 90, !dbg !1553
  br label %and.end, !dbg !1553

and.end:                                          ; preds = %and.rhs, %ifcont17
  %and = phi i1 [ false, %ifcont17 ], [ %icmple, %and.rhs ], !dbg !1553
  br i1 %and, label %or.end21, label %or.rhs20, !dbg !1553

or.rhs20:                                         ; preds = %and.end
  %c22 = load i8, ptr %"CQB::Engine::c", align 1, !dbg !1553
  %icmpeq23 = icmp eq i8 %c22, 32, !dbg !1553
  br label %or.end21, !dbg !1553

or.end21:                                         ; preds = %or.rhs20, %and.end
  %or24 = phi i1 [ true, %and.end ], [ %icmpeq23, %or.rhs20 ], !dbg !1553
  %not = xor i1 %or24, true, !dbg !1553
  br i1 %not, label %then25, label %ifcont26, !dbg !1553

then25:                                           ; preds = %or.end21
  ret i1 false, !dbg !1553

ifcont26:                                         ; preds = %or.end21
  %inc_deref = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1554
  %inc = add i32 %inc_deref, 1, !dbg !1554
  store i32 %inc, ptr %"CQB::Engine::j", align 4, !dbg !1554
  br label %while.cond, !dbg !1554
}

define weak_odr i32 @"CQB::Engine::countDone"(ptr %s) !dbg !1555 !qc.return_types !83 {
entry:
  %"CQB::Engine::i" = alloca i32, align 4
  %"CQB::Engine::n" = alloca i32, align 4
  %s1 = alloca ptr, align 8
    #dbg_value(ptr %s, !1557, !DIExpression(), !1558)
  store ptr null, ptr %s1, align 8, !dbg !1558
  store ptr %s, ptr %s1, align 8, !dbg !1558
  store i32 0, ptr %"CQB::Engine::n", align 4, !dbg !1559
    #dbg_declare(ptr %"CQB::Engine::n", !1560, !DIExpression(), !1559)
  store i32 0, ptr %"CQB::Engine::n", align 4, !dbg !1559
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1561
    #dbg_declare(ptr %"CQB::Engine::i", !1562, !DIExpression(), !1561)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1561
  br label %while.cond, !dbg !1563

while.cond:                                       ; preds = %ifcont30, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1563
  %s2 = load ptr, ptr %s1, align 8, !dbg !1563
  %ptr_arr_addr = getelementptr i8, ptr %s2, i32 %i, !dbg !1563
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1, !dbg !1563
  %icmpne = icmp ne i8 %ptr_arr_val, 0, !dbg !1563
  br i1 %icmpne, label %while.body, label %while.end, !dbg !1563

while.body:                                       ; preds = %while.cond
  %i3 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1564
  %s4 = load ptr, ptr %s1, align 8, !dbg !1564
  %ptr_arr_addr5 = getelementptr i8, ptr %s4, i32 %i3, !dbg !1564
  %ptr_arr_val6 = load i8, ptr %ptr_arr_addr5, align 1, !dbg !1564
  %s7 = load ptr, ptr %s1, align 8, !dbg !1564
  %i8 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1564
  %lval_ptr_arr_addr = getelementptr i8, ptr %s7, i32 %i8, !dbg !1564
  %calltmp = call i32 @strncmp(ptr %lval_ptr_arr_addr, ptr @.str.42, i64 6), !dbg !1564
  %icmpeq = icmp eq i32 %calltmp, 0, !dbg !1564
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1564

while.end:                                        ; preds = %while.cond
  %n = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1565
  ret i32 %n, !dbg !1565

then:                                             ; preds = %while.body
  %inc_deref = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1564
  %inc = add i32 %inc_deref, 1, !dbg !1564
  store i32 %inc, ptr %"CQB::Engine::n", align 4, !dbg !1564
  br label %ifcont, !dbg !1564

ifcont:                                           ; preds = %then, %while.body
  br label %while.cond9, !dbg !1566

while.cond9:                                      ; preds = %while.body10, %ifcont
  %i12 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1566
  %s13 = load ptr, ptr %s1, align 8, !dbg !1566
  %ptr_arr_addr14 = getelementptr i8, ptr %s13, i32 %i12, !dbg !1566
  %ptr_arr_val15 = load i8, ptr %ptr_arr_addr14, align 1, !dbg !1566
  %icmpne16 = icmp ne i8 %ptr_arr_val15, 10, !dbg !1566
  br i1 %icmpne16, label %and.rhs, label %and.end, !dbg !1566

while.body10:                                     ; preds = %and.end
  %inc_deref22 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1566
  %inc23 = add i32 %inc_deref22, 1, !dbg !1566
  store i32 %inc23, ptr %"CQB::Engine::i", align 4, !dbg !1566
  br label %while.cond9, !dbg !1566

while.end11:                                      ; preds = %and.end
  %i24 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1567
  %s25 = load ptr, ptr %s1, align 8, !dbg !1567
  %ptr_arr_addr26 = getelementptr i8, ptr %s25, i32 %i24, !dbg !1567
  %ptr_arr_val27 = load i8, ptr %ptr_arr_addr26, align 1, !dbg !1567
  %icmpeq28 = icmp eq i8 %ptr_arr_val27, 10, !dbg !1567
  br i1 %icmpeq28, label %then29, label %ifcont30, !dbg !1567

and.rhs:                                          ; preds = %while.cond9
  %i17 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1566
  %s18 = load ptr, ptr %s1, align 8, !dbg !1566
  %ptr_arr_addr19 = getelementptr i8, ptr %s18, i32 %i17, !dbg !1566
  %ptr_arr_val20 = load i8, ptr %ptr_arr_addr19, align 1, !dbg !1566
  %icmpne21 = icmp ne i8 %ptr_arr_val20, 0, !dbg !1566
  br label %and.end, !dbg !1566

and.end:                                          ; preds = %and.rhs, %while.cond9
  %and = phi i1 [ false, %while.cond9 ], [ %icmpne21, %and.rhs ], !dbg !1566
  br i1 %and, label %while.body10, label %while.end11, !dbg !1566

then29:                                           ; preds = %while.end11
  %inc_deref31 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1567
  %inc32 = add i32 %inc_deref31, 1, !dbg !1567
  store i32 %inc32, ptr %"CQB::Engine::i", align 4, !dbg !1567
  br label %ifcont30, !dbg !1567

ifcont30:                                         ; preds = %then29, %while.end11
  br label %while.cond, !dbg !1567
}

define weak_odr void @"CQB::Engine::printWithoutProgress"(ptr %s) !dbg !1568 !qc.return_types !23 {
entry:
  %"CQB::Engine::len" = alloca i32, align 4
  %"CQB::Engine::start" = alloca i32, align 4
  %"CQB::Engine::i" = alloca i32, align 4
  %s1 = alloca ptr, align 8
    #dbg_value(ptr %s, !1570, !DIExpression(), !1571)
  store ptr null, ptr %s1, align 8, !dbg !1571
  store ptr %s, ptr %s1, align 8, !dbg !1571
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1572
    #dbg_declare(ptr %"CQB::Engine::i", !1573, !DIExpression(), !1572)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1572
  br label %while.cond, !dbg !1574

while.cond:                                       ; preds = %ifcont32, %entry
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1574
  %s2 = load ptr, ptr %s1, align 8, !dbg !1574
  %ptr_arr_addr = getelementptr i8, ptr %s2, i32 %i, !dbg !1574
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1, !dbg !1574
  %icmpne = icmp ne i8 %ptr_arr_val, 0, !dbg !1574
  br i1 %icmpne, label %while.body, label %while.end, !dbg !1574

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %"CQB::Engine::start", align 4, !dbg !1575
    #dbg_declare(ptr %"CQB::Engine::start", !1576, !DIExpression(), !1575)
  %i3 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1575
  store i32 %i3, ptr %"CQB::Engine::start", align 4, !dbg !1575
  br label %while.cond4, !dbg !1577

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1578

while.cond4:                                      ; preds = %while.body5, %while.body
  %i7 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1577
  %s8 = load ptr, ptr %s1, align 8, !dbg !1577
  %ptr_arr_addr9 = getelementptr i8, ptr %s8, i32 %i7, !dbg !1577
  %ptr_arr_val10 = load i8, ptr %ptr_arr_addr9, align 1, !dbg !1577
  %icmpne11 = icmp ne i8 %ptr_arr_val10, 10, !dbg !1577
  br i1 %icmpne11, label %and.rhs, label %and.end, !dbg !1577

while.body5:                                      ; preds = %and.end
  %inc_deref = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1577
  %inc = add i32 %inc_deref, 1, !dbg !1577
  store i32 %inc, ptr %"CQB::Engine::i", align 4, !dbg !1577
  br label %while.cond4, !dbg !1577

while.end6:                                       ; preds = %and.end
  store i32 0, ptr %"CQB::Engine::len", align 4, !dbg !1579
    #dbg_declare(ptr %"CQB::Engine::len", !1580, !DIExpression(), !1579)
  %i17 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1579
  %start = load i32, ptr %"CQB::Engine::start", align 4, !dbg !1579
  %sub = sub i32 %i17, %start, !dbg !1579
  store i32 %sub, ptr %"CQB::Engine::len", align 4, !dbg !1579
  %s18 = load ptr, ptr %s1, align 8, !dbg !1581
  %start19 = load i32, ptr %"CQB::Engine::start", align 4, !dbg !1581
  %calltmp = call i1 @"CQB::Engine::isProgressLine"(ptr %s18, i32 %start19), !dbg !1581
  %not = xor i1 %calltmp, true, !dbg !1581
  br i1 %not, label %then, label %ifcont, !dbg !1581

and.rhs:                                          ; preds = %while.cond4
  %i12 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1577
  %s13 = load ptr, ptr %s1, align 8, !dbg !1577
  %ptr_arr_addr14 = getelementptr i8, ptr %s13, i32 %i12, !dbg !1577
  %ptr_arr_val15 = load i8, ptr %ptr_arr_addr14, align 1, !dbg !1577
  %icmpne16 = icmp ne i8 %ptr_arr_val15, 0, !dbg !1577
  br label %and.end, !dbg !1577

and.end:                                          ; preds = %and.rhs, %while.cond4
  %and = phi i1 [ false, %while.cond4 ], [ %icmpne16, %and.rhs ], !dbg !1577
  br i1 %and, label %while.body5, label %while.end6, !dbg !1577

then:                                             ; preds = %while.end6
  %start20 = load i32, ptr %"CQB::Engine::start", align 4, !dbg !1582
  %s21 = load ptr, ptr %s1, align 8, !dbg !1582
  %ptr_arr_addr22 = getelementptr i8, ptr %s21, i32 %start20, !dbg !1582
  %ptr_arr_val23 = load i8, ptr %ptr_arr_addr22, align 1, !dbg !1582
  %s24 = load ptr, ptr %s1, align 8, !dbg !1582
  %start25 = load i32, ptr %"CQB::Engine::start", align 4, !dbg !1582
  %lval_ptr_arr_addr = getelementptr i8, ptr %s24, i32 %start25, !dbg !1582
  %len = load i32, ptr %"CQB::Engine::len", align 4, !dbg !1582
  %arg_sext = sext i32 %len to i64, !dbg !1582
  %builtin_call = call i64 @qc_write_sized(i32 1, ptr %lval_ptr_arr_addr, i64 %arg_sext), !dbg !1582
  %builtin_call26 = call i64 @qc_write_sized(i32 1, ptr @.str.43, i64 1), !dbg !1583
  br label %ifcont, !dbg !1583

ifcont:                                           ; preds = %then, %while.end6
  %i27 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1578
  %s28 = load ptr, ptr %s1, align 8, !dbg !1578
  %ptr_arr_addr29 = getelementptr i8, ptr %s28, i32 %i27, !dbg !1578
  %ptr_arr_val30 = load i8, ptr %ptr_arr_addr29, align 1, !dbg !1578
  %icmpeq = icmp eq i8 %ptr_arr_val30, 10, !dbg !1578
  br i1 %icmpeq, label %then31, label %ifcont32, !dbg !1578

then31:                                           ; preds = %ifcont
  %inc_deref33 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1578
  %inc34 = add i32 %inc_deref33, 1, !dbg !1578
  store i32 %inc34, ptr %"CQB::Engine::i", align 4, !dbg !1578
  br label %ifcont32, !dbg !1578

ifcont32:                                         ; preds = %then31, %ifcont
  br label %while.cond, !dbg !1578
}

define weak_odr i1 @"CQB::Engine::exited"(i32 %status) !dbg !1584 !qc.return_types !29 {
entry:
  %status1 = alloca i32, align 4
    #dbg_value(i32 %status, !1586, !DIExpression(), !1587)
  store i32 0, ptr %status1, align 4, !dbg !1587
  store i32 %status, ptr %status1, align 4, !dbg !1587
  %status2 = load i32, ptr %status1, align 4, !dbg !1588
  %andtmp = and i32 %status2, 127, !dbg !1588
  %icmpeq = icmp eq i32 %andtmp, 0, !dbg !1588
  ret i1 %icmpeq, !dbg !1588
}

define weak_odr i32 @"CQB::Engine::exitStatus"(i32 %status) !dbg !1589 !qc.return_types !83 {
entry:
  %status1 = alloca i32, align 4
    #dbg_value(i32 %status, !1591, !DIExpression(), !1592)
  store i32 0, ptr %status1, align 4, !dbg !1592
  store i32 %status, ptr %status1, align 4, !dbg !1592
  %status2 = load i32, ptr %status1, align 4, !dbg !1593
  %ashrtmp = ashr i32 %status2, 8, !dbg !1593
  %andtmp = and i32 %ashrtmp, 255, !dbg !1593
  ret i32 %andtmp, !dbg !1593
}

define weak_odr i1 @"CQB::Engine::signaled"(i32 %status) !dbg !1594 !qc.return_types !29 {
entry:
  %"CQB::Engine::sig" = alloca i32, align 4
  %status1 = alloca i32, align 4
    #dbg_value(i32 %status, !1596, !DIExpression(), !1597)
  store i32 0, ptr %status1, align 4, !dbg !1597
  store i32 %status, ptr %status1, align 4, !dbg !1597
  store i32 0, ptr %"CQB::Engine::sig", align 4, !dbg !1598
    #dbg_declare(ptr %"CQB::Engine::sig", !1599, !DIExpression(), !1598)
  %status2 = load i32, ptr %status1, align 4, !dbg !1598
  %andtmp = and i32 %status2, 127, !dbg !1598
  store i32 %andtmp, ptr %"CQB::Engine::sig", align 4, !dbg !1598
  %sig = load i32, ptr %"CQB::Engine::sig", align 4, !dbg !1600
  %icmpne = icmp ne i32 %sig, 0, !dbg !1600
  br i1 %icmpne, label %and.rhs, label %and.end, !dbg !1600

and.rhs:                                          ; preds = %entry
  %sig3 = load i32, ptr %"CQB::Engine::sig", align 4, !dbg !1600
  %icmpne4 = icmp ne i32 %sig3, 127, !dbg !1600
  br label %and.end, !dbg !1600

and.end:                                          ; preds = %and.rhs, %entry
  %and = phi i1 [ false, %entry ], [ %icmpne4, %and.rhs ], !dbg !1600
  ret i1 %and, !dbg !1600
}

define weak_odr i32 @"CQB::Engine::termSignal"(i32 %status) !dbg !1601 !qc.return_types !83 {
entry:
  %status1 = alloca i32, align 4
    #dbg_value(i32 %status, !1603, !DIExpression(), !1604)
  store i32 0, ptr %status1, align 4, !dbg !1604
  store i32 %status, ptr %status1, align 4, !dbg !1604
  %status2 = load i32, ptr %status1, align 4, !dbg !1605
  %andtmp = and i32 %status2, 127, !dbg !1605
  ret i32 %andtmp, !dbg !1605
}

define weak_odr i32 @"CQB::Engine::decodeStatus"(i32 %status) !dbg !1606 !qc.return_types !83 {
entry:
  %status1 = alloca i32, align 4
    #dbg_value(i32 %status, !1608, !DIExpression(), !1609)
  store i32 0, ptr %status1, align 4, !dbg !1609
  store i32 %status, ptr %status1, align 4, !dbg !1609
  %status2 = load i32, ptr %status1, align 4, !dbg !1610
  %calltmp = call i1 @"CQB::Engine::exited"(i32 %status2), !dbg !1610
  br i1 %calltmp, label %then, label %ifcont, !dbg !1610

then:                                             ; preds = %entry
  %status3 = load i32, ptr %status1, align 4, !dbg !1610
  %calltmp4 = call i32 @"CQB::Engine::exitStatus"(i32 %status3), !dbg !1610
  ret i32 %calltmp4, !dbg !1610

ifcont:                                           ; preds = %entry
  %status5 = load i32, ptr %status1, align 4, !dbg !1611
  %calltmp6 = call i1 @"CQB::Engine::signaled"(i32 %status5), !dbg !1611
  br i1 %calltmp6, label %then7, label %ifcont8, !dbg !1611

then7:                                            ; preds = %ifcont
  %status9 = load i32, ptr %status1, align 4, !dbg !1611
  %calltmp10 = call i32 @"CQB::Engine::termSignal"(i32 %status9), !dbg !1611
  %add = add i32 128, %calltmp10, !dbg !1611
  ret i32 %add, !dbg !1611

ifcont8:                                          ; preds = %ifcont
  ret i32 -1, !dbg !1612
}

define weak_odr %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %args, ptr %label, i1 %tty) !dbg !1613 !qc.return_types !1618 {
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
    #dbg_value(%"Vector::Vec<char*>" %args, !1615, !DIExpression(), !1619)
  store %"Vector::Vec<char*>" zeroinitializer, ptr %args1, align 8, !dbg !1619
  store %"Vector::Vec<char*>" %args, ptr %args1, align 8, !dbg !1619
    #dbg_value(ptr %label, !1616, !DIExpression(), !1619)
  store ptr null, ptr %label2, align 8, !dbg !1619
  store ptr %label, ptr %label2, align 8, !dbg !1619
    #dbg_value(i1 %tty, !1617, !DIExpression(), !1619)
  store i1 false, ptr %tty3, align 1, !dbg !1619
  store i1 %tty, ptr %tty3, align 1, !dbg !1619
  store [2 x i32] zeroinitializer, ptr %"CQB::Engine::fds", align 4, !dbg !1620
    #dbg_declare(ptr %"CQB::Engine::fds", !1621, !DIExpression(), !1620)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::fds", i8 0, i64 8, i1 false), !dbg !1620
  %decayptr = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1625
  %calltmp = call i32 @pipe(ptr %decayptr), !dbg !1625
  %icmpne = icmp ne i32 %calltmp, 0, !dbg !1625
  br i1 %icmpne, label %then, label %ifcont, !dbg !1625

then:                                             ; preds = %entry
  ret %"CQB::Engine::RunResult" { i32 -1, ptr @.str.44 }, !dbg !1625

ifcont:                                           ; preds = %entry
  call void @llvm.memset.inline.p0.i64(ptr align 8 %fa, i8 0, i64 80, i1 false), !dbg !1626
    #dbg_declare(ptr %fa, !1627, !DIExpression(), !1626)
  store %posix_spawn_file_actions_t zeroinitializer, ptr %fa, align 8, !dbg !1626
  %fa4 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1639
  %calltmp5 = call i32 @posix_spawn_file_actions_init(ptr %fa), !dbg !1639
  %fa6 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1640
  %arr_elem_ptr = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1, !dbg !1640
  %arr_elem = load i32, ptr %arr_elem_ptr, align 4, !dbg !1640
  %calltmp7 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %arr_elem, i32 1), !dbg !1640
  %fa8 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1641
  %arr_elem_ptr9 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1, !dbg !1641
  %arr_elem10 = load i32, ptr %arr_elem_ptr9, align 4, !dbg !1641
  %calltmp11 = call i32 @posix_spawn_file_actions_adddup2(ptr %fa, i32 %arr_elem10, i32 2), !dbg !1641
  %fa12 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1642
  %arr_elem_ptr13 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1642
  %arr_elem14 = load i32, ptr %arr_elem_ptr13, align 4, !dbg !1642
  %calltmp15 = call i32 @posix_spawn_file_actions_addclose(ptr %fa, i32 %arr_elem14), !dbg !1642
  %fa16 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1643
  %arr_elem_ptr17 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1, !dbg !1643
  %arr_elem18 = load i32, ptr %arr_elem_ptr17, align 4, !dbg !1643
  %calltmp19 = call i32 @posix_spawn_file_actions_addclose(ptr %fa, i32 %arr_elem18), !dbg !1643
  call void @"Vector::Vec<char*>_push_T"(ptr %args1, ptr null), !dbg !1644
  store ptr null, ptr %"CQB::Engine::argv", align 8, !dbg !1645
    #dbg_declare(ptr %"CQB::Engine::argv", !1646, !DIExpression(), !1645)
  %0 = getelementptr inbounds nuw %"Vector::Vec<char*>", ptr %args1, i32 0, i32 0, !dbg !1645
  %data = load ptr, ptr %0, align 8, !dbg !1645
  store ptr %data, ptr %"CQB::Engine::argv", align 8, !dbg !1645
  store i32 0, ptr %"CQB::Engine::pid", align 4, !dbg !1647
    #dbg_declare(ptr %"CQB::Engine::pid", !1648, !DIExpression(), !1647)
  store i32 0, ptr %"CQB::Engine::pid", align 4, !dbg !1647
  store i32 0, ptr %"CQB::Engine::rc", align 4, !dbg !1649
    #dbg_declare(ptr %"CQB::Engine::rc", !1650, !DIExpression(), !1649)
  %pid = load i32, ptr %"CQB::Engine::pid", align 4, !dbg !1649
  %argv = load ptr, ptr %"CQB::Engine::argv", align 8, !dbg !1649
  %ptr_arr_addr = getelementptr ptr, ptr %argv, i32 0, !dbg !1649
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8, !dbg !1649
  %fa20 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1649
  %argv21 = load ptr, ptr %"CQB::Engine::argv", align 8, !dbg !1649
  %__environ = load ptr, ptr @__environ, align 8, !dbg !1649
  %calltmp22 = call i32 @posix_spawnp(ptr %"CQB::Engine::pid", ptr %ptr_arr_val, ptr %fa, ptr null, ptr %argv21, ptr %__environ), !dbg !1649
  store i32 %calltmp22, ptr %"CQB::Engine::rc", align 4, !dbg !1649
  %fa23 = load %posix_spawn_file_actions_t, ptr %fa, align 8, !dbg !1651
  %calltmp24 = call i32 @posix_spawn_file_actions_destroy(ptr %fa), !dbg !1651
  %arr_elem_ptr25 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 1, !dbg !1652
  %arr_elem26 = load i32, ptr %arr_elem_ptr25, align 4, !dbg !1652
  call void @qc_close(i32 %arr_elem26), !dbg !1652
  %rc = load i32, ptr %"CQB::Engine::rc", align 4, !dbg !1653
  %icmpne27 = icmp ne i32 %rc, 0, !dbg !1653
  br i1 %icmpne27, label %then28, label %ifcont29, !dbg !1653

then28:                                           ; preds = %ifcont
  %arr_elem_ptr30 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1653
  %arr_elem31 = load i32, ptr %arr_elem_ptr30, align 4, !dbg !1653
  call void @qc_close(i32 %arr_elem31), !dbg !1653
  ret %"CQB::Engine::RunResult" { i32 -1, ptr @.str.45 }, !dbg !1653

ifcont29:                                         ; preds = %ifcont
  store %"String::Str" zeroinitializer, ptr %outs, align 8, !dbg !1654
    #dbg_declare(ptr %outs, !1655, !DIExpression(), !1654)
  call void @"String::Str_Str_char*"(ptr %outs, ptr @.str.46), !dbg !1654
  call void @llvm.memset.inline.p0.i64(ptr align 1 %"CQB::Engine::buf", i8 0, i64 4096, i1 false), !dbg !1656
    #dbg_declare(ptr %"CQB::Engine::buf", !1657, !DIExpression(), !1656)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::buf", i8 0, i64 4096, i1 false), !dbg !1656
  call void @llvm.memset.inline.p0.i64(ptr align 1 %"CQB::Engine::line", i8 0, i64 512, i1 false), !dbg !1661
    #dbg_declare(ptr %"CQB::Engine::line", !1662, !DIExpression(), !1661)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::line", i8 0, i64 512, i1 false), !dbg !1661
  store [32 x i8] zeroinitializer, ptr %"CQB::Engine::phase", align 1, !dbg !1666
    #dbg_declare(ptr %"CQB::Engine::phase", !1667, !DIExpression(), !1666)
  call void @llvm.memset.inline.p0.i64(ptr %"CQB::Engine::phase", i8 0, i64 32, i1 false), !dbg !1666
  store i32 0, ptr %"CQB::Engine::lineLen", align 4, !dbg !1671
    #dbg_declare(ptr %"CQB::Engine::lineLen", !1672, !DIExpression(), !1671)
  store i32 0, ptr %"CQB::Engine::lineLen", align 4, !dbg !1671
  store i32 0, ptr %"CQB::Engine::steps", align 4, !dbg !1673
    #dbg_declare(ptr %"CQB::Engine::steps", !1674, !DIExpression(), !1673)
  store i32 0, ptr %"CQB::Engine::steps", align 4, !dbg !1673
  store i64 0, ptr %"CQB::Engine::phaseStart", align 8, !dbg !1675
    #dbg_declare(ptr %"CQB::Engine::phaseStart", !1676, !DIExpression(), !1675)
  %calltmp32 = call i64 @"CQB::Engine::nowMs"(), !dbg !1675
  store i64 %calltmp32, ptr %"CQB::Engine::phaseStart", align 8, !dbg !1675
  store i64 0, ptr %"CQB::Engine::lastStepMs", align 8, !dbg !1677
    #dbg_declare(ptr %"CQB::Engine::lastStepMs", !1678, !DIExpression(), !1677)
  store i64 0, ptr %"CQB::Engine::lastStepMs", align 8, !dbg !1677
  store i32 0, ptr %"CQB::Engine::n", align 4, !dbg !1679
    #dbg_declare(ptr %"CQB::Engine::n", !1680, !DIExpression(), !1679)
  %arr_elem_ptr33 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1679
  %arr_elem34 = load i32, ptr %arr_elem_ptr33, align 4, !dbg !1679
  %decayptr35 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0, !dbg !1679
  %builtin_call = call i64 @qc_read(i32 %arr_elem34, ptr %decayptr35, i64 4095), !dbg !1679
  %trunc = trunc i64 %builtin_call to i32, !dbg !1679
  store i32 %trunc, ptr %"CQB::Engine::n", align 4, !dbg !1679
  br label %while.cond, !dbg !1681

while.cond:                                       ; preds = %for.end, %ifcont29
  %n = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1681
  %icmpgt = icmp sgt i32 %n, 0, !dbg !1681
  br i1 %icmpgt, label %while.body, label %while.end, !dbg !1681

while.body:                                       ; preds = %while.cond
  %n36 = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1682
  %arr_elem_ptr37 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %n36, !dbg !1682
  store i8 0, ptr %arr_elem_ptr37, align 1, !dbg !1682
  store %"String::Str" zeroinitializer, ptr %s, align 8, !dbg !1683
    #dbg_declare(ptr %s, !1684, !DIExpression(), !1683)
  %arr_elem_ptr38 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0, !dbg !1683
  %arr_elem39 = load i8, ptr %arr_elem_ptr38, align 1, !dbg !1683
  %lval_arr_addr = getelementptr [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0, !dbg !1683
  call void @"String::Str_Str_char*"(ptr %s, ptr %lval_arr_addr), !dbg !1683
  %assign_lhs_val = load %"String::Str", ptr %outs, align 8, !dbg !1685
  %s40 = load %"String::Str", ptr %s, align 8, !dbg !1685
  %op_assign_tmp = call %"String::Str" @"String::Str_operator+=_Str"(ptr %outs, %"String::Str" %s40), !dbg !1685
  call void @"String::Str__destroy"(ptr %s), !dbg !1686
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1687
    #dbg_declare(ptr %"CQB::Engine::i", !1688, !DIExpression(), !1687)
  store i32 0, ptr %"CQB::Engine::i", align 4, !dbg !1687
  br label %for.cond, !dbg !1687

while.end:                                        ; preds = %while.cond
  %arr_elem_ptr113 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1689
  %arr_elem114 = load i32, ptr %arr_elem_ptr113, align 4, !dbg !1689
  call void @qc_close(i32 %arr_elem114), !dbg !1689
  store i32 0, ptr %"CQB::Engine::status", align 4, !dbg !1690
    #dbg_declare(ptr %"CQB::Engine::status", !1691, !DIExpression(), !1690)
  store i32 0, ptr %"CQB::Engine::status", align 4, !dbg !1690
  %pid115 = load i32, ptr %"CQB::Engine::pid", align 4, !dbg !1692
  %status = load i32, ptr %"CQB::Engine::status", align 4, !dbg !1692
  %calltmp116 = call i32 @waitpid(i32 %pid115, ptr %"CQB::Engine::status", i32 0), !dbg !1692
  %status117 = load i32, ptr %"CQB::Engine::status", align 4, !dbg !1693
  %calltmp118 = call i32 @"CQB::Engine::decodeStatus"(i32 %status117), !dbg !1693
  %1 = insertvalue %"CQB::Engine::RunResult" zeroinitializer, i32 %calltmp118, 0, !dbg !1693
  %c_str_result = call ptr @"String::Str_c_str"(ptr %outs), !dbg !1693
  %2 = insertvalue %"CQB::Engine::RunResult" %1, ptr %c_str_result, 1, !dbg !1693
  ret %"CQB::Engine::RunResult" %2, !dbg !1693

for.cond:                                         ; preds = %for.inc, %while.body
  %i = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1687
  %n41 = load i32, ptr %"CQB::Engine::n", align 4, !dbg !1687
  %icmplt = icmp slt i32 %i, %n41, !dbg !1687
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1687

for.body:                                         ; preds = %for.cond
  %i42 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1694
  %arr_elem_ptr43 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %i42, !dbg !1694
  %arr_elem44 = load i8, ptr %arr_elem_ptr43, align 1, !dbg !1694
  %icmpne45 = icmp ne i8 %arr_elem44, 10, !dbg !1694
  br i1 %icmpne45, label %then46, label %ifcont47, !dbg !1694

for.inc:                                          ; preds = %ifcont100, %then63, %ifcont50
  %inc_deref106 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1687
  %inc107 = add i32 %inc_deref106, 1, !dbg !1687
  store i32 %inc107, ptr %"CQB::Engine::i", align 4, !dbg !1687
  br label %for.cond, !dbg !1687

for.end:                                          ; preds = %for.cond
  %arr_elem_ptr108 = getelementptr inbounds [2 x i32], ptr %"CQB::Engine::fds", i32 0, i32 0, !dbg !1695
  %arr_elem109 = load i32, ptr %arr_elem_ptr108, align 4, !dbg !1695
  %decayptr110 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 0, !dbg !1695
  %builtin_call111 = call i64 @qc_read(i32 %arr_elem109, ptr %decayptr110, i64 4095), !dbg !1695
  %trunc112 = trunc i64 %builtin_call111 to i32, !dbg !1695
  store i32 %trunc112, ptr %"CQB::Engine::n", align 4, !dbg !1695
  br label %while.cond, !dbg !1695

then46:                                           ; preds = %for.body
  %lineLen = load i32, ptr %"CQB::Engine::lineLen", align 4, !dbg !1696
  %icmplt48 = icmp slt i32 %lineLen, 511, !dbg !1696
  br i1 %icmplt48, label %then49, label %ifcont50, !dbg !1696

ifcont47:                                         ; preds = %for.body
  %lineLen56 = load i32, ptr %"CQB::Engine::lineLen", align 4, !dbg !1697
  %arr_elem_ptr57 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %lineLen56, !dbg !1697
  store i8 0, ptr %arr_elem_ptr57, align 1, !dbg !1697
  store i32 0, ptr %"CQB::Engine::len", align 4, !dbg !1698
    #dbg_declare(ptr %"CQB::Engine::len", !1699, !DIExpression(), !1698)
  %lineLen58 = load i32, ptr %"CQB::Engine::lineLen", align 4, !dbg !1698
  store i32 %lineLen58, ptr %"CQB::Engine::len", align 4, !dbg !1698
  store i32 0, ptr %"CQB::Engine::lineLen", align 4, !dbg !1700
  %arr_elem_ptr59 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 0, !dbg !1701
  %arr_elem60 = load i8, ptr %arr_elem_ptr59, align 1, !dbg !1701
  %lval_arr_addr61 = getelementptr [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 0, !dbg !1701
  %calltmp62 = call i1 @"CQB::Engine::isProgressLine"(ptr %lval_arr_addr61, i32 0), !dbg !1701
  %not = xor i1 %calltmp62, true, !dbg !1701
  br i1 %not, label %then63, label %ifcont64, !dbg !1701

then49:                                           ; preds = %then46
  %lineLen51 = load i32, ptr %"CQB::Engine::lineLen", align 4, !dbg !1696
  %i52 = load i32, ptr %"CQB::Engine::i", align 4, !dbg !1696
  %arr_elem_ptr53 = getelementptr inbounds [4096 x i8], ptr %"CQB::Engine::buf", i32 0, i32 %i52, !dbg !1696
  %arr_elem54 = load i8, ptr %arr_elem_ptr53, align 1, !dbg !1696
  %arr_elem_ptr55 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %lineLen51, !dbg !1696
  store i8 %arr_elem54, ptr %arr_elem_ptr55, align 1, !dbg !1696
  %inc_deref = load i32, ptr %"CQB::Engine::lineLen", align 4, !dbg !1696
  %inc = add i32 %inc_deref, 1, !dbg !1696
  store i32 %inc, ptr %"CQB::Engine::lineLen", align 4, !dbg !1696
  br label %ifcont50, !dbg !1696

ifcont50:                                         ; preds = %then49, %then46
  br label %for.inc, !dbg !1702

then63:                                           ; preds = %ifcont47
  br label %for.inc, !dbg !1701

ifcont64:                                         ; preds = %ifcont47
  store i32 0, ptr %"CQB::Engine::p", align 4, !dbg !1703
    #dbg_declare(ptr %"CQB::Engine::p", !1704, !DIExpression(), !1703)
  store i32 0, ptr %"CQB::Engine::p", align 4, !dbg !1703
  store i32 0, ptr %"CQB::Engine::j", align 4, !dbg !1703
    #dbg_declare(ptr %"CQB::Engine::j", !1705, !DIExpression(), !1703)
  store i32 1, ptr %"CQB::Engine::j", align 4, !dbg !1703
  br label %while.cond65, !dbg !1706

while.cond65:                                     ; preds = %while.body66, %ifcont64
  %j = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1706
  %len = load i32, ptr %"CQB::Engine::len", align 4, !dbg !1706
  %icmplt68 = icmp slt i32 %j, %len, !dbg !1706
  br i1 %icmplt68, label %and.rhs, label %and.end, !dbg !1706

while.body66:                                     ; preds = %and.end74
  %p77 = load i32, ptr %"CQB::Engine::p", align 4, !dbg !1706
  %j78 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1706
  %arr_elem_ptr79 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %j78, !dbg !1706
  %arr_elem80 = load i8, ptr %arr_elem_ptr79, align 1, !dbg !1706
  %arr_elem_ptr81 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 %p77, !dbg !1706
  store i8 %arr_elem80, ptr %arr_elem_ptr81, align 1, !dbg !1706
  %inc_deref82 = load i32, ptr %"CQB::Engine::p", align 4, !dbg !1706
  %inc83 = add i32 %inc_deref82, 1, !dbg !1706
  store i32 %inc83, ptr %"CQB::Engine::p", align 4, !dbg !1706
  %inc_deref84 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1706
  %inc85 = add i32 %inc_deref84, 1, !dbg !1706
  store i32 %inc85, ptr %"CQB::Engine::j", align 4, !dbg !1706
  br label %while.cond65, !dbg !1706

while.end67:                                      ; preds = %and.end74
  %p86 = load i32, ptr %"CQB::Engine::p", align 4, !dbg !1707
  %arr_elem_ptr87 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 %p86, !dbg !1707
  store i8 0, ptr %arr_elem_ptr87, align 1, !dbg !1707
  %arr_elem_ptr88 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0, !dbg !1708
  %arr_elem89 = load i8, ptr %arr_elem_ptr88, align 1, !dbg !1708
  %lval_arr_addr90 = getelementptr [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0, !dbg !1708
  %calltmp91 = call i32 @strncmp(ptr %lval_arr_addr90, ptr @.str.47, i64 5), !dbg !1708
  %icmpeq = icmp eq i32 %calltmp91, 0, !dbg !1708
  br i1 %icmpeq, label %then92, label %else, !dbg !1708

and.rhs:                                          ; preds = %while.cond65
  %j69 = load i32, ptr %"CQB::Engine::j", align 4, !dbg !1706
  %arr_elem_ptr70 = getelementptr inbounds [512 x i8], ptr %"CQB::Engine::line", i32 0, i32 %j69, !dbg !1706
  %arr_elem71 = load i8, ptr %arr_elem_ptr70, align 1, !dbg !1706
  %icmpne72 = icmp ne i8 %arr_elem71, 93, !dbg !1706
  br label %and.end, !dbg !1706

and.end:                                          ; preds = %and.rhs, %while.cond65
  %and = phi i1 [ false, %while.cond65 ], [ %icmpne72, %and.rhs ], !dbg !1706
  br i1 %and, label %and.rhs73, label %and.end74, !dbg !1706

and.rhs73:                                        ; preds = %and.end
  %p = load i32, ptr %"CQB::Engine::p", align 4, !dbg !1706
  %icmplt75 = icmp slt i32 %p, 31, !dbg !1706
  br label %and.end74, !dbg !1706

and.end74:                                        ; preds = %and.rhs73, %and.end
  %and76 = phi i1 [ false, %and.end ], [ %icmplt75, %and.rhs73 ], !dbg !1706
  br i1 %and76, label %while.body66, label %while.end67, !dbg !1706

then92:                                           ; preds = %while.end67
  %inc_deref94 = load i32, ptr %"CQB::Engine::steps", align 4, !dbg !1709
  %inc95 = add i32 %inc_deref94, 1, !dbg !1709
  store i32 %inc95, ptr %"CQB::Engine::steps", align 4, !dbg !1709
  %calltmp96 = call i64 @"CQB::Engine::nowMs"(), !dbg !1710
  %phaseStart = load i64, ptr %"CQB::Engine::phaseStart", align 8, !dbg !1710
  %sub = sub i64 %calltmp96, %phaseStart, !dbg !1710
  store i64 %sub, ptr %"CQB::Engine::lastStepMs", align 8, !dbg !1710
  br label %ifcont93, !dbg !1710

ifcont93:                                         ; preds = %else, %then92
  %tty98 = load i1, ptr %tty3, align 1, !dbg !1711
  br i1 %tty98, label %then99, label %ifcont100, !dbg !1711

else:                                             ; preds = %while.end67
  %calltmp97 = call i64 @"CQB::Engine::nowMs"(), !dbg !1712
  store i64 %calltmp97, ptr %"CQB::Engine::phaseStart", align 8, !dbg !1712
  br label %ifcont93, !dbg !1712

then99:                                           ; preds = %ifcont93
  %label101 = load ptr, ptr %label2, align 8, !dbg !1713
  %steps = load i32, ptr %"CQB::Engine::steps", align 4, !dbg !1713
  %lastStepMs = load i64, ptr %"CQB::Engine::lastStepMs", align 8, !dbg !1713
  %arr_elem_ptr102 = getelementptr inbounds [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0, !dbg !1713
  %arr_elem103 = load i8, ptr %arr_elem_ptr102, align 1, !dbg !1713
  %lval_arr_addr104 = getelementptr [32 x i8], ptr %"CQB::Engine::phase", i32 0, i32 0, !dbg !1713
  %varadics_array = alloca ptr, i32 4, align 8, !dbg !1713
  %3 = getelementptr ptr, ptr %varadics_array, i32 0, !dbg !1713
  store ptr %label101, ptr %3, align 8, !dbg !1713
  %4 = getelementptr ptr, ptr %varadics_array, i32 1, !dbg !1713
  %vararg_int_to_ptr = inttoptr i32 %steps to ptr, !dbg !1713
  store ptr %vararg_int_to_ptr, ptr %4, align 8, !dbg !1713
  %5 = getelementptr ptr, ptr %varadics_array, i32 2, !dbg !1713
  %vararg_int_to_ptr105 = inttoptr i64 %lastStepMs to ptr, !dbg !1713
  store ptr %vararg_int_to_ptr105, ptr %5, align 8, !dbg !1713
  %6 = getelementptr ptr, ptr %varadics_array, i32 3, !dbg !1713
  store ptr %lval_arr_addr104, ptr %6, align 8, !dbg !1713
  %variadic_struct = alloca { ptr, i32, i32 }, align 8, !dbg !1713
  %7 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 0, !dbg !1713
  store ptr %varadics_array, ptr %7, align 8, !dbg !1713
  %8 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 1, !dbg !1713
  store i32 4, ptr %8, align 4, !dbg !1713
  %9 = getelementptr inbounds nuw { ptr, i32, i32 }, ptr %variadic_struct, i32 0, i32 2, !dbg !1713
  store i32 0, ptr %9, align 4, !dbg !1713
  call void @"IO::qout"(ptr @.str.48, ptr %variadic_struct), !dbg !1713
  call void @qc_flush(), !dbg !1714
  br label %ifcont100, !dbg !1714

ifcont100:                                        ; preds = %then99, %ifcont93
  br label %for.inc, !dbg !1714
}

define weak_odr void @"Vector::Vec<int>_Vec"(ptr %0) !dbg !1715 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !1717, !DIExpression(), !1719)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1720
  store i32 0, ptr %size_ptr, align 4, !dbg !1720
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1721
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1721
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1722
  store ptr null, ptr %data_ptr, align 8, !dbg !1722
  ret void, !dbg !1722
}

define weak_odr void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %1) !dbg !1723 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !1725, !DIExpression(), !1727)
  store i32 0, ptr %cap, align 4, !dbg !1727
  store i32 %1, ptr %cap, align 4, !dbg !1727
    #dbg_value(i32 %1, !1726, !DIExpression(), !1727)
  %cap1 = load i32, ptr %cap, align 4, !dbg !1728
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !1728
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1728

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1729
  %data = load ptr, ptr %2, align 8, !dbg !1729
  call void @qc_free(ptr %data), !dbg !1729
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1730
  store ptr null, ptr %data_ptr, align 8, !dbg !1730
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1731
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1731
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1732
  store i32 0, ptr %size_ptr, align 4, !dbg !1732
  ret void, !dbg !1733

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !1734
    #dbg_declare(ptr %"Vector::new_data", !1735, !DIExpression(), !1734)
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1734
  %data2 = load ptr, ptr %3, align 8, !dbg !1734
  %cap3 = load i32, ptr %cap, align 4, !dbg !1734
  %promote_int = sext i32 %cap3 to i64, !dbg !1734
  %mul = mul i64 4, %promote_int, !dbg !1734
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !1734
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !1734
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !1736
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !1736
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !1736

then4:                                            ; preds = %ifcont
  ret void, !dbg !1737

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !1738
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1738
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !1738
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1739
  %size = load i32, ptr %4, align 4, !dbg !1739
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1739
  %capacity = load i32, ptr %5, align 4, !dbg !1739
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !1739
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !1739

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1740
  %capacity10 = load i32, ptr %6, align 4, !dbg !1740
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1740
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !1740
  br label %ifcont9, !dbg !1740

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !1741
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1741
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !1741
  ret void, !dbg !1741
}

define weak_odr void @"Vector::Vec<int>_push_T"(ptr %0, i32 %1) !dbg !1742 !qc.return_types !23 {
entry:
  %value = alloca i32, align 4
    #dbg_value(ptr %0, !1744, !DIExpression(), !1746)
  store i32 0, ptr %value, align 4, !dbg !1746
  store i32 %1, ptr %value, align 4, !dbg !1746
    #dbg_value(i32 %1, !1745, !DIExpression(), !1746)
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1747
  %capacity = load i32, ptr %2, align 4, !dbg !1747
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1747
  %size = load i32, ptr %3, align 4, !dbg !1747
  %icmple = icmp sle i32 %capacity, %size, !dbg !1747
  br i1 %icmple, label %then, label %ifcont, !dbg !1747

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1748
  %capacity1 = load i32, ptr %4, align 4, !dbg !1748
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !1748
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !1748

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1749
  %size5 = load i32, ptr %5, align 4, !dbg !1749
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1749
  %data6 = load ptr, ptr %6, align 8, !dbg !1749
  %ptr_arr_asi = getelementptr i32, ptr %data6, i32 %size5, !dbg !1749
  %value7 = load i32, ptr %value, align 4, !dbg !1749
  store i32 %value7, ptr %ptr_arr_asi, align 4, !dbg !1749
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1750
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1750
  %inc = add i32 %inc_deref, 1, !dbg !1750
  store i32 %inc, ptr %size_ptr, align 4, !dbg !1750
  ret void, !dbg !1750

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !1748

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1748
  %capacity2 = load i32, ptr %7, align 4, !dbg !1748
  %mul = mul i32 %capacity2, 2, !dbg !1748
  br label %ternary.end, !dbg !1748

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !1748
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !1748
  %8 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1751
  %data = load ptr, ptr %8, align 8, !dbg !1751
  %ptr_eq = icmp eq ptr %data, null, !dbg !1751
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !1751

then3:                                            ; preds = %ternary.end
  ret void, !dbg !1751

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !1751
}

define weak_odr i32 @"Vector::Vec<int>_length"(ptr %0) !dbg !1752 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !1754, !DIExpression(), !1755)
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1756
  %size = load i32, ptr %1, align 4, !dbg !1756
  ret i32 %size, !dbg !1756
}

define weak_odr void @"Vector::Vec<int>_pop"(ptr %0) !dbg !1757 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1759, !DIExpression(), !1760)
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1761
  %size = load i32, ptr %1, align 4, !dbg !1761
  %icmpgt = icmp sgt i32 %size, 0, !dbg !1761
  br i1 %icmpgt, label %then, label %ifcont, !dbg !1761

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1762
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1762
  %dec = sub i32 %inc_deref, 1, !dbg !1762
  store i32 %dec, ptr %size_ptr, align 4, !dbg !1762
  br label %ifcont, !dbg !1762

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !1762
}

define weak_odr void @"Vector::Vec<int>_shrinkToFit"(ptr %0) !dbg !1763 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1765, !DIExpression(), !1766)
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1767
  %size = load i32, ptr %1, align 4, !dbg !1767
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %size), !dbg !1767
  ret void, !dbg !1767
}

define weak_odr void @"Vector::Vec<int>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !1768 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1770, !DIExpression(), !1773)
  store ptr null, ptr %data, align 8, !dbg !1773
  store ptr %1, ptr %data, align 8, !dbg !1773
    #dbg_value(ptr %1, !1771, !DIExpression(), !1773)
  store i64 0, ptr %length, align 8, !dbg !1773
  store i64 %2, ptr %length, align 8, !dbg !1773
    #dbg_value(i64 %2, !1772, !DIExpression(), !1773)
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1774
  %capacity = load i32, ptr %3, align 4, !dbg !1774
  %icmpne = icmp ne i32 %capacity, 0, !dbg !1774
  br i1 %icmpne, label %then, label %ifcont, !dbg !1774

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1774
  %data1 = load ptr, ptr %4, align 8, !dbg !1774
  call void @qc_free(ptr %data1), !dbg !1774
  br label %ifcont, !dbg !1774

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !1775
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1775
  %trunc = trunc i64 %length2 to i32, !dbg !1775
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !1775
  %length3 = load i64, ptr %length, align 8, !dbg !1776
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1776
  %trunc4 = trunc i64 %length3 to i32, !dbg !1776
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !1776
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1777
  %capacity5 = load i32, ptr %5, align 4, !dbg !1777
  %promote_int = sext i32 %capacity5 to i64, !dbg !1777
  %mul = mul i64 4, %promote_int, !dbg !1777
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !1777
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1777
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !1777
  store i32 0, ptr %"Vector::i", align 4, !dbg !1778
    #dbg_declare(ptr %"Vector::i", !1779, !DIExpression(), !1778)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1778
  br label %for.cond, !dbg !1778

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1778
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1778
  %size = load i32, ptr %6, align 4, !dbg !1778
  %icmplt = icmp slt i32 %i, %size, !dbg !1778
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1778

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !1780
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1780
  %data7 = load ptr, ptr %7, align 8, !dbg !1780
  %ptr_arr_asi = getelementptr i32, ptr %data7, i32 %i6, !dbg !1780
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !1780
  %data9 = load ptr, ptr %data, align 8, !dbg !1780
  %ptr_arr_addr = getelementptr i32, ptr %data9, i32 %i8, !dbg !1780
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4, !dbg !1780
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4, !dbg !1780
  br label %for.inc, !dbg !1780

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1778
  %inc = add i32 %inc_deref, 1, !dbg !1778
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1778
  br label %for.cond, !dbg !1778

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1778
}

define weak_odr ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !1781 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !1783, !DIExpression(), !1785)
  store i64 0, ptr %index, align 8, !dbg !1785
  store i64 %1, ptr %index, align 8, !dbg !1785
    #dbg_value(i64 %1, !1784, !DIExpression(), !1785)
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1786
  %data = load ptr, ptr %2, align 8, !dbg !1786
  %index1 = load i64, ptr %index, align 8, !dbg !1786
  %lval_ptr_arr_addr = getelementptr i32, ptr %data, i64 %index1, !dbg !1786
  ret ptr %lval_ptr_arr_addr, !dbg !1786
}

define weak_odr void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !1787 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1789, !DIExpression(), !1797)
  store ptr null, ptr %data, align 8, !dbg !1797
  store ptr %1, ptr %data, align 8, !dbg !1797
    #dbg_value(ptr %1, !1794, !DIExpression(), !1797)
  store i32 0, ptr %size, align 4, !dbg !1797
  store i32 %2, ptr %size, align 4, !dbg !1797
    #dbg_value(i32 %2, !1795, !DIExpression(), !1797)
  store i1 false, ptr %is_end, align 1, !dbg !1797
  store i1 %3, ptr %is_end, align 1, !dbg !1797
    #dbg_value(i1 %3, !1796, !DIExpression(), !1797)
  %data1 = load ptr, ptr %data, align 8, !dbg !1798
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0, !dbg !1798
  store ptr %data1, ptr %data_ptr, align 8, !dbg !1798
  %size2 = load i32, ptr %size, align 4, !dbg !1799
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1799
  store i32 %size2, ptr %size_ptr, align 4, !dbg !1799
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !1800
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !1800

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !1800
  br label %ternary.end, !dbg !1800

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !1800

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !1800
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1800
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !1800
  ret void, !dbg !1800
}

define weak_odr i1 @"Vector::Iterator::It<int>__atEnd"(ptr %0) !dbg !1801 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1803, !DIExpression(), !1804)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1805
  %size = load i32, ptr %1, align 4, !dbg !1805
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1805
  %current_index = load i32, ptr %2, align 4, !dbg !1805
  %icmple = icmp sle i32 %size, %current_index, !dbg !1805
  ret i1 %icmple, !dbg !1805
}

define weak_odr i32 @"Vector::Iterator::It<int>__next"(ptr %0) !dbg !1806 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1808, !DIExpression(), !1809)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1810
  %size = load i32, ptr %1, align 4, !dbg !1810
  %icmpeq = icmp eq i32 %size, 0, !dbg !1810
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1810

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.49, ptr @10, i32 40) #29, !dbg !1811
  unreachable, !dbg !1811

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<int>__atEnd"(ptr %0), !dbg !1812
  %not = xor i1 %_atEnd_result, true, !dbg !1812
  br i1 %not, label %then1, label %ifcont2, !dbg !1812

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1813
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1813
  %inc = add i32 %inc_deref, 1, !dbg !1813
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !1813
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0, !dbg !1813
  %data = load ptr, ptr %2, align 8, !dbg !1813
  %ptr_arr_addr = getelementptr i32, ptr %data, i32 %inc_deref, !dbg !1813
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4, !dbg !1813
  ret i32 %ptr_arr_val, !dbg !1813

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1814
  %size3 = load i32, ptr %3, align 4, !dbg !1814
  %sub = sub i32 %size3, 1, !dbg !1814
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0, !dbg !1814
  %data4 = load ptr, ptr %4, align 8, !dbg !1814
  %ptr_arr_addr5 = getelementptr i32, ptr %data4, i32 %sub, !dbg !1814
  %ptr_arr_val6 = load i32, ptr %ptr_arr_addr5, align 4, !dbg !1814
  ret i32 %ptr_arr_val6, !dbg !1814
}

define weak_odr i1 @"Vector::Iterator::It<int>__atStart"(ptr %0) !dbg !1815 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1817, !DIExpression(), !1818)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1819
  %current_index = load i32, ptr %1, align 4, !dbg !1819
  %icmple = icmp sle i32 %current_index, 0, !dbg !1819
  ret i1 %icmple, !dbg !1819
}

define weak_odr i32 @"Vector::Iterator::It<int>__prev"(ptr %0) !dbg !1820 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1822, !DIExpression(), !1823)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1824
  %size = load i32, ptr %1, align 4, !dbg !1824
  %icmpeq = icmp eq i32 %size, 0, !dbg !1824
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1824

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.50, ptr @11, i32 56) #29, !dbg !1825
  unreachable, !dbg !1825

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<int>__atStart"(ptr %0), !dbg !1826
  %not = xor i1 %_atStart_result, true, !dbg !1826
  br i1 %not, label %then1, label %ifcont2, !dbg !1826

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1827
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1827
  %dec = sub i32 %inc_deref, 1, !dbg !1827
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !1827
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0, !dbg !1827
  %data = load ptr, ptr %2, align 8, !dbg !1827
  %ptr_arr_addr = getelementptr i32, ptr %data, i32 %dec, !dbg !1827
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4, !dbg !1827
  ret i32 %ptr_arr_val, !dbg !1827

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1828
  %current_index = load i32, ptr %3, align 4, !dbg !1828
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 0, !dbg !1828
  %data3 = load ptr, ptr %4, align 8, !dbg !1828
  %ptr_arr_addr4 = getelementptr i32, ptr %data3, i32 %current_index, !dbg !1828
  %ptr_arr_val5 = load i32, ptr %ptr_arr_addr4, align 4, !dbg !1828
  ret i32 %ptr_arr_val5, !dbg !1828
}

define weak_odr void @"Vector::Iterator::It<int>__moveTo_int"(ptr %0, i32 %1) !dbg !1829 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !1831, !DIExpression(), !1833)
  store i32 0, ptr %index, align 4, !dbg !1833
  store i32 %1, ptr %index, align 4, !dbg !1833
    #dbg_value(i32 %1, !1832, !DIExpression(), !1833)
  %index1 = load i32, ptr %index, align 4, !dbg !1834
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1834
  %size = load i32, ptr %2, align 4, !dbg !1834
  %icmpge = icmp sge i32 %index1, %size, !dbg !1834
  br i1 %icmpge, label %then, label %elif.cond, !dbg !1834

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 1, !dbg !1835
  %size2 = load i32, ptr %3, align 4, !dbg !1835
  %sub = sub i32 %size2, 1, !dbg !1835
  store i32 %sub, ptr %index, align 4, !dbg !1835
  br label %ifcont, !dbg !1835

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !1836
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<int>", ptr %0, i32 0, i32 2, !dbg !1836
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !1836
  ret void, !dbg !1836

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !1837
  %icmplt = icmp slt i32 %index3, 0, !dbg !1837
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !1837

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !1838
  br label %ifcont, !dbg !1838
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__begin"(ptr %0) !dbg !1839 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<int>" = alloca %"Vector::Iterator::It<int>", align 8
    #dbg_value(ptr %0, !1841, !DIExpression(), !1842)
  store %"Vector::Iterator::It<int>" zeroinitializer, ptr %"temp_Vector::Iterator::It<int>", align 8, !dbg !1843
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1843
  %data = load ptr, ptr %1, align 8, !dbg !1843
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1843
  %size = load i32, ptr %2, align 4, !dbg !1843
  call void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<int>", ptr %data, i32 %size, i1 false), !dbg !1843
  %"Vector::Iterator::It<int>_inst" = load %"Vector::Iterator::It<int>", ptr %"temp_Vector::Iterator::It<int>", align 8, !dbg !1843
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst", !dbg !1843
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__end"(ptr %0) !dbg !1844 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<int>" = alloca %"Vector::Iterator::It<int>", align 8
    #dbg_value(ptr %0, !1846, !DIExpression(), !1847)
  store %"Vector::Iterator::It<int>" zeroinitializer, ptr %"temp_Vector::Iterator::It<int>", align 8, !dbg !1848
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1848
  %data = load ptr, ptr %1, align 8, !dbg !1848
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1848
  %size = load i32, ptr %2, align 4, !dbg !1848
  call void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<int>", ptr %data, i32 %size, i1 true), !dbg !1848
  %"Vector::Iterator::It<int>_inst" = load %"Vector::Iterator::It<int>", ptr %"temp_Vector::Iterator::It<int>", align 8, !dbg !1848
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst", !dbg !1848
}

define weak_odr void @"Vector::Vec<int>__destroy"(ptr %0) !dbg !1849 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1851, !DIExpression(), !1852)
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1853
  %data = load ptr, ptr %1, align 8, !dbg !1853
  call void @qc_free(ptr %data), !dbg !1853
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1854
  store ptr null, ptr %data_ptr, align 8, !dbg !1854
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1855
  store i32 -1, ptr %size_ptr, align 4, !dbg !1855
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1856
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !1856
  ret void, !dbg !1856
}

define weak_odr ptr @"Vector::Vec<int>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<int>" %1) !dbg !1857 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<int>", align 8
    #dbg_value(ptr %0, !1859, !DIExpression(), !1861)
  store %"Vector::Vec<int>" zeroinitializer, ptr %other, align 8, !dbg !1861
  store %"Vector::Vec<int>" %1, ptr %other, align 8, !dbg !1861
    #dbg_value(%"Vector::Vec<int>" %1, !1860, !DIExpression(), !1861)
  %2 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 2, !dbg !1862
  %capacity = load i32, ptr %2, align 4, !dbg !1862
  %3 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 2, !dbg !1862
  %capacity1 = load i32, ptr %3, align 4, !dbg !1862
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !1862
  br i1 %icmpne, label %then, label %ifcont, !dbg !1862

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 2, !dbg !1863
  %capacity2 = load i32, ptr %4, align 4, !dbg !1863
  call void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %capacity2), !dbg !1863
  br label %ifcont, !dbg !1863

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 1, !dbg !1864
  %size = load i32, ptr %5, align 4, !dbg !1864
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1864
  store i32 %size, ptr %size_ptr, align 4, !dbg !1864
  store i32 0, ptr %"Vector::i", align 4, !dbg !1865
    #dbg_declare(ptr %"Vector::i", !1866, !DIExpression(), !1865)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1865
  br label %for.cond, !dbg !1865

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1865
  %6 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 1, !dbg !1865
  %size3 = load i32, ptr %6, align 4, !dbg !1865
  %icmplt = icmp slt i32 %i, %size3, !dbg !1865
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1865

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !1867
  %7 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 0, !dbg !1867
  %data = load ptr, ptr %7, align 8, !dbg !1867
  %ptr_arr_asi = getelementptr i32, ptr %data, i32 %i4, !dbg !1867
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !1867
  %8 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %other, i32 0, i32 0, !dbg !1867
  %data6 = load ptr, ptr %8, align 8, !dbg !1867
  %ptr_arr_addr = getelementptr i32, ptr %data6, i32 %i5, !dbg !1867
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4, !dbg !1867
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4, !dbg !1867
  br label %for.inc, !dbg !1867

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1865
  %inc = add i32 %inc_deref, 1, !dbg !1865
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1865
  br label %for.cond, !dbg !1865

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !1868
}

define weak_odr i1 @"Vector::Vec<int>_isEmpty"(ptr %0) !dbg !1869 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1871, !DIExpression(), !1872)
  %1 = getelementptr inbounds nuw %"Vector::Vec<int>", ptr %0, i32 0, i32 1, !dbg !1873
  %size = load i32, ptr %1, align 4, !dbg !1873
  %icmpeq = icmp eq i32 %size, 0, !dbg !1873
  ret i1 %icmpeq, !dbg !1873
}

define weak_odr void @"Vector::Vec<bool>_Vec"(ptr %0) !dbg !1874 !qc.return_types !25 {
entry:
    #dbg_value(ptr %0, !1876, !DIExpression(), !1878)
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1879
  store i32 0, ptr %size_ptr, align 4, !dbg !1879
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1880
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1880
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1881
  store ptr null, ptr %data_ptr, align 8, !dbg !1881
  ret void, !dbg !1881
}

define weak_odr void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %1) !dbg !1882 !qc.return_types !23 {
entry:
  %"Vector::new_data" = alloca ptr, align 8
  %cap = alloca i32, align 4
    #dbg_value(ptr %0, !1884, !DIExpression(), !1886)
  store i32 0, ptr %cap, align 4, !dbg !1886
  store i32 %1, ptr %cap, align 4, !dbg !1886
    #dbg_value(i32 %1, !1885, !DIExpression(), !1886)
  %cap1 = load i32, ptr %cap, align 4, !dbg !1887
  %icmpeq = icmp eq i32 %cap1, 0, !dbg !1887
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1887

then:                                             ; preds = %entry
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1888
  %data = load ptr, ptr %2, align 8, !dbg !1888
  call void @qc_free(ptr %data), !dbg !1888
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1889
  store ptr null, ptr %data_ptr, align 8, !dbg !1889
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1890
  store i32 0, ptr %capacity_ptr, align 4, !dbg !1890
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1891
  store i32 0, ptr %size_ptr, align 4, !dbg !1891
  ret void, !dbg !1892

ifcont:                                           ; preds = %entry
  store ptr null, ptr %"Vector::new_data", align 8, !dbg !1893
    #dbg_declare(ptr %"Vector::new_data", !1894, !DIExpression(), !1893)
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1893
  %data2 = load ptr, ptr %3, align 8, !dbg !1893
  %cap3 = load i32, ptr %cap, align 4, !dbg !1893
  %promote_int = sext i32 %cap3 to i64, !dbg !1893
  %mul = mul i64 1, %promote_int, !dbg !1893
  %builtin_call = call ptr @qc_realloc(ptr %data2, i64 %mul), !dbg !1893
  store ptr %builtin_call, ptr %"Vector::new_data", align 8, !dbg !1893
  %new_data = load ptr, ptr %"Vector::new_data", align 8, !dbg !1895
  %ptr_eq = icmp eq ptr %new_data, null, !dbg !1895
  br i1 %ptr_eq, label %then4, label %ifcont5, !dbg !1895

then4:                                            ; preds = %ifcont
  ret void, !dbg !1896

ifcont5:                                          ; preds = %ifcont
  %cap6 = load i32, ptr %cap, align 4, !dbg !1897
  %capacity_ptr7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1897
  store i32 %cap6, ptr %capacity_ptr7, align 4, !dbg !1897
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1898
  %size = load i32, ptr %4, align 4, !dbg !1898
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1898
  %capacity = load i32, ptr %5, align 4, !dbg !1898
  %icmpgt = icmp sgt i32 %size, %capacity, !dbg !1898
  br i1 %icmpgt, label %then8, label %ifcont9, !dbg !1898

then8:                                            ; preds = %ifcont5
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1899
  %capacity10 = load i32, ptr %6, align 4, !dbg !1899
  %size_ptr11 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1899
  store i32 %capacity10, ptr %size_ptr11, align 4, !dbg !1899
  br label %ifcont9, !dbg !1899

ifcont9:                                          ; preds = %then8, %ifcont5
  %new_data12 = load ptr, ptr %"Vector::new_data", align 8, !dbg !1900
  %data_ptr13 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1900
  store ptr %new_data12, ptr %data_ptr13, align 8, !dbg !1900
  ret void, !dbg !1900
}

define weak_odr void @"Vector::Vec<bool>_push_T"(ptr %0, i1 %1) !dbg !1901 !qc.return_types !23 {
entry:
  %value = alloca i1, align 1
    #dbg_value(ptr %0, !1903, !DIExpression(), !1905)
  store i1 false, ptr %value, align 1, !dbg !1905
  store i1 %1, ptr %value, align 1, !dbg !1905
    #dbg_value(i1 %1, !1904, !DIExpression(), !1905)
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1906
  %capacity = load i32, ptr %2, align 4, !dbg !1906
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1906
  %size = load i32, ptr %3, align 4, !dbg !1906
  %icmple = icmp sle i32 %capacity, %size, !dbg !1906
  br i1 %icmple, label %then, label %ifcont, !dbg !1906

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1907
  %capacity1 = load i32, ptr %4, align 4, !dbg !1907
  %icmpeq = icmp eq i32 %capacity1, 0, !dbg !1907
  br i1 %icmpeq, label %ternary.true, label %ternary.false, !dbg !1907

ifcont:                                           ; preds = %ifcont4, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1908
  %size5 = load i32, ptr %5, align 4, !dbg !1908
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1908
  %data6 = load ptr, ptr %6, align 8, !dbg !1908
  %ptr_arr_asi = getelementptr i1, ptr %data6, i32 %size5, !dbg !1908
  %value7 = load i1, ptr %value, align 1, !dbg !1908
  store i1 %value7, ptr %ptr_arr_asi, align 1, !dbg !1908
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1909
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1909
  %inc = add i32 %inc_deref, 1, !dbg !1909
  store i32 %inc, ptr %size_ptr, align 4, !dbg !1909
  ret void, !dbg !1909

ternary.true:                                     ; preds = %then
  br label %ternary.end, !dbg !1907

ternary.false:                                    ; preds = %then
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1907
  %capacity2 = load i32, ptr %7, align 4, !dbg !1907
  %mul = mul i32 %capacity2, 2, !dbg !1907
  br label %ternary.end, !dbg !1907

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ 1, %ternary.true ], [ %mul, %ternary.false ], !dbg !1907
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %ternary_val), !dbg !1907
  %8 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1910
  %data = load ptr, ptr %8, align 8, !dbg !1910
  %ptr_eq = icmp eq ptr %data, null, !dbg !1910
  br i1 %ptr_eq, label %then3, label %ifcont4, !dbg !1910

then3:                                            ; preds = %ternary.end
  ret void, !dbg !1910

ifcont4:                                          ; preds = %ternary.end
  br label %ifcont, !dbg !1910
}

define weak_odr i32 @"Vector::Vec<bool>_length"(ptr %0) !dbg !1911 !qc.return_types !83 {
entry:
    #dbg_value(ptr %0, !1913, !DIExpression(), !1914)
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1915
  %size = load i32, ptr %1, align 4, !dbg !1915
  ret i32 %size, !dbg !1915
}

define weak_odr void @"Vector::Vec<bool>_pop"(ptr %0) !dbg !1916 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1918, !DIExpression(), !1919)
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1920
  %size = load i32, ptr %1, align 4, !dbg !1920
  %icmpgt = icmp sgt i32 %size, 0, !dbg !1920
  br i1 %icmpgt, label %then, label %ifcont, !dbg !1920

then:                                             ; preds = %entry
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1921
  %inc_deref = load i32, ptr %size_ptr, align 4, !dbg !1921
  %dec = sub i32 %inc_deref, 1, !dbg !1921
  store i32 %dec, ptr %size_ptr, align 4, !dbg !1921
  br label %ifcont, !dbg !1921

ifcont:                                           ; preds = %then, %entry
  ret void, !dbg !1921
}

define weak_odr void @"Vector::Vec<bool>_shrinkToFit"(ptr %0) !dbg !1922 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !1924, !DIExpression(), !1925)
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1926
  %size = load i32, ptr %1, align 4, !dbg !1926
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %size), !dbg !1926
  ret void, !dbg !1926
}

define weak_odr void @"Vector::Vec<bool>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) !dbg !1927 !qc.return_types !23 {
entry:
  %"Vector::i" = alloca i32, align 4
  %length = alloca i64, align 8
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1929, !DIExpression(), !1932)
  store ptr null, ptr %data, align 8, !dbg !1932
  store ptr %1, ptr %data, align 8, !dbg !1932
    #dbg_value(ptr %1, !1930, !DIExpression(), !1932)
  store i64 0, ptr %length, align 8, !dbg !1932
  store i64 %2, ptr %length, align 8, !dbg !1932
    #dbg_value(i64 %2, !1931, !DIExpression(), !1932)
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1933
  %capacity = load i32, ptr %3, align 4, !dbg !1933
  %icmpne = icmp ne i32 %capacity, 0, !dbg !1933
  br i1 %icmpne, label %then, label %ifcont, !dbg !1933

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1933
  %data1 = load ptr, ptr %4, align 8, !dbg !1933
  call void @qc_free(ptr %data1), !dbg !1933
  br label %ifcont, !dbg !1933

ifcont:                                           ; preds = %then, %entry
  %length2 = load i64, ptr %length, align 8, !dbg !1934
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1934
  %trunc = trunc i64 %length2 to i32, !dbg !1934
  store i32 %trunc, ptr %capacity_ptr, align 4, !dbg !1934
  %length3 = load i64, ptr %length, align 8, !dbg !1935
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1935
  %trunc4 = trunc i64 %length3 to i32, !dbg !1935
  store i32 %trunc4, ptr %size_ptr, align 4, !dbg !1935
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !1936
  %capacity5 = load i32, ptr %5, align 4, !dbg !1936
  %promote_int = sext i32 %capacity5 to i64, !dbg !1936
  %mul = mul i64 1, %promote_int, !dbg !1936
  %builtin_call = call ptr @qc_malloc(i64 %mul), !dbg !1936
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1936
  store ptr %builtin_call, ptr %data_ptr, align 8, !dbg !1936
  store i32 0, ptr %"Vector::i", align 4, !dbg !1937
    #dbg_declare(ptr %"Vector::i", !1938, !DIExpression(), !1937)
  store i32 0, ptr %"Vector::i", align 4, !dbg !1937
  br label %for.cond, !dbg !1937

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !1937
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !1937
  %size = load i32, ptr %6, align 4, !dbg !1937
  %icmplt = icmp slt i32 %i, %size, !dbg !1937
  br i1 %icmplt, label %for.body, label %for.end, !dbg !1937

for.body:                                         ; preds = %for.cond
  %i6 = load i32, ptr %"Vector::i", align 4, !dbg !1939
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1939
  %data7 = load ptr, ptr %7, align 8, !dbg !1939
  %ptr_arr_asi = getelementptr i1, ptr %data7, i32 %i6, !dbg !1939
  %i8 = load i32, ptr %"Vector::i", align 4, !dbg !1939
  %data9 = load ptr, ptr %data, align 8, !dbg !1939
  %ptr_arr_addr = getelementptr i1, ptr %data9, i32 %i8, !dbg !1939
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1, !dbg !1939
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1, !dbg !1939
  br label %for.inc, !dbg !1939

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !1937
  %inc = add i32 %inc_deref, 1, !dbg !1937
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !1937
  br label %for.cond, !dbg !1937

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1937
}

define weak_odr ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %0, i64 %1) !dbg !1940 !qc.return_types !115 {
entry:
  %index = alloca i64, align 8
    #dbg_value(ptr %0, !1942, !DIExpression(), !1944)
  store i64 0, ptr %index, align 8, !dbg !1944
  store i64 %1, ptr %index, align 8, !dbg !1944
    #dbg_value(i64 %1, !1943, !DIExpression(), !1944)
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !1945
  %data = load ptr, ptr %2, align 8, !dbg !1945
  %index1 = load i64, ptr %index, align 8, !dbg !1945
  %lval_ptr_arr_addr = getelementptr i1, ptr %data, i64 %index1, !dbg !1945
  ret ptr %lval_ptr_arr_addr, !dbg !1945
}

define weak_odr void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) !dbg !1946 !qc.return_types !25 {
entry:
  %is_end = alloca i1, align 1
  %size = alloca i32, align 4
  %data = alloca ptr, align 8
    #dbg_value(ptr %0, !1948, !DIExpression(), !1956)
  store ptr null, ptr %data, align 8, !dbg !1956
  store ptr %1, ptr %data, align 8, !dbg !1956
    #dbg_value(ptr %1, !1953, !DIExpression(), !1956)
  store i32 0, ptr %size, align 4, !dbg !1956
  store i32 %2, ptr %size, align 4, !dbg !1956
    #dbg_value(i32 %2, !1954, !DIExpression(), !1956)
  store i1 false, ptr %is_end, align 1, !dbg !1956
  store i1 %3, ptr %is_end, align 1, !dbg !1956
    #dbg_value(i1 %3, !1955, !DIExpression(), !1956)
  %data1 = load ptr, ptr %data, align 8, !dbg !1957
  %data_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0, !dbg !1957
  store ptr %data1, ptr %data_ptr, align 8, !dbg !1957
  %size2 = load i32, ptr %size, align 4, !dbg !1958
  %size_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1958
  store i32 %size2, ptr %size_ptr, align 4, !dbg !1958
  %is_end3 = load i1, ptr %is_end, align 1, !dbg !1959
  br i1 %is_end3, label %ternary.true, label %ternary.false, !dbg !1959

ternary.true:                                     ; preds = %entry
  %size4 = load i32, ptr %size, align 4, !dbg !1959
  br label %ternary.end, !dbg !1959

ternary.false:                                    ; preds = %entry
  br label %ternary.end, !dbg !1959

ternary.end:                                      ; preds = %ternary.false, %ternary.true
  %ternary_val = phi i32 [ %size4, %ternary.true ], [ 0, %ternary.false ], !dbg !1959
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1959
  store i32 %ternary_val, ptr %current_index_ptr, align 4, !dbg !1959
  ret void, !dbg !1959
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atEnd"(ptr %0) !dbg !1960 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1962, !DIExpression(), !1963)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1964
  %size = load i32, ptr %1, align 4, !dbg !1964
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1964
  %current_index = load i32, ptr %2, align 4, !dbg !1964
  %icmple = icmp sle i32 %size, %current_index, !dbg !1964
  ret i1 %icmple, !dbg !1964
}

define weak_odr i1 @"Vector::Iterator::It<bool>__next"(ptr %0) !dbg !1965 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1967, !DIExpression(), !1968)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1969
  %size = load i32, ptr %1, align 4, !dbg !1969
  %icmpeq = icmp eq i32 %size, 0, !dbg !1969
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1969

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.53, ptr @12, i32 40) #29, !dbg !1970
  unreachable, !dbg !1970

ifcont:                                           ; preds = %entry
  %_atEnd_result = call i1 @"Vector::Iterator::It<bool>__atEnd"(ptr %0), !dbg !1971
  %not = xor i1 %_atEnd_result, true, !dbg !1971
  br i1 %not, label %then1, label %ifcont2, !dbg !1971

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1972
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1972
  %inc = add i32 %inc_deref, 1, !dbg !1972
  store i32 %inc, ptr %current_index_ptr, align 4, !dbg !1972
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0, !dbg !1972
  %data = load ptr, ptr %2, align 8, !dbg !1972
  %ptr_arr_addr = getelementptr i1, ptr %data, i32 %inc_deref, !dbg !1972
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1, !dbg !1972
  ret i1 %ptr_arr_val, !dbg !1972

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1973
  %size3 = load i32, ptr %3, align 4, !dbg !1973
  %sub = sub i32 %size3, 1, !dbg !1973
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0, !dbg !1973
  %data4 = load ptr, ptr %4, align 8, !dbg !1973
  %ptr_arr_addr5 = getelementptr i1, ptr %data4, i32 %sub, !dbg !1973
  %ptr_arr_val6 = load i1, ptr %ptr_arr_addr5, align 1, !dbg !1973
  ret i1 %ptr_arr_val6, !dbg !1973
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atStart"(ptr %0) !dbg !1974 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !1976, !DIExpression(), !1977)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1978
  %current_index = load i32, ptr %1, align 4, !dbg !1978
  %icmple = icmp sle i32 %current_index, 0, !dbg !1978
  ret i1 %icmple, !dbg !1978
}

define weak_odr i1 @"Vector::Iterator::It<bool>__prev"(ptr %0) !dbg !1979 !qc.return_types !143 {
entry:
    #dbg_value(ptr %0, !1981, !DIExpression(), !1982)
  %1 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1983
  %size = load i32, ptr %1, align 4, !dbg !1983
  %icmpeq = icmp eq i32 %size, 0, !dbg !1983
  br i1 %icmpeq, label %then, label %ifcont, !dbg !1983

then:                                             ; preds = %entry
  call void @__qc_panic(ptr @.str.54, ptr @13, i32 56) #29, !dbg !1984
  unreachable, !dbg !1984

ifcont:                                           ; preds = %entry
  %_atStart_result = call i1 @"Vector::Iterator::It<bool>__atStart"(ptr %0), !dbg !1985
  %not = xor i1 %_atStart_result, true, !dbg !1985
  br i1 %not, label %then1, label %ifcont2, !dbg !1985

then1:                                            ; preds = %ifcont
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1986
  %inc_deref = load i32, ptr %current_index_ptr, align 4, !dbg !1986
  %dec = sub i32 %inc_deref, 1, !dbg !1986
  store i32 %dec, ptr %current_index_ptr, align 4, !dbg !1986
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0, !dbg !1986
  %data = load ptr, ptr %2, align 8, !dbg !1986
  %ptr_arr_addr = getelementptr i1, ptr %data, i32 %dec, !dbg !1986
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1, !dbg !1986
  ret i1 %ptr_arr_val, !dbg !1986

ifcont2:                                          ; preds = %ifcont
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1987
  %current_index = load i32, ptr %3, align 4, !dbg !1987
  %4 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 0, !dbg !1987
  %data3 = load ptr, ptr %4, align 8, !dbg !1987
  %ptr_arr_addr4 = getelementptr i1, ptr %data3, i32 %current_index, !dbg !1987
  %ptr_arr_val5 = load i1, ptr %ptr_arr_addr4, align 1, !dbg !1987
  ret i1 %ptr_arr_val5, !dbg !1987
}

define weak_odr void @"Vector::Iterator::It<bool>__moveTo_int"(ptr %0, i32 %1) !dbg !1988 !qc.return_types !23 {
entry:
  %index = alloca i32, align 4
    #dbg_value(ptr %0, !1990, !DIExpression(), !1992)
  store i32 0, ptr %index, align 4, !dbg !1992
  store i32 %1, ptr %index, align 4, !dbg !1992
    #dbg_value(i32 %1, !1991, !DIExpression(), !1992)
  %index1 = load i32, ptr %index, align 4, !dbg !1993
  %2 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1993
  %size = load i32, ptr %2, align 4, !dbg !1993
  %icmpge = icmp sge i32 %index1, %size, !dbg !1993
  br i1 %icmpge, label %then, label %elif.cond, !dbg !1993

then:                                             ; preds = %entry
  %3 = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 1, !dbg !1994
  %size2 = load i32, ptr %3, align 4, !dbg !1994
  %sub = sub i32 %size2, 1, !dbg !1994
  store i32 %sub, ptr %index, align 4, !dbg !1994
  br label %ifcont, !dbg !1994

ifcont:                                           ; preds = %elif.body, %elif.cond, %then
  %index4 = load i32, ptr %index, align 4, !dbg !1995
  %current_index_ptr = getelementptr inbounds nuw %"Vector::Iterator::It<bool>", ptr %0, i32 0, i32 2, !dbg !1995
  store i32 %index4, ptr %current_index_ptr, align 4, !dbg !1995
  ret void, !dbg !1995

elif.cond:                                        ; preds = %entry
  %index3 = load i32, ptr %index, align 4, !dbg !1996
  %icmplt = icmp slt i32 %index3, 0, !dbg !1996
  br i1 %icmplt, label %elif.body, label %ifcont, !dbg !1996

elif.body:                                        ; preds = %elif.cond
  store i32 0, ptr %index, align 4, !dbg !1997
  br label %ifcont, !dbg !1997
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__begin"(ptr %0) !dbg !1998 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<bool>" = alloca %"Vector::Iterator::It<bool>", align 8
    #dbg_value(ptr %0, !2000, !DIExpression(), !2001)
  store %"Vector::Iterator::It<bool>" zeroinitializer, ptr %"temp_Vector::Iterator::It<bool>", align 8, !dbg !2002
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !2002
  %data = load ptr, ptr %1, align 8, !dbg !2002
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !2002
  %size = load i32, ptr %2, align 4, !dbg !2002
  call void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<bool>", ptr %data, i32 %size, i1 false), !dbg !2002
  %"Vector::Iterator::It<bool>_inst" = load %"Vector::Iterator::It<bool>", ptr %"temp_Vector::Iterator::It<bool>", align 8, !dbg !2002
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst", !dbg !2002
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__end"(ptr %0) !dbg !2003 !qc.return_types !177 {
entry:
  %"temp_Vector::Iterator::It<bool>" = alloca %"Vector::Iterator::It<bool>", align 8
    #dbg_value(ptr %0, !2005, !DIExpression(), !2006)
  store %"Vector::Iterator::It<bool>" zeroinitializer, ptr %"temp_Vector::Iterator::It<bool>", align 8, !dbg !2007
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !2007
  %data = load ptr, ptr %1, align 8, !dbg !2007
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !2007
  %size = load i32, ptr %2, align 4, !dbg !2007
  call void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %"temp_Vector::Iterator::It<bool>", ptr %data, i32 %size, i1 true), !dbg !2007
  %"Vector::Iterator::It<bool>_inst" = load %"Vector::Iterator::It<bool>", ptr %"temp_Vector::Iterator::It<bool>", align 8, !dbg !2007
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst", !dbg !2007
}

define weak_odr void @"Vector::Vec<bool>__destroy"(ptr %0) !dbg !2008 !qc.return_types !23 {
entry:
    #dbg_value(ptr %0, !2010, !DIExpression(), !2011)
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !2012
  %data = load ptr, ptr %1, align 8, !dbg !2012
  call void @qc_free(ptr %data), !dbg !2012
  %data_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !2013
  store ptr null, ptr %data_ptr, align 8, !dbg !2013
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !2014
  store i32 -1, ptr %size_ptr, align 4, !dbg !2014
  %capacity_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !2015
  store i32 -1, ptr %capacity_ptr, align 4, !dbg !2015
  ret void, !dbg !2015
}

define weak_odr ptr @"Vector::Vec<bool>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<bool>" %1) !dbg !2016 !qc.return_types !197 {
entry:
  %"Vector::i" = alloca i32, align 4
  %other = alloca %"Vector::Vec<bool>", align 8
    #dbg_value(ptr %0, !2018, !DIExpression(), !2020)
  store %"Vector::Vec<bool>" zeroinitializer, ptr %other, align 8, !dbg !2020
  store %"Vector::Vec<bool>" %1, ptr %other, align 8, !dbg !2020
    #dbg_value(%"Vector::Vec<bool>" %1, !2019, !DIExpression(), !2020)
  %2 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 2, !dbg !2021
  %capacity = load i32, ptr %2, align 4, !dbg !2021
  %3 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 2, !dbg !2021
  %capacity1 = load i32, ptr %3, align 4, !dbg !2021
  %icmpne = icmp ne i32 %capacity, %capacity1, !dbg !2021
  br i1 %icmpne, label %then, label %ifcont, !dbg !2021

then:                                             ; preds = %entry
  %4 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 2, !dbg !2022
  %capacity2 = load i32, ptr %4, align 4, !dbg !2022
  call void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %capacity2), !dbg !2022
  br label %ifcont, !dbg !2022

ifcont:                                           ; preds = %then, %entry
  %5 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 1, !dbg !2023
  %size = load i32, ptr %5, align 4, !dbg !2023
  %size_ptr = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !2023
  store i32 %size, ptr %size_ptr, align 4, !dbg !2023
  store i32 0, ptr %"Vector::i", align 4, !dbg !2024
    #dbg_declare(ptr %"Vector::i", !2025, !DIExpression(), !2024)
  store i32 0, ptr %"Vector::i", align 4, !dbg !2024
  br label %for.cond, !dbg !2024

for.cond:                                         ; preds = %for.inc, %ifcont
  %i = load i32, ptr %"Vector::i", align 4, !dbg !2024
  %6 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 1, !dbg !2024
  %size3 = load i32, ptr %6, align 4, !dbg !2024
  %icmplt = icmp slt i32 %i, %size3, !dbg !2024
  br i1 %icmplt, label %for.body, label %for.end, !dbg !2024

for.body:                                         ; preds = %for.cond
  %i4 = load i32, ptr %"Vector::i", align 4, !dbg !2026
  %7 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 0, !dbg !2026
  %data = load ptr, ptr %7, align 8, !dbg !2026
  %ptr_arr_asi = getelementptr i1, ptr %data, i32 %i4, !dbg !2026
  %i5 = load i32, ptr %"Vector::i", align 4, !dbg !2026
  %8 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %other, i32 0, i32 0, !dbg !2026
  %data6 = load ptr, ptr %8, align 8, !dbg !2026
  %ptr_arr_addr = getelementptr i1, ptr %data6, i32 %i5, !dbg !2026
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1, !dbg !2026
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1, !dbg !2026
  br label %for.inc, !dbg !2026

for.inc:                                          ; preds = %for.body
  %inc_deref = load i32, ptr %"Vector::i", align 4, !dbg !2024
  %inc = add i32 %inc_deref, 1, !dbg !2024
  store i32 %inc, ptr %"Vector::i", align 4, !dbg !2024
  br label %for.cond, !dbg !2024

for.end:                                          ; preds = %for.cond
  ret ptr %0, !dbg !2027
}

define weak_odr i1 @"Vector::Vec<bool>_isEmpty"(ptr %0) !dbg !2028 !qc.return_types !29 {
entry:
    #dbg_value(ptr %0, !2030, !DIExpression(), !2031)
  %1 = getelementptr inbounds nuw %"Vector::Vec<bool>", ptr %0, i32 0, i32 1, !dbg !2032
  %size = load i32, ptr %1, align 4, !dbg !2032
  %icmpeq = icmp eq i32 %size, 0, !dbg !2032
  ret i1 %icmpeq, !dbg !2032
}

define weak_odr %"String::Str" @"String::toStr<int>"(i32 %value) !dbg !2033 {
entry:
  %"temp_String::Str34" = alloca %"String::Str", align 8
  %"String::temp" = alloca i8, align 1
  %"String::j" = alloca i64, align 8
  %"String::i" = alloca i64, align 8
  %"String::buffer" = alloca [64 x i8], align 1
  %"String::negative" = alloca i1, align 1
  %"temp_String::Str" = alloca %"String::Str", align 8
  %value1 = alloca i32, align 4
    #dbg_value(i32 %value, !2035, !DIExpression(), !2036)
  store i32 0, ptr %value1, align 4, !dbg !2036
  store i32 %value, ptr %value1, align 4, !dbg !2036
  %value2 = load i32, ptr %value1, align 4, !dbg !2037
  %icmpeq = icmp eq i32 %value2, 0, !dbg !2037
  br i1 %icmpeq, label %then, label %ifcont, !dbg !2037

then:                                             ; preds = %entry
  store %"String::Str" zeroinitializer, ptr %"temp_String::Str", align 8, !dbg !2038
  call void @"String::Str_Str_char*"(ptr %"temp_String::Str", ptr @.str.64), !dbg !2038
  %"String::Str_inst" = load %"String::Str", ptr %"temp_String::Str", align 8, !dbg !2038
  ret %"String::Str" %"String::Str_inst", !dbg !2038

ifcont:                                           ; preds = %entry
  store i1 false, ptr %"String::negative", align 1, !dbg !2039
    #dbg_declare(ptr %"String::negative", !2040, !DIExpression(), !2039)
  store i1 false, ptr %"String::negative", align 1, !dbg !2039
  %value3 = load i32, ptr %value1, align 4, !dbg !2041
  %icmplt = icmp slt i32 %value3, 0, !dbg !2041
  br i1 %icmplt, label %then4, label %ifcont5, !dbg !2041

then4:                                            ; preds = %ifcont
  store i1 true, ptr %"String::negative", align 1, !dbg !2042
  %value6 = load i32, ptr %value1, align 4, !dbg !2043
  %neg = sub i32 0, %value6, !dbg !2043
  store i32 %neg, ptr %value1, align 4, !dbg !2043
  br label %ifcont5, !dbg !2043

ifcont5:                                          ; preds = %then4, %ifcont
  store [64 x i8] zeroinitializer, ptr %"String::buffer", align 1, !dbg !2044
    #dbg_declare(ptr %"String::buffer", !2045, !DIExpression(), !2044)
  call void @llvm.memset.inline.p0.i64(ptr %"String::buffer", i8 0, i64 64, i1 false), !dbg !2044
  store i64 0, ptr %"String::i", align 8, !dbg !2049
    #dbg_declare(ptr %"String::i", !2050, !DIExpression(), !2049)
  store i64 0, ptr %"String::i", align 8, !dbg !2049
  br label %while.cond, !dbg !2051

while.cond:                                       ; preds = %while.body, %ifcont5
  %value7 = load i32, ptr %value1, align 4, !dbg !2051
  %icmpgt = icmp sgt i32 %value7, 0, !dbg !2051
  br i1 %icmpgt, label %while.body, label %while.end, !dbg !2051

while.body:                                       ; preds = %while.cond
  %inc_deref = load i64, ptr %"String::i", align 8, !dbg !2052
  %inc = add i64 %inc_deref, 1, !dbg !2052
  store i64 %inc, ptr %"String::i", align 8, !dbg !2052
  %value8 = load i32, ptr %value1, align 4, !dbg !2052
  %srem = srem i32 %value8, 10, !dbg !2052
  %add = add i32 48, %srem, !dbg !2052
  %trunc_char = trunc i32 %add to i8, !dbg !2052
  %arr_elem_ptr = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %inc_deref, !dbg !2052
  store i8 %trunc_char, ptr %arr_elem_ptr, align 1, !dbg !2052
  %assign_lhs_val = load i32, ptr %value1, align 4, !dbg !2053
  %sdiv = sdiv i32 %assign_lhs_val, 10, !dbg !2053
  store i32 %sdiv, ptr %value1, align 4, !dbg !2053
  br label %while.cond, !dbg !2053

while.end:                                        ; preds = %while.cond
  %negative = load i1, ptr %"String::negative", align 1, !dbg !2054
  br i1 %negative, label %then9, label %ifcont10, !dbg !2054

then9:                                            ; preds = %while.end
  %inc_deref11 = load i64, ptr %"String::i", align 8, !dbg !2055
  %inc12 = add i64 %inc_deref11, 1, !dbg !2055
  store i64 %inc12, ptr %"String::i", align 8, !dbg !2055
  %arr_elem_ptr13 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %inc_deref11, !dbg !2055
  store i8 45, ptr %arr_elem_ptr13, align 1, !dbg !2055
  br label %ifcont10, !dbg !2055

ifcont10:                                         ; preds = %then9, %while.end
  store i64 0, ptr %"String::j", align 8, !dbg !2056
    #dbg_declare(ptr %"String::j", !2057, !DIExpression(), !2056)
  store i64 0, ptr %"String::j", align 8, !dbg !2056
  br label %for.cond, !dbg !2056

for.cond:                                         ; preds = %for.inc, %ifcont10
  %j = load i64, ptr %"String::j", align 8, !dbg !2056
  %i = load i64, ptr %"String::i", align 8, !dbg !2056
  %sdiv14 = sdiv i64 %i, 2, !dbg !2056
  %icmplt15 = icmp slt i64 %j, %sdiv14, !dbg !2056
  br i1 %icmplt15, label %for.body, label %for.end, !dbg !2056

for.body:                                         ; preds = %for.cond
  store i8 0, ptr %"String::temp", align 1, !dbg !2058
    #dbg_declare(ptr %"String::temp", !2059, !DIExpression(), !2058)
  %j16 = load i64, ptr %"String::j", align 8, !dbg !2058
  %arr_elem_ptr17 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %j16, !dbg !2058
  %arr_elem = load i8, ptr %arr_elem_ptr17, align 1, !dbg !2058
  store i8 %arr_elem, ptr %"String::temp", align 1, !dbg !2058
  %j18 = load i64, ptr %"String::j", align 8, !dbg !2060
  %i19 = load i64, ptr %"String::i", align 8, !dbg !2060
  %j20 = load i64, ptr %"String::j", align 8, !dbg !2060
  %sub = sub i64 %i19, %j20, !dbg !2060
  %sub21 = sub i64 %sub, 1, !dbg !2060
  %arr_elem_ptr22 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %sub21, !dbg !2060
  %arr_elem23 = load i8, ptr %arr_elem_ptr22, align 1, !dbg !2060
  %arr_elem_ptr24 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %j18, !dbg !2060
  store i8 %arr_elem23, ptr %arr_elem_ptr24, align 1, !dbg !2060
  %i25 = load i64, ptr %"String::i", align 8, !dbg !2061
  %j26 = load i64, ptr %"String::j", align 8, !dbg !2061
  %sub27 = sub i64 %i25, %j26, !dbg !2061
  %sub28 = sub i64 %sub27, 1, !dbg !2061
  %temp = load i8, ptr %"String::temp", align 1, !dbg !2061
  %arr_elem_ptr29 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %sub28, !dbg !2061
  store i8 %temp, ptr %arr_elem_ptr29, align 1, !dbg !2061
  br label %for.inc, !dbg !2061

for.inc:                                          ; preds = %for.body
  %inc_deref30 = load i64, ptr %"String::j", align 8, !dbg !2056
  %inc31 = add i64 %inc_deref30, 1, !dbg !2056
  store i64 %inc31, ptr %"String::j", align 8, !dbg !2056
  br label %for.cond, !dbg !2056

for.end:                                          ; preds = %for.cond
  %i32 = load i64, ptr %"String::i", align 8, !dbg !2062
  %arr_elem_ptr33 = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i64 %i32, !dbg !2062
  store i8 0, ptr %arr_elem_ptr33, align 1, !dbg !2062
  store %"String::Str" zeroinitializer, ptr %"temp_String::Str34", align 8, !dbg !2063
  %decayptr = getelementptr inbounds [64 x i8], ptr %"String::buffer", i32 0, i32 0, !dbg !2063
  call void @"String::Str_Str_char*"(ptr %"temp_String::Str34", ptr %decayptr), !dbg !2063
  %"String::Str_inst35" = load %"String::Str", ptr %"temp_String::Str34", align 8, !dbg !2063
  ret %"String::Str" %"String::Str_inst35", !dbg !2063
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

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}
!llvm.module.flags = !{!8, !9, !10}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "QuarticC", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "run.qc", directory: "")
!2 = !{!"clang version 23.1.4"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{!18, !5, i64 12}
!18 = !{!"_ZTS11qc_variadic", !19, i64 0, !5, i64 8, !5, i64 12}
!19 = !{!"any p2 pointer", !13, i64 0}
!20 = !{!18, !5, i64 8}
!21 = !{!18, !19, i64 0}
!22 = !{!13, !13, i64 0}
!23 = !{!"void"}
!24 = !{!"char*"}
!25 = !{}
!26 = !{!"Str"}
!27 = !{!"addr_t"}
!28 = !{!"View"}
!29 = !{!"bool"}
!30 = !{!"char&"}
!31 = !{!"qbool"}
!32 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<char*>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !35)
!33 = !DIFile(filename: "/home/luca/.qc/lib/std/collections/vector.hqc", directory: "")
!34 = !DISubroutineType(types: !25)
!35 = !{!36}
!36 = !DILocalVariable(name: "this", arg: 1, scope: !32, file: !33, line: 87, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<char*>*", baseType: !38, size: 64)
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<char*>", file: !33, line: 81, size: 128, align: 64, elements: !39)
!39 = !{!40, !44, !46}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "char**", baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "char*", baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !33, line: 81, baseType: !45, size: 32, align: 32, offset: 64)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !33, file: !33, line: 81, baseType: !45, size: 32, align: 32, offset: 96)
!47 = !DILocation(line: 87, scope: !32)
!48 = !DILocation(line: 88, scope: !32)
!49 = !DILocation(line: 89, scope: !32)
!50 = !DILocation(line: 90, scope: !32)
!51 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<char*>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !52)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "this", arg: 1, scope: !51, file: !33, line: 95, type: !37)
!54 = !DILocalVariable(name: "cap", arg: 2, scope: !51, file: !33, line: 95, type: !45)
!55 = !DILocation(line: 95, scope: !51)
!56 = !DILocation(line: 96, scope: !51)
!57 = !DILocation(line: 97, scope: !51)
!58 = !DILocation(line: 98, scope: !51)
!59 = !DILocation(line: 99, scope: !51)
!60 = !DILocation(line: 100, scope: !51)
!61 = !DILocation(line: 101, scope: !51)
!62 = !DILocation(line: 104, scope: !51)
!63 = !DILocalVariable(name: "new_data", scope: !51, file: !33, line: 104, type: !41)
!64 = !DILocation(line: 105, scope: !51)
!65 = !DILocation(line: 106, scope: !51)
!66 = !DILocation(line: 108, scope: !51)
!67 = !DILocation(line: 109, scope: !51)
!68 = !DILocation(line: 110, scope: !51)
!69 = !DILocation(line: 112, scope: !51)
!70 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<char*>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !71)
!71 = !{!72, !73}
!72 = !DILocalVariable(name: "this", arg: 1, scope: !70, file: !33, line: 117, type: !37)
!73 = !DILocalVariable(name: "value", arg: 2, scope: !70, file: !33, line: 117, type: !42)
!74 = !DILocation(line: 117, scope: !70)
!75 = !DILocation(line: 118, scope: !70)
!76 = !DILocation(line: 119, scope: !70)
!77 = !DILocation(line: 122, scope: !70)
!78 = !DILocation(line: 123, scope: !70)
!79 = !DILocation(line: 120, scope: !70)
!80 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<char*>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!81 = !{!82}
!82 = !DILocalVariable(name: "this", arg: 1, scope: !80, file: !33, line: 127, type: !37)
!83 = !{!"int"}
!84 = !DILocation(line: 127, scope: !80)
!85 = !DILocation(line: 128, scope: !80)
!86 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<char*>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !87)
!87 = !{!88}
!88 = !DILocalVariable(name: "this", arg: 1, scope: !86, file: !33, line: 132, type: !37)
!89 = !DILocation(line: 132, scope: !86)
!90 = !DILocation(line: 133, scope: !86)
!91 = !DILocation(line: 134, scope: !86)
!92 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<char*>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !93)
!93 = !{!94}
!94 = !DILocalVariable(name: "this", arg: 1, scope: !92, file: !33, line: 139, type: !37)
!95 = !DILocation(line: 139, scope: !92)
!96 = !DILocation(line: 140, scope: !92)
!97 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<char*>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !98)
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "this", arg: 1, scope: !97, file: !33, line: 146, type: !37)
!100 = !DILocalVariable(name: "data", arg: 2, scope: !97, file: !33, line: 146, type: !41)
!101 = !DILocalVariable(name: "length", arg: 3, scope: !97, file: !33, line: 146, type: !102)
!102 = !DIBasicType(name: "addr_t", size: 64, encoding: DW_ATE_unsigned)
!103 = !DILocation(line: 146, scope: !97)
!104 = !DILocation(line: 147, scope: !97)
!105 = !DILocation(line: 148, scope: !97)
!106 = !DILocation(line: 149, scope: !97)
!107 = !DILocation(line: 150, scope: !97)
!108 = !DILocation(line: 151, scope: !97)
!109 = !DILocalVariable(name: "i", scope: !97, file: !33, line: 151, type: !45)
!110 = !DILocation(line: 152, scope: !97)
!111 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<char*>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !112)
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "this", arg: 1, scope: !111, file: !33, line: 159, type: !37)
!114 = !DILocalVariable(name: "index", arg: 2, scope: !111, file: !33, line: 159, type: !102)
!115 = !{!"T&"}
!116 = !DILocation(line: 159, scope: !111)
!117 = !DILocation(line: 160, scope: !111)
!118 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<char*>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !119)
!119 = !{!120, !127, !128, !129}
!120 = !DILocalVariable(name: "this", arg: 1, scope: !118, file: !33, line: 27, type: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<char*>*", baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<char*>", file: !33, line: 18, size: 128, align: 64, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !41, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !33, line: 18, baseType: !45, size: 32, align: 32, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "current_index", scope: !33, file: !33, line: 18, baseType: !45, size: 32, align: 32, offset: 96)
!127 = !DILocalVariable(name: "data", arg: 2, scope: !118, file: !33, line: 27, type: !41)
!128 = !DILocalVariable(name: "size", arg: 3, scope: !118, file: !33, line: 27, type: !45)
!129 = !DILocalVariable(name: "is_end", arg: 4, scope: !118, file: !33, line: 27, type: !130)
!130 = !DIBasicType(name: "bool", size: 1, encoding: DW_ATE_float)
!131 = !DILocation(line: 27, scope: !118)
!132 = !DILocation(line: 28, scope: !118)
!133 = !DILocation(line: 29, scope: !118)
!134 = !DILocation(line: 30, scope: !118)
!135 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<char*>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !136)
!136 = !{!137}
!137 = !DILocalVariable(name: "this", arg: 1, scope: !135, file: !33, line: 34, type: !121)
!138 = !DILocation(line: 34, scope: !135)
!139 = !DILocation(line: 35, scope: !135)
!140 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<char*>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !141)
!141 = !{!142}
!142 = !DILocalVariable(name: "this", arg: 1, scope: !140, file: !33, line: 39, type: !121)
!143 = !{!"T"}
!144 = !DILocation(line: 39, scope: !140)
!145 = !DILocation(line: 40, scope: !140)
!146 = !DILocation(line: 41, scope: !140)
!147 = !DILocation(line: 43, scope: !140)
!148 = !DILocation(line: 44, scope: !140)
!149 = !DILocation(line: 46, scope: !140)
!150 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<char*>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !151)
!151 = !{!152}
!152 = !DILocalVariable(name: "this", arg: 1, scope: !150, file: !33, line: 50, type: !121)
!153 = !DILocation(line: 50, scope: !150)
!154 = !DILocation(line: 51, scope: !150)
!155 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<char*>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !156)
!156 = !{!157}
!157 = !DILocalVariable(name: "this", arg: 1, scope: !155, file: !33, line: 55, type: !121)
!158 = !DILocation(line: 55, scope: !155)
!159 = !DILocation(line: 56, scope: !155)
!160 = !DILocation(line: 57, scope: !155)
!161 = !DILocation(line: 59, scope: !155)
!162 = !DILocation(line: 60, scope: !155)
!163 = !DILocation(line: 62, scope: !155)
!164 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<char*>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !165)
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "this", arg: 1, scope: !164, file: !33, line: 67, type: !121)
!167 = !DILocalVariable(name: "index", arg: 2, scope: !164, file: !33, line: 67, type: !45)
!168 = !DILocation(line: 67, scope: !164)
!169 = !DILocation(line: 68, scope: !164)
!170 = !DILocation(line: 69, scope: !164)
!171 = !DILocation(line: 73, scope: !164)
!172 = !DILocation(line: 70, scope: !164)
!173 = !DILocation(line: 71, scope: !164)
!174 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<char*>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "this", arg: 1, scope: !174, file: !33, line: 164, type: !37)
!177 = !{!"Iterator::It<T>"}
!178 = !DILocation(line: 164, scope: !174)
!179 = !DILocation(line: 165, scope: !174)
!180 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<char*>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "this", arg: 1, scope: !180, file: !33, line: 169, type: !37)
!183 = !DILocation(line: 169, scope: !180)
!184 = !DILocation(line: 170, scope: !180)
!185 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<char*>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "this", arg: 1, scope: !185, file: !33, line: 175, type: !37)
!188 = !DILocation(line: 175, scope: !185)
!189 = !DILocation(line: 176, scope: !185)
!190 = !DILocation(line: 177, scope: !185)
!191 = !DILocation(line: 178, scope: !185)
!192 = !DILocation(line: 179, scope: !185)
!193 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<char*>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !194)
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "this", arg: 1, scope: !193, file: !33, line: 185, type: !37)
!196 = !DILocalVariable(name: "other", arg: 2, scope: !193, file: !33, line: 185, type: !38)
!197 = !{!"Vec<T>&"}
!198 = !DILocation(line: 185, scope: !193)
!199 = !DILocation(line: 186, scope: !193)
!200 = !DILocation(line: 187, scope: !193)
!201 = !DILocation(line: 189, scope: !193)
!202 = !DILocation(line: 190, scope: !193)
!203 = !DILocalVariable(name: "i", scope: !193, file: !33, line: 190, type: !45)
!204 = !DILocation(line: 191, scope: !193)
!205 = !DILocation(line: 193, scope: !193)
!206 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<char*>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !207)
!207 = !{!208}
!208 = !DILocalVariable(name: "this", arg: 1, scope: !206, file: !33, line: 197, type: !37)
!209 = !DILocation(line: 197, scope: !206)
!210 = !DILocation(line: 198, scope: !206)
!211 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<CQB::Build::Command>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !212)
!212 = !{!213}
!213 = !DILocalVariable(name: "this", arg: 1, scope: !211, file: !33, line: 87, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<CQB::Build::Command>*", baseType: !215, size: 64)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<CQB::Build::Command>", file: !33, line: 81, size: 128, align: 64, elements: !216)
!216 = !{!217, !44, !46}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !218, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::Build::Command*", baseType: !219, size: 64)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::Build::Command", file: !220, line: 7, size: 576, align: 64, elements: !221)
!220 = !DIFile(filename: "/home/luca/CQB/lib/build.qc", directory: "")
!221 = !{!222, !223, !224, !225, !226, !227}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "targetName", scope: !220, file: !220, line: 7, baseType: !42, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "commandBin", scope: !220, file: !220, line: 7, baseType: !42, size: 64, align: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "inputs", scope: !220, file: !220, line: 7, baseType: !38, size: 128, align: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "outputArtifact", scope: !220, file: !220, line: 7, baseType: !42, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !220, file: !220, line: 7, baseType: !38, size: 128, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "dependencies", scope: !220, file: !220, line: 7, baseType: !38, size: 128, align: 64, offset: 448)
!228 = !DILocation(line: 87, scope: !211)
!229 = !DILocation(line: 88, scope: !211)
!230 = !DILocation(line: 89, scope: !211)
!231 = !DILocation(line: 90, scope: !211)
!232 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<CQB::Build::Command>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !233)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "this", arg: 1, scope: !232, file: !33, line: 95, type: !214)
!235 = !DILocalVariable(name: "cap", arg: 2, scope: !232, file: !33, line: 95, type: !45)
!236 = !DILocation(line: 95, scope: !232)
!237 = !DILocation(line: 96, scope: !232)
!238 = !DILocation(line: 97, scope: !232)
!239 = !DILocation(line: 98, scope: !232)
!240 = !DILocation(line: 99, scope: !232)
!241 = !DILocation(line: 100, scope: !232)
!242 = !DILocation(line: 101, scope: !232)
!243 = !DILocation(line: 104, scope: !232)
!244 = !DILocalVariable(name: "new_data", scope: !232, file: !33, line: 104, type: !218)
!245 = !DILocation(line: 105, scope: !232)
!246 = !DILocation(line: 106, scope: !232)
!247 = !DILocation(line: 108, scope: !232)
!248 = !DILocation(line: 109, scope: !232)
!249 = !DILocation(line: 110, scope: !232)
!250 = !DILocation(line: 112, scope: !232)
!251 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<CQB::Build::Command>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !252)
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "this", arg: 1, scope: !251, file: !33, line: 117, type: !214)
!254 = !DILocalVariable(name: "value", arg: 2, scope: !251, file: !33, line: 117, type: !219)
!255 = !DILocation(line: 117, scope: !251)
!256 = !DILocation(line: 118, scope: !251)
!257 = !DILocation(line: 119, scope: !251)
!258 = !DILocation(line: 122, scope: !251)
!259 = !DILocation(line: 123, scope: !251)
!260 = !DILocation(line: 120, scope: !251)
!261 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<CQB::Build::Command>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !262)
!262 = !{!263}
!263 = !DILocalVariable(name: "this", arg: 1, scope: !261, file: !33, line: 127, type: !214)
!264 = !DILocation(line: 127, scope: !261)
!265 = !DILocation(line: 128, scope: !261)
!266 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<CQB::Build::Command>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !267)
!267 = !{!268}
!268 = !DILocalVariable(name: "this", arg: 1, scope: !266, file: !33, line: 132, type: !214)
!269 = !DILocation(line: 132, scope: !266)
!270 = !DILocation(line: 133, scope: !266)
!271 = !DILocation(line: 134, scope: !266)
!272 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<CQB::Build::Command>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "this", arg: 1, scope: !272, file: !33, line: 139, type: !214)
!275 = !DILocation(line: 139, scope: !272)
!276 = !DILocation(line: 140, scope: !272)
!277 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<CQB::Build::Command>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !278)
!278 = !{!279, !280, !281}
!279 = !DILocalVariable(name: "this", arg: 1, scope: !277, file: !33, line: 146, type: !214)
!280 = !DILocalVariable(name: "data", arg: 2, scope: !277, file: !33, line: 146, type: !218)
!281 = !DILocalVariable(name: "length", arg: 3, scope: !277, file: !33, line: 146, type: !102)
!282 = !DILocation(line: 146, scope: !277)
!283 = !DILocation(line: 147, scope: !277)
!284 = !DILocation(line: 148, scope: !277)
!285 = !DILocation(line: 149, scope: !277)
!286 = !DILocation(line: 150, scope: !277)
!287 = !DILocation(line: 151, scope: !277)
!288 = !DILocalVariable(name: "i", scope: !277, file: !33, line: 151, type: !45)
!289 = !DILocation(line: 152, scope: !277)
!290 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<CQB::Build::Command>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !291)
!291 = !{!292, !293}
!292 = !DILocalVariable(name: "this", arg: 1, scope: !290, file: !33, line: 159, type: !214)
!293 = !DILocalVariable(name: "index", arg: 2, scope: !290, file: !33, line: 159, type: !102)
!294 = !DILocation(line: 159, scope: !290)
!295 = !DILocation(line: 160, scope: !290)
!296 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !297)
!297 = !{!298, !303, !304, !305}
!298 = !DILocalVariable(name: "this", arg: 1, scope: !296, file: !33, line: 27, type: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<CQB::Build::Command>*", baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<CQB::Build::Command>", file: !33, line: 18, size: 128, align: 64, elements: !301)
!301 = !{!302, !125, !126}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !218, size: 64, align: 64)
!303 = !DILocalVariable(name: "data", arg: 2, scope: !296, file: !33, line: 27, type: !218)
!304 = !DILocalVariable(name: "size", arg: 3, scope: !296, file: !33, line: 27, type: !45)
!305 = !DILocalVariable(name: "is_end", arg: 4, scope: !296, file: !33, line: 27, type: !130)
!306 = !DILocation(line: 27, scope: !296)
!307 = !DILocation(line: 28, scope: !296)
!308 = !DILocation(line: 29, scope: !296)
!309 = !DILocation(line: 30, scope: !296)
!310 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<CQB::Build::Command>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !311)
!311 = !{!312}
!312 = !DILocalVariable(name: "this", arg: 1, scope: !310, file: !33, line: 34, type: !299)
!313 = !DILocation(line: 34, scope: !310)
!314 = !DILocation(line: 35, scope: !310)
!315 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<CQB::Build::Command>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !316)
!316 = !{!317}
!317 = !DILocalVariable(name: "this", arg: 1, scope: !315, file: !33, line: 39, type: !299)
!318 = !DILocation(line: 39, scope: !315)
!319 = !DILocation(line: 40, scope: !315)
!320 = !DILocation(line: 41, scope: !315)
!321 = !DILocation(line: 43, scope: !315)
!322 = !DILocation(line: 44, scope: !315)
!323 = !DILocation(line: 46, scope: !315)
!324 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<CQB::Build::Command>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !325)
!325 = !{!326}
!326 = !DILocalVariable(name: "this", arg: 1, scope: !324, file: !33, line: 50, type: !299)
!327 = !DILocation(line: 50, scope: !324)
!328 = !DILocation(line: 51, scope: !324)
!329 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<CQB::Build::Command>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !330)
!330 = !{!331}
!331 = !DILocalVariable(name: "this", arg: 1, scope: !329, file: !33, line: 55, type: !299)
!332 = !DILocation(line: 55, scope: !329)
!333 = !DILocation(line: 56, scope: !329)
!334 = !DILocation(line: 57, scope: !329)
!335 = !DILocation(line: 59, scope: !329)
!336 = !DILocation(line: 60, scope: !329)
!337 = !DILocation(line: 62, scope: !329)
!338 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<CQB::Build::Command>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !339)
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "this", arg: 1, scope: !338, file: !33, line: 67, type: !299)
!341 = !DILocalVariable(name: "index", arg: 2, scope: !338, file: !33, line: 67, type: !45)
!342 = !DILocation(line: 67, scope: !338)
!343 = !DILocation(line: 68, scope: !338)
!344 = !DILocation(line: 69, scope: !338)
!345 = !DILocation(line: 73, scope: !338)
!346 = !DILocation(line: 70, scope: !338)
!347 = !DILocation(line: 71, scope: !338)
!348 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<CQB::Build::Command>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !349)
!349 = !{!350}
!350 = !DILocalVariable(name: "this", arg: 1, scope: !348, file: !33, line: 164, type: !214)
!351 = !DILocation(line: 164, scope: !348)
!352 = !DILocation(line: 165, scope: !348)
!353 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<CQB::Build::Command>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !354)
!354 = !{!355}
!355 = !DILocalVariable(name: "this", arg: 1, scope: !353, file: !33, line: 169, type: !214)
!356 = !DILocation(line: 169, scope: !353)
!357 = !DILocation(line: 170, scope: !353)
!358 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<CQB::Build::Command>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !359)
!359 = !{!360}
!360 = !DILocalVariable(name: "this", arg: 1, scope: !358, file: !33, line: 175, type: !214)
!361 = !DILocation(line: 175, scope: !358)
!362 = !DILocation(line: 176, scope: !358)
!363 = !DILocation(line: 177, scope: !358)
!364 = !DILocation(line: 178, scope: !358)
!365 = !DILocation(line: 179, scope: !358)
!366 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<CQB::Build::Command>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !367)
!367 = !{!368, !369}
!368 = !DILocalVariable(name: "this", arg: 1, scope: !366, file: !33, line: 185, type: !214)
!369 = !DILocalVariable(name: "other", arg: 2, scope: !366, file: !33, line: 185, type: !215)
!370 = !DILocation(line: 185, scope: !366)
!371 = !DILocation(line: 186, scope: !366)
!372 = !DILocation(line: 187, scope: !366)
!373 = !DILocation(line: 189, scope: !366)
!374 = !DILocation(line: 190, scope: !366)
!375 = !DILocalVariable(name: "i", scope: !366, file: !33, line: 190, type: !45)
!376 = !DILocation(line: 191, scope: !366)
!377 = !DILocation(line: 193, scope: !366)
!378 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<CQB::Build::Command>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !379)
!379 = !{!380}
!380 = !DILocalVariable(name: "this", arg: 1, scope: !378, file: !33, line: 197, type: !214)
!381 = !DILocation(line: 197, scope: !378)
!382 = !DILocation(line: 198, scope: !378)
!383 = distinct !DISubprogram(name: "current_command", linkageName: "CQB::Build::Builder_current_command", scope: !220, file: !220, line: 18, type: !34, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !384)
!384 = !{!385}
!385 = !DILocalVariable(name: "this", arg: 1, scope: !383, file: !220, line: 18, type: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::Build::Builder*", baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::Build::Builder", file: !220, line: 15, size: 192, align: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "project", scope: !220, file: !220, line: 15, baseType: !42, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !220, file: !220, line: 15, baseType: !215, size: 128, align: 64, offset: 64)
!391 = !{!"Command&"}
!392 = !DILocation(line: 18, scope: !383)
!393 = !DILocation(line: 19, scope: !383)
!394 = !DILocation(line: 20, scope: !383)
!395 = !DILocation(line: 22, scope: !383)
!396 = distinct !DISubprogram(name: "Builder", linkageName: "CQB::Build::Builder_Builder", scope: !220, file: !220, line: 24, type: !34, scopeLine: 24, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !397)
!397 = !{!398}
!398 = !DILocalVariable(name: "this", arg: 1, scope: !396, file: !220, line: 24, type: !386)
!399 = !DILocation(line: 24, scope: !396)
!400 = !DILocation(line: 25, scope: !396)
!401 = distinct !DISubprogram(name: "project", linkageName: "CQB::Build::Builder_project_char*", scope: !220, file: !220, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !402)
!402 = !{!403, !404}
!403 = !DILocalVariable(name: "this", arg: 1, scope: !401, file: !220, line: 27, type: !386)
!404 = !DILocalVariable(name: "name", arg: 2, scope: !401, file: !220, line: 27, type: !42)
!405 = !{!"Builder*"}
!406 = !DILocation(line: 27, scope: !401)
!407 = !DILocation(line: 28, scope: !401)
!408 = !DILocation(line: 29, scope: !401)
!409 = distinct !DISubprogram(name: "alias", linkageName: "CQB::Build::Builder_alias_char*_char*", scope: !220, file: !220, line: 31, type: !34, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !410)
!410 = !{!411, !412, !413}
!411 = !DILocalVariable(name: "this", arg: 1, scope: !409, file: !220, line: 31, type: !386)
!412 = !DILocalVariable(name: "fileName", arg: 2, scope: !409, file: !220, line: 31, type: !42)
!413 = !DILocalVariable(name: "aliasName", arg: 3, scope: !409, file: !220, line: 31, type: !42)
!414 = !DILocation(line: 31, scope: !409)
!415 = !DILocation(line: 32, scope: !409)
!416 = !DILocation(line: 33, scope: !409)
!417 = !DILocation(line: 34, scope: !409)
!418 = !DILocation(line: 35, scope: !409)
!419 = distinct !DISubprogram(name: "aliasDir", linkageName: "CQB::Build::Builder_aliasDir_char*_char*", scope: !220, file: !220, line: 37, type: !34, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !420)
!420 = !{!421, !422, !423}
!421 = !DILocalVariable(name: "this", arg: 1, scope: !419, file: !220, line: 37, type: !386)
!422 = !DILocalVariable(name: "dirName", arg: 2, scope: !419, file: !220, line: 37, type: !42)
!423 = !DILocalVariable(name: "aliasName", arg: 3, scope: !419, file: !220, line: 37, type: !42)
!424 = !DILocation(line: 37, scope: !419)
!425 = !DILocation(line: 38, scope: !419)
!426 = !DILocation(line: 39, scope: !419)
!427 = !DILocation(line: 40, scope: !419)
!428 = !DILocation(line: 41, scope: !419)
!429 = distinct !DISubprogram(name: "define", linkageName: "CQB::Build::Builder_define_char*", scope: !220, file: !220, line: 43, type: !34, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !430)
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "this", arg: 1, scope: !429, file: !220, line: 43, type: !386)
!432 = !DILocalVariable(name: "to_define", arg: 2, scope: !429, file: !220, line: 43, type: !42)
!433 = !DILocation(line: 43, scope: !429)
!434 = !DILocation(line: 44, scope: !429)
!435 = !DILocalVariable(name: "def", scope: !429, file: !220, line: 44, type: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "String::Str", file: !437, line: 25, size: 192, align: 64, elements: !438)
!437 = !DIFile(filename: "/home/luca/.qc/lib/std/string.hqc", directory: "")
!438 = !{!439, !440, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !437, line: 25, baseType: !42, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !437, file: !437, line: 25, baseType: !102, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !437, file: !437, line: 25, baseType: !102, size: 64, align: 64, offset: 128)
!442 = !DILocation(line: 45, scope: !429)
!443 = !DILocalVariable(name: "toStr", scope: !429, file: !220, line: 45, type: !436)
!444 = !DILocation(line: 46, scope: !429)
!445 = !DILocation(line: 47, scope: !429)
!446 = !DILocation(line: 48, scope: !429)
!447 = !DILocation(line: 49, scope: !429)
!448 = !DILocation(line: 50, scope: !429)
!449 = distinct !DISubprogram(name: "linkDir", linkageName: "CQB::Build::Builder_linkDir_char*", scope: !220, file: !220, line: 52, type: !34, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !450)
!450 = !{!451, !452}
!451 = !DILocalVariable(name: "this", arg: 1, scope: !449, file: !220, line: 52, type: !386)
!452 = !DILocalVariable(name: "to_link", arg: 2, scope: !449, file: !220, line: 52, type: !42)
!453 = !DILocation(line: 52, scope: !449)
!454 = !DILocation(line: 53, scope: !449)
!455 = !DILocalVariable(name: "def", scope: !449, file: !220, line: 53, type: !436)
!456 = !DILocation(line: 54, scope: !449)
!457 = !DILocalVariable(name: "toStr", scope: !449, file: !220, line: 54, type: !436)
!458 = !DILocation(line: 55, scope: !449)
!459 = !DILocation(line: 56, scope: !449)
!460 = !DILocation(line: 57, scope: !449)
!461 = !DILocation(line: 58, scope: !449)
!462 = !DILocation(line: 59, scope: !449)
!463 = distinct !DISubprogram(name: "link", linkageName: "CQB::Build::Builder_link_char*", scope: !220, file: !220, line: 61, type: !34, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !464)
!464 = !{!465, !466}
!465 = !DILocalVariable(name: "this", arg: 1, scope: !463, file: !220, line: 61, type: !386)
!466 = !DILocalVariable(name: "to_link", arg: 2, scope: !463, file: !220, line: 61, type: !42)
!467 = !DILocation(line: 61, scope: !463)
!468 = !DILocation(line: 62, scope: !463)
!469 = !DILocalVariable(name: "def", scope: !463, file: !220, line: 62, type: !436)
!470 = !DILocation(line: 63, scope: !463)
!471 = !DILocalVariable(name: "toStr", scope: !463, file: !220, line: 63, type: !436)
!472 = !DILocation(line: 64, scope: !463)
!473 = !DILocation(line: 65, scope: !463)
!474 = !DILocation(line: 66, scope: !463)
!475 = !DILocation(line: 67, scope: !463)
!476 = !DILocation(line: 68, scope: !463)
!477 = distinct !DISubprogram(name: "include", linkageName: "CQB::Build::Builder_include_char*", scope: !220, file: !220, line: 70, type: !34, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !478)
!478 = !{!479, !480}
!479 = !DILocalVariable(name: "this", arg: 1, scope: !477, file: !220, line: 70, type: !386)
!480 = !DILocalVariable(name: "to_inc", arg: 2, scope: !477, file: !220, line: 70, type: !42)
!481 = !DILocation(line: 70, scope: !477)
!482 = !DILocation(line: 71, scope: !477)
!483 = !DILocalVariable(name: "def", scope: !477, file: !220, line: 71, type: !436)
!484 = !DILocation(line: 72, scope: !477)
!485 = !DILocalVariable(name: "toStr", scope: !477, file: !220, line: 72, type: !436)
!486 = !DILocation(line: 73, scope: !477)
!487 = !DILocation(line: 74, scope: !477)
!488 = !DILocation(line: 75, scope: !477)
!489 = !DILocation(line: 76, scope: !477)
!490 = !DILocation(line: 77, scope: !477)
!491 = distinct !DISubprogram(name: "linkerFlag", linkageName: "CQB::Build::Builder_linkerFlag_char*", scope: !220, file: !220, line: 79, type: !34, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !492)
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "this", arg: 1, scope: !491, file: !220, line: 79, type: !386)
!494 = !DILocalVariable(name: "to_flag", arg: 2, scope: !491, file: !220, line: 79, type: !42)
!495 = !DILocation(line: 79, scope: !491)
!496 = !DILocation(line: 80, scope: !491)
!497 = !DILocalVariable(name: "def", scope: !491, file: !220, line: 80, type: !436)
!498 = !DILocation(line: 81, scope: !491)
!499 = !DILocalVariable(name: "toStr", scope: !491, file: !220, line: 81, type: !436)
!500 = !DILocation(line: 82, scope: !491)
!501 = !DILocation(line: 83, scope: !491)
!502 = !DILocation(line: 84, scope: !491)
!503 = !DILocation(line: 85, scope: !491)
!504 = !DILocation(line: 86, scope: !491)
!505 = distinct !DISubprogram(name: "warn", linkageName: "CQB::Build::Builder_warn_char*", scope: !220, file: !220, line: 88, type: !34, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(name: "this", arg: 1, scope: !505, file: !220, line: 88, type: !386)
!508 = !DILocalVariable(name: "to_warn", arg: 2, scope: !505, file: !220, line: 88, type: !42)
!509 = !DILocation(line: 88, scope: !505)
!510 = !DILocation(line: 89, scope: !505)
!511 = !DILocalVariable(name: "def", scope: !505, file: !220, line: 89, type: !436)
!512 = !DILocation(line: 90, scope: !505)
!513 = !DILocalVariable(name: "toStr", scope: !505, file: !220, line: 90, type: !436)
!514 = !DILocation(line: 91, scope: !505)
!515 = !DILocation(line: 92, scope: !505)
!516 = !DILocation(line: 93, scope: !505)
!517 = !DILocation(line: 94, scope: !505)
!518 = !DILocation(line: 95, scope: !505)
!519 = distinct !DISubprogram(name: "noWarn", linkageName: "CQB::Build::Builder_noWarn_char*", scope: !220, file: !220, line: 97, type: !34, scopeLine: 97, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !520)
!520 = !{!521, !522}
!521 = !DILocalVariable(name: "this", arg: 1, scope: !519, file: !220, line: 97, type: !386)
!522 = !DILocalVariable(name: "to_warn", arg: 2, scope: !519, file: !220, line: 97, type: !42)
!523 = !DILocation(line: 97, scope: !519)
!524 = !DILocation(line: 98, scope: !519)
!525 = !DILocalVariable(name: "def", scope: !519, file: !220, line: 98, type: !436)
!526 = !DILocation(line: 99, scope: !519)
!527 = !DILocalVariable(name: "toStr", scope: !519, file: !220, line: 99, type: !436)
!528 = !DILocation(line: 100, scope: !519)
!529 = !DILocation(line: 101, scope: !519)
!530 = !DILocation(line: 102, scope: !519)
!531 = !DILocation(line: 103, scope: !519)
!532 = !DILocation(line: 104, scope: !519)
!533 = distinct !DISubprogram(name: "error", linkageName: "CQB::Build::Builder_error_char*", scope: !220, file: !220, line: 106, type: !34, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !534)
!534 = !{!535, !536}
!535 = !DILocalVariable(name: "this", arg: 1, scope: !533, file: !220, line: 106, type: !386)
!536 = !DILocalVariable(name: "to_error", arg: 2, scope: !533, file: !220, line: 106, type: !42)
!537 = !DILocation(line: 106, scope: !533)
!538 = !DILocation(line: 107, scope: !533)
!539 = !DILocalVariable(name: "def", scope: !533, file: !220, line: 107, type: !436)
!540 = !DILocation(line: 108, scope: !533)
!541 = !DILocalVariable(name: "toStr", scope: !533, file: !220, line: 108, type: !436)
!542 = !DILocation(line: 109, scope: !533)
!543 = !DILocation(line: 110, scope: !533)
!544 = !DILocation(line: 111, scope: !533)
!545 = !DILocation(line: 112, scope: !533)
!546 = !DILocation(line: 113, scope: !533)
!547 = distinct !DISubprogram(name: "cArgs", linkageName: "CQB::Build::Builder_cArgs", scope: !220, file: !220, line: 115, type: !34, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !548)
!548 = !{!549}
!549 = !DILocalVariable(name: "this", arg: 1, scope: !547, file: !220, line: 115, type: !386)
!550 = !DILocation(line: 115, scope: !547)
!551 = !DILocation(line: 116, scope: !547)
!552 = !DILocation(line: 117, scope: !547)
!553 = distinct !DISubprogram(name: "addExecutable", linkageName: "CQB::Build::Builder_addExecutable_char*_Vector::Vec<char*>", scope: !220, file: !220, line: 119, type: !34, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !554)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "this", arg: 1, scope: !553, file: !220, line: 119, type: !386)
!556 = !DILocalVariable(name: "outputName", arg: 2, scope: !553, file: !220, line: 119, type: !42)
!557 = !DILocalVariable(name: "sourceFiles", arg: 3, scope: !553, file: !220, line: 119, type: !38)
!558 = !DILocation(line: 119, scope: !553)
!559 = !DILocation(line: 120, scope: !553)
!560 = !DILocalVariable(name: "cmd", scope: !553, file: !220, line: 120, type: !219)
!561 = !DILocation(line: 121, scope: !553)
!562 = !DILocation(line: 122, scope: !553)
!563 = !DILocation(line: 123, scope: !553)
!564 = !DILocation(line: 124, scope: !553)
!565 = !DILocation(line: 125, scope: !553)
!566 = !DILocation(line: 126, scope: !553)
!567 = !DILocation(line: 127, scope: !553)
!568 = distinct !DISubprogram(name: "addObject", linkageName: "CQB::Build::Builder_addObject_char*_Vector::Vec<char*>", scope: !220, file: !220, line: 129, type: !34, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !569)
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(name: "this", arg: 1, scope: !568, file: !220, line: 129, type: !386)
!571 = !DILocalVariable(name: "outputName", arg: 2, scope: !568, file: !220, line: 129, type: !42)
!572 = !DILocalVariable(name: "sourceFiles", arg: 3, scope: !568, file: !220, line: 129, type: !38)
!573 = !DILocation(line: 129, scope: !568)
!574 = !DILocation(line: 130, scope: !568)
!575 = !DILocalVariable(name: "cmd", scope: !568, file: !220, line: 130, type: !219)
!576 = !DILocation(line: 131, scope: !568)
!577 = !DILocation(line: 132, scope: !568)
!578 = !DILocation(line: 133, scope: !568)
!579 = !DILocation(line: 134, scope: !568)
!580 = !DILocation(line: 135, scope: !568)
!581 = !DILocation(line: 136, scope: !568)
!582 = !DILocation(line: 137, scope: !568)
!583 = !DILocation(line: 138, scope: !568)
!584 = distinct !DISubprogram(name: "addStaticLibrary", linkageName: "CQB::Build::Builder_addStaticLibrary_char*_Vector::Vec<char*>", scope: !220, file: !220, line: 140, type: !34, scopeLine: 140, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !585)
!585 = !{!586, !587, !588}
!586 = !DILocalVariable(name: "this", arg: 1, scope: !584, file: !220, line: 140, type: !386)
!587 = !DILocalVariable(name: "outputName", arg: 2, scope: !584, file: !220, line: 140, type: !42)
!588 = !DILocalVariable(name: "objectFiles", arg: 3, scope: !584, file: !220, line: 140, type: !38)
!589 = !DILocation(line: 140, scope: !584)
!590 = !DILocation(line: 141, scope: !584)
!591 = !DILocalVariable(name: "cmd", scope: !584, file: !220, line: 141, type: !219)
!592 = !DILocation(line: 142, scope: !584)
!593 = !DILocation(line: 143, scope: !584)
!594 = !DILocation(line: 144, scope: !584)
!595 = !DILocation(line: 145, scope: !584)
!596 = !DILocation(line: 146, scope: !584)
!597 = !DILocation(line: 147, scope: !584)
!598 = !DILocation(line: 148, scope: !584)
!599 = !DILocation(line: 149, scope: !584)
!600 = distinct !DISubprogram(name: "addDynamicLibrary", linkageName: "CQB::Build::Builder_addDynamicLibrary_char*_Vector::Vec<char*>", scope: !220, file: !220, line: 151, type: !34, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !601)
!601 = !{!602, !603, !604}
!602 = !DILocalVariable(name: "this", arg: 1, scope: !600, file: !220, line: 151, type: !386)
!603 = !DILocalVariable(name: "outputName", arg: 2, scope: !600, file: !220, line: 151, type: !42)
!604 = !DILocalVariable(name: "sourceFiles", arg: 3, scope: !600, file: !220, line: 151, type: !38)
!605 = !DILocation(line: 151, scope: !600)
!606 = !DILocation(line: 152, scope: !600)
!607 = !DILocalVariable(name: "cmd", scope: !600, file: !220, line: 152, type: !219)
!608 = !DILocation(line: 153, scope: !600)
!609 = !DILocation(line: 154, scope: !600)
!610 = !DILocation(line: 155, scope: !600)
!611 = !DILocation(line: 156, scope: !600)
!612 = !DILocation(line: 157, scope: !600)
!613 = !DILocation(line: 158, scope: !600)
!614 = !DILocation(line: 159, scope: !600)
!615 = !DILocation(line: 160, scope: !600)
!616 = distinct !DISubprogram(name: "targetFlags", linkageName: "CQB::Build::Builder_targetFlags_Vector::Vec<char*>", scope: !220, file: !220, line: 162, type: !34, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !617)
!617 = !{!618, !619}
!618 = !DILocalVariable(name: "this", arg: 1, scope: !616, file: !220, line: 162, type: !386)
!619 = !DILocalVariable(name: "targetflags", arg: 2, scope: !616, file: !220, line: 162, type: !38)
!620 = !DILocation(line: 162, scope: !616)
!621 = !DILocation(line: 163, scope: !616)
!622 = !DILocalVariable(name: "i", scope: !616, file: !220, line: 163, type: !102)
!623 = !DILocation(line: 164, scope: !616)
!624 = !DILocation(line: 166, scope: !616)
!625 = distinct !DISubprogram(name: "addCustomCommand", linkageName: "CQB::Build::Builder_addCustomCommand_char*_char*_char*", scope: !220, file: !220, line: 168, type: !34, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !626)
!626 = !{!627, !628, !629, !630}
!627 = !DILocalVariable(name: "this", arg: 1, scope: !625, file: !220, line: 168, type: !386)
!628 = !DILocalVariable(name: "targetName", arg: 2, scope: !625, file: !220, line: 168, type: !42)
!629 = !DILocalVariable(name: "commandBin", arg: 3, scope: !625, file: !220, line: 168, type: !42)
!630 = !DILocalVariable(name: "outputArtifact", arg: 4, scope: !625, file: !220, line: 168, type: !42)
!631 = !DILocation(line: 168, scope: !625)
!632 = !DILocation(line: 169, scope: !625)
!633 = !DILocalVariable(name: "cmd", scope: !625, file: !220, line: 169, type: !219)
!634 = !DILocation(line: 170, scope: !625)
!635 = !DILocation(line: 171, scope: !625)
!636 = !DILocation(line: 172, scope: !625)
!637 = !DILocation(line: 173, scope: !625)
!638 = !DILocation(line: 174, scope: !625)
!639 = !DILocation(line: 175, scope: !625)
!640 = distinct !DISubprogram(name: "flag", linkageName: "CQB::Build::Builder_flag_char*", scope: !220, file: !220, line: 177, type: !34, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !641)
!641 = !{!642, !643}
!642 = !DILocalVariable(name: "this", arg: 1, scope: !640, file: !220, line: 177, type: !386)
!643 = !DILocalVariable(name: "flag", arg: 2, scope: !640, file: !220, line: 177, type: !42)
!644 = !DILocation(line: 177, scope: !640)
!645 = !DILocation(line: 178, scope: !640)
!646 = !DILocation(line: 179, scope: !640)
!647 = distinct !DISubprogram(name: "addCDependency", linkageName: "CQB::Build::Builder_addCDependency_char*_Vector::Vec<char*>", scope: !220, file: !220, line: 181, type: !34, scopeLine: 181, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !648)
!648 = !{!649, !650, !651}
!649 = !DILocalVariable(name: "this", arg: 1, scope: !647, file: !220, line: 181, type: !386)
!650 = !DILocalVariable(name: "targetName", arg: 2, scope: !647, file: !220, line: 181, type: !42)
!651 = !DILocalVariable(name: "cSourceFiles", arg: 3, scope: !647, file: !220, line: 181, type: !38)
!652 = !DILocation(line: 181, scope: !647)
!653 = !DILocation(line: 182, scope: !647)
!654 = !DILocalVariable(name: "cmd", scope: !647, file: !220, line: 182, type: !219)
!655 = !DILocation(line: 183, scope: !647)
!656 = !DILocation(line: 184, scope: !647)
!657 = !DILocation(line: 185, scope: !647)
!658 = !DILocation(line: 186, scope: !647)
!659 = !DILocation(line: 187, scope: !647)
!660 = !DILocation(line: 188, scope: !647)
!661 = !DILocation(line: 189, scope: !647)
!662 = distinct !DISubprogram(name: "dependsOn", linkageName: "CQB::Build::Builder_dependsOn_char*", scope: !220, file: !220, line: 191, type: !34, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !663)
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "this", arg: 1, scope: !662, file: !220, line: 191, type: !386)
!665 = !DILocalVariable(name: "dependencyName", arg: 2, scope: !662, file: !220, line: 191, type: !42)
!666 = !DILocation(line: 191, scope: !662)
!667 = !DILocation(line: 192, scope: !662)
!668 = !DILocation(line: 193, scope: !662)
!669 = distinct !DISubprogram(name: "extractGraph", linkageName: "CQB::Build::Builder_extractGraph", scope: !220, file: !220, line: 195, type: !34, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !670)
!670 = !{!671}
!671 = !DILocalVariable(name: "this", arg: 1, scope: !669, file: !220, line: 195, type: !386)
!672 = !{!"Vector::Vec<Command>"}
!673 = !DILocation(line: 195, scope: !669)
!674 = !DILocation(line: 196, scope: !669)
!675 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<CQB::CI::Task*>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !676)
!676 = !{!677}
!677 = !DILocalVariable(name: "this", arg: 1, scope: !675, file: !33, line: 87, type: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<CQB::CI::Task*>*", baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<CQB::CI::Task*>", file: !33, line: 81, size: 128, align: 64, elements: !680)
!680 = !{!681, !44, !46}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !682, size: 64, align: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Task**", baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Task*", baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::CI::Task", file: !685, line: 10, size: 384, align: 64, elements: !686)
!685 = !DIFile(filename: "/home/luca/CQB/lib/ci.qc", directory: "")
!686 = !{!687, !688, !697, !698}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !685, line: 10, baseType: !42, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !685, file: !685, line: 10, baseType: !689, size: 128, align: 64, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<CQB::CI::Step>", file: !33, line: 81, size: 128, align: 64, elements: !690)
!690 = !{!691, !44, !46}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !692, size: 64, align: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Step*", baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::CI::Step", file: !685, line: 6, size: 192, align: 64, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !685, file: !685, line: 6, baseType: !42, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !685, file: !685, line: 6, baseType: !38, size: 128, align: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !685, line: 10, baseType: !679, size: 128, align: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ignoreFailure", scope: !685, file: !685, line: 10, baseType: !130, size: 8, align: 8, offset: 320)
!699 = !DILocation(line: 87, scope: !675)
!700 = !DILocation(line: 88, scope: !675)
!701 = !DILocation(line: 89, scope: !675)
!702 = !DILocation(line: 90, scope: !675)
!703 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<CQB::CI::Task*>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !704)
!704 = !{!705, !706}
!705 = !DILocalVariable(name: "this", arg: 1, scope: !703, file: !33, line: 95, type: !678)
!706 = !DILocalVariable(name: "cap", arg: 2, scope: !703, file: !33, line: 95, type: !45)
!707 = !DILocation(line: 95, scope: !703)
!708 = !DILocation(line: 96, scope: !703)
!709 = !DILocation(line: 97, scope: !703)
!710 = !DILocation(line: 98, scope: !703)
!711 = !DILocation(line: 99, scope: !703)
!712 = !DILocation(line: 100, scope: !703)
!713 = !DILocation(line: 101, scope: !703)
!714 = !DILocation(line: 104, scope: !703)
!715 = !DILocalVariable(name: "new_data", scope: !703, file: !33, line: 104, type: !682)
!716 = !DILocation(line: 105, scope: !703)
!717 = !DILocation(line: 106, scope: !703)
!718 = !DILocation(line: 108, scope: !703)
!719 = !DILocation(line: 109, scope: !703)
!720 = !DILocation(line: 110, scope: !703)
!721 = !DILocation(line: 112, scope: !703)
!722 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<CQB::CI::Task*>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !723)
!723 = !{!724, !725}
!724 = !DILocalVariable(name: "this", arg: 1, scope: !722, file: !33, line: 117, type: !678)
!725 = !DILocalVariable(name: "value", arg: 2, scope: !722, file: !33, line: 117, type: !683)
!726 = !DILocation(line: 117, scope: !722)
!727 = !DILocation(line: 118, scope: !722)
!728 = !DILocation(line: 119, scope: !722)
!729 = !DILocation(line: 122, scope: !722)
!730 = !DILocation(line: 123, scope: !722)
!731 = !DILocation(line: 120, scope: !722)
!732 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<CQB::CI::Task*>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !733)
!733 = !{!734}
!734 = !DILocalVariable(name: "this", arg: 1, scope: !732, file: !33, line: 127, type: !678)
!735 = !DILocation(line: 127, scope: !732)
!736 = !DILocation(line: 128, scope: !732)
!737 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<CQB::CI::Task*>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !738)
!738 = !{!739}
!739 = !DILocalVariable(name: "this", arg: 1, scope: !737, file: !33, line: 132, type: !678)
!740 = !DILocation(line: 132, scope: !737)
!741 = !DILocation(line: 133, scope: !737)
!742 = !DILocation(line: 134, scope: !737)
!743 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<CQB::CI::Task*>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !744)
!744 = !{!745}
!745 = !DILocalVariable(name: "this", arg: 1, scope: !743, file: !33, line: 139, type: !678)
!746 = !DILocation(line: 139, scope: !743)
!747 = !DILocation(line: 140, scope: !743)
!748 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<CQB::CI::Task*>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !749)
!749 = !{!750, !751, !752}
!750 = !DILocalVariable(name: "this", arg: 1, scope: !748, file: !33, line: 146, type: !678)
!751 = !DILocalVariable(name: "data", arg: 2, scope: !748, file: !33, line: 146, type: !682)
!752 = !DILocalVariable(name: "length", arg: 3, scope: !748, file: !33, line: 146, type: !102)
!753 = !DILocation(line: 146, scope: !748)
!754 = !DILocation(line: 147, scope: !748)
!755 = !DILocation(line: 148, scope: !748)
!756 = !DILocation(line: 149, scope: !748)
!757 = !DILocation(line: 150, scope: !748)
!758 = !DILocation(line: 151, scope: !748)
!759 = !DILocalVariable(name: "i", scope: !748, file: !33, line: 151, type: !45)
!760 = !DILocation(line: 152, scope: !748)
!761 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<CQB::CI::Task*>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !762)
!762 = !{!763, !764}
!763 = !DILocalVariable(name: "this", arg: 1, scope: !761, file: !33, line: 159, type: !678)
!764 = !DILocalVariable(name: "index", arg: 2, scope: !761, file: !33, line: 159, type: !102)
!765 = !DILocation(line: 159, scope: !761)
!766 = !DILocation(line: 160, scope: !761)
!767 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !768)
!768 = !{!769, !774, !775, !776}
!769 = !DILocalVariable(name: "this", arg: 1, scope: !767, file: !33, line: 27, type: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<CQB::CI::Task*>*", baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<CQB::CI::Task*>", file: !33, line: 18, size: 128, align: 64, elements: !772)
!772 = !{!773, !125, !126}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !682, size: 64, align: 64)
!774 = !DILocalVariable(name: "data", arg: 2, scope: !767, file: !33, line: 27, type: !682)
!775 = !DILocalVariable(name: "size", arg: 3, scope: !767, file: !33, line: 27, type: !45)
!776 = !DILocalVariable(name: "is_end", arg: 4, scope: !767, file: !33, line: 27, type: !130)
!777 = !DILocation(line: 27, scope: !767)
!778 = !DILocation(line: 28, scope: !767)
!779 = !DILocation(line: 29, scope: !767)
!780 = !DILocation(line: 30, scope: !767)
!781 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<CQB::CI::Task*>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !782)
!782 = !{!783}
!783 = !DILocalVariable(name: "this", arg: 1, scope: !781, file: !33, line: 34, type: !770)
!784 = !DILocation(line: 34, scope: !781)
!785 = !DILocation(line: 35, scope: !781)
!786 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<CQB::CI::Task*>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !787)
!787 = !{!788}
!788 = !DILocalVariable(name: "this", arg: 1, scope: !786, file: !33, line: 39, type: !770)
!789 = !DILocation(line: 39, scope: !786)
!790 = !DILocation(line: 40, scope: !786)
!791 = !DILocation(line: 41, scope: !786)
!792 = !DILocation(line: 43, scope: !786)
!793 = !DILocation(line: 44, scope: !786)
!794 = !DILocation(line: 46, scope: !786)
!795 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<CQB::CI::Task*>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !796)
!796 = !{!797}
!797 = !DILocalVariable(name: "this", arg: 1, scope: !795, file: !33, line: 50, type: !770)
!798 = !DILocation(line: 50, scope: !795)
!799 = !DILocation(line: 51, scope: !795)
!800 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<CQB::CI::Task*>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !801)
!801 = !{!802}
!802 = !DILocalVariable(name: "this", arg: 1, scope: !800, file: !33, line: 55, type: !770)
!803 = !DILocation(line: 55, scope: !800)
!804 = !DILocation(line: 56, scope: !800)
!805 = !DILocation(line: 57, scope: !800)
!806 = !DILocation(line: 59, scope: !800)
!807 = !DILocation(line: 60, scope: !800)
!808 = !DILocation(line: 62, scope: !800)
!809 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<CQB::CI::Task*>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !810)
!810 = !{!811, !812}
!811 = !DILocalVariable(name: "this", arg: 1, scope: !809, file: !33, line: 67, type: !770)
!812 = !DILocalVariable(name: "index", arg: 2, scope: !809, file: !33, line: 67, type: !45)
!813 = !DILocation(line: 67, scope: !809)
!814 = !DILocation(line: 68, scope: !809)
!815 = !DILocation(line: 69, scope: !809)
!816 = !DILocation(line: 73, scope: !809)
!817 = !DILocation(line: 70, scope: !809)
!818 = !DILocation(line: 71, scope: !809)
!819 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<CQB::CI::Step>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !820)
!820 = !{!821}
!821 = !DILocalVariable(name: "this", arg: 1, scope: !819, file: !33, line: 87, type: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<CQB::CI::Step>*", baseType: !689, size: 64)
!823 = !DILocation(line: 87, scope: !819)
!824 = !DILocation(line: 88, scope: !819)
!825 = !DILocation(line: 89, scope: !819)
!826 = !DILocation(line: 90, scope: !819)
!827 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<CQB::CI::Step>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !828)
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "this", arg: 1, scope: !827, file: !33, line: 95, type: !822)
!830 = !DILocalVariable(name: "cap", arg: 2, scope: !827, file: !33, line: 95, type: !45)
!831 = !DILocation(line: 95, scope: !827)
!832 = !DILocation(line: 96, scope: !827)
!833 = !DILocation(line: 97, scope: !827)
!834 = !DILocation(line: 98, scope: !827)
!835 = !DILocation(line: 99, scope: !827)
!836 = !DILocation(line: 100, scope: !827)
!837 = !DILocation(line: 101, scope: !827)
!838 = !DILocation(line: 104, scope: !827)
!839 = !DILocalVariable(name: "new_data", scope: !827, file: !33, line: 104, type: !692)
!840 = !DILocation(line: 105, scope: !827)
!841 = !DILocation(line: 106, scope: !827)
!842 = !DILocation(line: 108, scope: !827)
!843 = !DILocation(line: 109, scope: !827)
!844 = !DILocation(line: 110, scope: !827)
!845 = !DILocation(line: 112, scope: !827)
!846 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<CQB::CI::Step>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !847)
!847 = !{!848, !849}
!848 = !DILocalVariable(name: "this", arg: 1, scope: !846, file: !33, line: 117, type: !822)
!849 = !DILocalVariable(name: "value", arg: 2, scope: !846, file: !33, line: 117, type: !693)
!850 = !DILocation(line: 117, scope: !846)
!851 = !DILocation(line: 118, scope: !846)
!852 = !DILocation(line: 119, scope: !846)
!853 = !DILocation(line: 122, scope: !846)
!854 = !DILocation(line: 123, scope: !846)
!855 = !DILocation(line: 120, scope: !846)
!856 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<CQB::CI::Step>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !857)
!857 = !{!858}
!858 = !DILocalVariable(name: "this", arg: 1, scope: !856, file: !33, line: 127, type: !822)
!859 = !DILocation(line: 127, scope: !856)
!860 = !DILocation(line: 128, scope: !856)
!861 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<CQB::CI::Step>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !862)
!862 = !{!863}
!863 = !DILocalVariable(name: "this", arg: 1, scope: !861, file: !33, line: 132, type: !822)
!864 = !DILocation(line: 132, scope: !861)
!865 = !DILocation(line: 133, scope: !861)
!866 = !DILocation(line: 134, scope: !861)
!867 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<CQB::CI::Step>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !868)
!868 = !{!869}
!869 = !DILocalVariable(name: "this", arg: 1, scope: !867, file: !33, line: 139, type: !822)
!870 = !DILocation(line: 139, scope: !867)
!871 = !DILocation(line: 140, scope: !867)
!872 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<CQB::CI::Step>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !873)
!873 = !{!874, !875, !876}
!874 = !DILocalVariable(name: "this", arg: 1, scope: !872, file: !33, line: 146, type: !822)
!875 = !DILocalVariable(name: "data", arg: 2, scope: !872, file: !33, line: 146, type: !692)
!876 = !DILocalVariable(name: "length", arg: 3, scope: !872, file: !33, line: 146, type: !102)
!877 = !DILocation(line: 146, scope: !872)
!878 = !DILocation(line: 147, scope: !872)
!879 = !DILocation(line: 148, scope: !872)
!880 = !DILocation(line: 149, scope: !872)
!881 = !DILocation(line: 150, scope: !872)
!882 = !DILocation(line: 151, scope: !872)
!883 = !DILocalVariable(name: "i", scope: !872, file: !33, line: 151, type: !45)
!884 = !DILocation(line: 152, scope: !872)
!885 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<CQB::CI::Step>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !886)
!886 = !{!887, !888}
!887 = !DILocalVariable(name: "this", arg: 1, scope: !885, file: !33, line: 159, type: !822)
!888 = !DILocalVariable(name: "index", arg: 2, scope: !885, file: !33, line: 159, type: !102)
!889 = !DILocation(line: 159, scope: !885)
!890 = !DILocation(line: 160, scope: !885)
!891 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !892)
!892 = !{!893, !898, !899, !900}
!893 = !DILocalVariable(name: "this", arg: 1, scope: !891, file: !33, line: 27, type: !894)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<CQB::CI::Step>*", baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<CQB::CI::Step>", file: !33, line: 18, size: 128, align: 64, elements: !896)
!896 = !{!897, !125, !126}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !692, size: 64, align: 64)
!898 = !DILocalVariable(name: "data", arg: 2, scope: !891, file: !33, line: 27, type: !692)
!899 = !DILocalVariable(name: "size", arg: 3, scope: !891, file: !33, line: 27, type: !45)
!900 = !DILocalVariable(name: "is_end", arg: 4, scope: !891, file: !33, line: 27, type: !130)
!901 = !DILocation(line: 27, scope: !891)
!902 = !DILocation(line: 28, scope: !891)
!903 = !DILocation(line: 29, scope: !891)
!904 = !DILocation(line: 30, scope: !891)
!905 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<CQB::CI::Step>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !906)
!906 = !{!907}
!907 = !DILocalVariable(name: "this", arg: 1, scope: !905, file: !33, line: 34, type: !894)
!908 = !DILocation(line: 34, scope: !905)
!909 = !DILocation(line: 35, scope: !905)
!910 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<CQB::CI::Step>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "this", arg: 1, scope: !910, file: !33, line: 39, type: !894)
!913 = !DILocation(line: 39, scope: !910)
!914 = !DILocation(line: 40, scope: !910)
!915 = !DILocation(line: 41, scope: !910)
!916 = !DILocation(line: 43, scope: !910)
!917 = !DILocation(line: 44, scope: !910)
!918 = !DILocation(line: 46, scope: !910)
!919 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<CQB::CI::Step>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !920)
!920 = !{!921}
!921 = !DILocalVariable(name: "this", arg: 1, scope: !919, file: !33, line: 50, type: !894)
!922 = !DILocation(line: 50, scope: !919)
!923 = !DILocation(line: 51, scope: !919)
!924 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<CQB::CI::Step>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !925)
!925 = !{!926}
!926 = !DILocalVariable(name: "this", arg: 1, scope: !924, file: !33, line: 55, type: !894)
!927 = !DILocation(line: 55, scope: !924)
!928 = !DILocation(line: 56, scope: !924)
!929 = !DILocation(line: 57, scope: !924)
!930 = !DILocation(line: 59, scope: !924)
!931 = !DILocation(line: 60, scope: !924)
!932 = !DILocation(line: 62, scope: !924)
!933 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<CQB::CI::Step>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !934)
!934 = !{!935, !936}
!935 = !DILocalVariable(name: "this", arg: 1, scope: !933, file: !33, line: 67, type: !894)
!936 = !DILocalVariable(name: "index", arg: 2, scope: !933, file: !33, line: 67, type: !45)
!937 = !DILocation(line: 67, scope: !933)
!938 = !DILocation(line: 68, scope: !933)
!939 = !DILocation(line: 69, scope: !933)
!940 = !DILocation(line: 73, scope: !933)
!941 = !DILocation(line: 70, scope: !933)
!942 = !DILocation(line: 71, scope: !933)
!943 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<CQB::CI::Step>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !944)
!944 = !{!945}
!945 = !DILocalVariable(name: "this", arg: 1, scope: !943, file: !33, line: 164, type: !822)
!946 = !DILocation(line: 164, scope: !943)
!947 = !DILocation(line: 165, scope: !943)
!948 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<CQB::CI::Step>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !949)
!949 = !{!950}
!950 = !DILocalVariable(name: "this", arg: 1, scope: !948, file: !33, line: 169, type: !822)
!951 = !DILocation(line: 169, scope: !948)
!952 = !DILocation(line: 170, scope: !948)
!953 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<CQB::CI::Step>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !954)
!954 = !{!955}
!955 = !DILocalVariable(name: "this", arg: 1, scope: !953, file: !33, line: 175, type: !822)
!956 = !DILocation(line: 175, scope: !953)
!957 = !DILocation(line: 176, scope: !953)
!958 = !DILocation(line: 177, scope: !953)
!959 = !DILocation(line: 178, scope: !953)
!960 = !DILocation(line: 179, scope: !953)
!961 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<CQB::CI::Step>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !962)
!962 = !{!963, !964}
!963 = !DILocalVariable(name: "this", arg: 1, scope: !961, file: !33, line: 185, type: !822)
!964 = !DILocalVariable(name: "other", arg: 2, scope: !961, file: !33, line: 185, type: !689)
!965 = !DILocation(line: 185, scope: !961)
!966 = !DILocation(line: 186, scope: !961)
!967 = !DILocation(line: 187, scope: !961)
!968 = !DILocation(line: 189, scope: !961)
!969 = !DILocation(line: 190, scope: !961)
!970 = !DILocalVariable(name: "i", scope: !961, file: !33, line: 190, type: !45)
!971 = !DILocation(line: 191, scope: !961)
!972 = !DILocation(line: 193, scope: !961)
!973 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<CQB::CI::Step>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !974)
!974 = !{!975}
!975 = !DILocalVariable(name: "this", arg: 1, scope: !973, file: !33, line: 197, type: !822)
!976 = !DILocation(line: 197, scope: !973)
!977 = !DILocation(line: 198, scope: !973)
!978 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<CQB::CI::Task*>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !979)
!979 = !{!980}
!980 = !DILocalVariable(name: "this", arg: 1, scope: !978, file: !33, line: 164, type: !678)
!981 = !DILocation(line: 164, scope: !978)
!982 = !DILocation(line: 165, scope: !978)
!983 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<CQB::CI::Task*>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !984)
!984 = !{!985}
!985 = !DILocalVariable(name: "this", arg: 1, scope: !983, file: !33, line: 169, type: !678)
!986 = !DILocation(line: 169, scope: !983)
!987 = !DILocation(line: 170, scope: !983)
!988 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<CQB::CI::Task*>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !989)
!989 = !{!990}
!990 = !DILocalVariable(name: "this", arg: 1, scope: !988, file: !33, line: 175, type: !678)
!991 = !DILocation(line: 175, scope: !988)
!992 = !DILocation(line: 176, scope: !988)
!993 = !DILocation(line: 177, scope: !988)
!994 = !DILocation(line: 178, scope: !988)
!995 = !DILocation(line: 179, scope: !988)
!996 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<CQB::CI::Task*>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !997)
!997 = !{!998, !999}
!998 = !DILocalVariable(name: "this", arg: 1, scope: !996, file: !33, line: 185, type: !678)
!999 = !DILocalVariable(name: "other", arg: 2, scope: !996, file: !33, line: 185, type: !679)
!1000 = !DILocation(line: 185, scope: !996)
!1001 = !DILocation(line: 186, scope: !996)
!1002 = !DILocation(line: 187, scope: !996)
!1003 = !DILocation(line: 189, scope: !996)
!1004 = !DILocation(line: 190, scope: !996)
!1005 = !DILocalVariable(name: "i", scope: !996, file: !33, line: 190, type: !45)
!1006 = !DILocation(line: 191, scope: !996)
!1007 = !DILocation(line: 193, scope: !996)
!1008 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<CQB::CI::Task*>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1009)
!1009 = !{!1010}
!1010 = !DILocalVariable(name: "this", arg: 1, scope: !1008, file: !33, line: 197, type: !678)
!1011 = !DILocation(line: 197, scope: !1008)
!1012 = !DILocation(line: 198, scope: !1008)
!1013 = distinct !DISubprogram(name: "Job", linkageName: "CQB::CI::Job_Job_char*_Vector::Vec<Step>", scope: !685, file: !685, line: 20, type: !34, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1014)
!1014 = !{!1015, !1022, !1023}
!1015 = !DILocalVariable(name: "this", arg: 1, scope: !1013, file: !685, line: 20, type: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Job*", baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::CI::Job", file: !685, line: 16, size: 256, align: 64, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !685, file: !685, line: 16, baseType: !679, size: 128, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !685, file: !685, line: 16, baseType: !683, size: 64, align: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !685, file: !685, line: 16, baseType: !683, size: 64, align: 64, offset: 192)
!1022 = !DILocalVariable(name: "name", arg: 2, scope: !1013, file: !685, line: 20, type: !42)
!1023 = !DILocalVariable(name: "steps", arg: 3, scope: !1013, file: !685, line: 20, type: !689)
!1024 = !DILocation(line: 20, scope: !1013)
!1025 = !DILocation(line: 21, scope: !1013)
!1026 = !DILocalVariable(name: "task", scope: !1013, file: !685, line: 21, type: !683)
!1027 = !DILocation(line: 22, scope: !1013)
!1028 = !DILocation(line: 23, scope: !1013)
!1029 = !DILocation(line: 24, scope: !1013)
!1030 = !DILocation(line: 25, scope: !1013)
!1031 = !DILocation(line: 26, scope: !1013)
!1032 = distinct !DISubprogram(name: "addTask", linkageName: "CQB::CI::Job_addTask_char*_Vector::Vec<Step>_bool", scope: !685, file: !685, line: 28, type: !34, scopeLine: 28, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1033)
!1033 = !{!1034, !1035, !1036, !1037}
!1034 = !DILocalVariable(name: "this", arg: 1, scope: !1032, file: !685, line: 28, type: !1016)
!1035 = !DILocalVariable(name: "name", arg: 2, scope: !1032, file: !685, line: 28, type: !42)
!1036 = !DILocalVariable(name: "steps", arg: 3, scope: !1032, file: !685, line: 28, type: !689)
!1037 = !DILocalVariable(name: "advance", arg: 4, scope: !1032, file: !685, line: 28, type: !130)
!1038 = !{!"Task*"}
!1039 = !DILocation(line: 28, scope: !1032)
!1040 = !DILocation(line: 29, scope: !1032)
!1041 = !DILocalVariable(name: "task", scope: !1032, file: !685, line: 29, type: !683)
!1042 = !DILocation(line: 30, scope: !1032)
!1043 = !DILocation(line: 31, scope: !1032)
!1044 = !DILocation(line: 32, scope: !1032)
!1045 = !DILocation(line: 33, scope: !1032)
!1046 = !DILocation(line: 34, scope: !1032)
!1047 = distinct !DISubprogram(name: "focus", linkageName: "CQB::CI::Job_focus_Task*", scope: !685, file: !685, line: 36, type: !34, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1048)
!1048 = !{!1049, !1050}
!1049 = !DILocalVariable(name: "this", arg: 1, scope: !1047, file: !685, line: 36, type: !1016)
!1050 = !DILocalVariable(name: "task", arg: 2, scope: !1047, file: !685, line: 36, type: !683)
!1051 = !{!"Job*"}
!1052 = !DILocation(line: 36, scope: !1047)
!1053 = !DILocation(line: 37, scope: !1047)
!1054 = !DILocation(line: 38, scope: !1047)
!1055 = distinct !DISubprogram(name: "link", linkageName: "CQB::CI::Job_link_Task*_Task*", scope: !685, file: !685, line: 40, type: !34, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DILocalVariable(name: "this", arg: 1, scope: !1055, file: !685, line: 40, type: !1016)
!1058 = !DILocalVariable(name: "parent", arg: 2, scope: !1055, file: !685, line: 40, type: !683)
!1059 = !DILocalVariable(name: "child", arg: 3, scope: !1055, file: !685, line: 40, type: !683)
!1060 = !DILocation(line: 40, scope: !1055)
!1061 = !DILocation(line: 41, scope: !1055)
!1062 = !DILocation(line: 42, scope: !1055)
!1063 = distinct !DISubprogram(name: "getGraphRoot", linkageName: "CQB::CI::Job_getGraphRoot", scope: !685, file: !685, line: 44, type: !34, scopeLine: 44, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1064)
!1064 = !{!1065}
!1065 = !DILocalVariable(name: "this", arg: 1, scope: !1063, file: !685, line: 44, type: !1016)
!1066 = !DILocation(line: 44, scope: !1063)
!1067 = !DILocation(line: 45, scope: !1063)
!1068 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<CQB::Engine::TaskState>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1069)
!1069 = !{!1070}
!1070 = !DILocalVariable(name: "this", arg: 1, scope: !1068, file: !33, line: 87, type: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<CQB::Engine::TaskState>*", baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<CQB::Engine::TaskState>", file: !33, line: 81, size: 128, align: 64, elements: !1073)
!1073 = !{!1074, !44, !46}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !1075, size: 64, align: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::Engine::TaskState*", baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::Engine::TaskState", file: !1, line: 55, size: 512, align: 64, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1, file: !1, line: 55, baseType: !42, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "category", scope: !1, file: !1, line: 55, baseType: !42, size: 64, align: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1, file: !1, line: 55, baseType: !42, size: 64, align: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !1, file: !1, line: 55, baseType: !45, size: 32, align: 32, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "lastOutput", scope: !1, file: !1, line: 55, baseType: !42, size: 64, align: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "logHistory", scope: !1, file: !1, line: 55, baseType: !38, size: 128, align: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "warningsCount", scope: !1, file: !1, line: 55, baseType: !45, size: 32, align: 32, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "errorsCount", scope: !1, file: !1, line: 55, baseType: !45, size: 32, align: 32, offset: 480)
!1086 = !DILocation(line: 87, scope: !1068)
!1087 = !DILocation(line: 88, scope: !1068)
!1088 = !DILocation(line: 89, scope: !1068)
!1089 = !DILocation(line: 90, scope: !1068)
!1090 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<CQB::Engine::TaskState>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1091)
!1091 = !{!1092, !1093}
!1092 = !DILocalVariable(name: "this", arg: 1, scope: !1090, file: !33, line: 95, type: !1071)
!1093 = !DILocalVariable(name: "cap", arg: 2, scope: !1090, file: !33, line: 95, type: !45)
!1094 = !DILocation(line: 95, scope: !1090)
!1095 = !DILocation(line: 96, scope: !1090)
!1096 = !DILocation(line: 97, scope: !1090)
!1097 = !DILocation(line: 98, scope: !1090)
!1098 = !DILocation(line: 99, scope: !1090)
!1099 = !DILocation(line: 100, scope: !1090)
!1100 = !DILocation(line: 101, scope: !1090)
!1101 = !DILocation(line: 104, scope: !1090)
!1102 = !DILocalVariable(name: "new_data", scope: !1090, file: !33, line: 104, type: !1075)
!1103 = !DILocation(line: 105, scope: !1090)
!1104 = !DILocation(line: 106, scope: !1090)
!1105 = !DILocation(line: 108, scope: !1090)
!1106 = !DILocation(line: 109, scope: !1090)
!1107 = !DILocation(line: 110, scope: !1090)
!1108 = !DILocation(line: 112, scope: !1090)
!1109 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<CQB::Engine::TaskState>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1110)
!1110 = !{!1111, !1112}
!1111 = !DILocalVariable(name: "this", arg: 1, scope: !1109, file: !33, line: 117, type: !1071)
!1112 = !DILocalVariable(name: "value", arg: 2, scope: !1109, file: !33, line: 117, type: !1076)
!1113 = !DILocation(line: 117, scope: !1109)
!1114 = !DILocation(line: 118, scope: !1109)
!1115 = !DILocation(line: 119, scope: !1109)
!1116 = !DILocation(line: 122, scope: !1109)
!1117 = !DILocation(line: 123, scope: !1109)
!1118 = !DILocation(line: 120, scope: !1109)
!1119 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<CQB::Engine::TaskState>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1120)
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "this", arg: 1, scope: !1119, file: !33, line: 127, type: !1071)
!1122 = !DILocation(line: 127, scope: !1119)
!1123 = !DILocation(line: 128, scope: !1119)
!1124 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<CQB::Engine::TaskState>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(name: "this", arg: 1, scope: !1124, file: !33, line: 132, type: !1071)
!1127 = !DILocation(line: 132, scope: !1124)
!1128 = !DILocation(line: 133, scope: !1124)
!1129 = !DILocation(line: 134, scope: !1124)
!1130 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<CQB::Engine::TaskState>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1131)
!1131 = !{!1132}
!1132 = !DILocalVariable(name: "this", arg: 1, scope: !1130, file: !33, line: 139, type: !1071)
!1133 = !DILocation(line: 139, scope: !1130)
!1134 = !DILocation(line: 140, scope: !1130)
!1135 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<CQB::Engine::TaskState>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "this", arg: 1, scope: !1135, file: !33, line: 146, type: !1071)
!1138 = !DILocalVariable(name: "data", arg: 2, scope: !1135, file: !33, line: 146, type: !1075)
!1139 = !DILocalVariable(name: "length", arg: 3, scope: !1135, file: !33, line: 146, type: !102)
!1140 = !DILocation(line: 146, scope: !1135)
!1141 = !DILocation(line: 147, scope: !1135)
!1142 = !DILocation(line: 148, scope: !1135)
!1143 = !DILocation(line: 149, scope: !1135)
!1144 = !DILocation(line: 150, scope: !1135)
!1145 = !DILocation(line: 151, scope: !1135)
!1146 = !DILocalVariable(name: "i", scope: !1135, file: !33, line: 151, type: !45)
!1147 = !DILocation(line: 152, scope: !1135)
!1148 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1149)
!1149 = !{!1150, !1151}
!1150 = !DILocalVariable(name: "this", arg: 1, scope: !1148, file: !33, line: 159, type: !1071)
!1151 = !DILocalVariable(name: "index", arg: 2, scope: !1148, file: !33, line: 159, type: !102)
!1152 = !DILocation(line: 159, scope: !1148)
!1153 = !DILocation(line: 160, scope: !1148)
!1154 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1155)
!1155 = !{!1156, !1161, !1162, !1163}
!1156 = !DILocalVariable(name: "this", arg: 1, scope: !1154, file: !33, line: 27, type: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<CQB::Engine::TaskState>*", baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<CQB::Engine::TaskState>", file: !33, line: 18, size: 128, align: 64, elements: !1159)
!1159 = !{!1160, !125, !126}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !1075, size: 64, align: 64)
!1161 = !DILocalVariable(name: "data", arg: 2, scope: !1154, file: !33, line: 27, type: !1075)
!1162 = !DILocalVariable(name: "size", arg: 3, scope: !1154, file: !33, line: 27, type: !45)
!1163 = !DILocalVariable(name: "is_end", arg: 4, scope: !1154, file: !33, line: 27, type: !130)
!1164 = !DILocation(line: 27, scope: !1154)
!1165 = !DILocation(line: 28, scope: !1154)
!1166 = !DILocation(line: 29, scope: !1154)
!1167 = !DILocation(line: 30, scope: !1154)
!1168 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1169)
!1169 = !{!1170}
!1170 = !DILocalVariable(name: "this", arg: 1, scope: !1168, file: !33, line: 34, type: !1157)
!1171 = !DILocation(line: 34, scope: !1168)
!1172 = !DILocation(line: 35, scope: !1168)
!1173 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1174)
!1174 = !{!1175}
!1175 = !DILocalVariable(name: "this", arg: 1, scope: !1173, file: !33, line: 39, type: !1157)
!1176 = !DILocation(line: 39, scope: !1173)
!1177 = !DILocation(line: 40, scope: !1173)
!1178 = !DILocation(line: 41, scope: !1173)
!1179 = !DILocation(line: 43, scope: !1173)
!1180 = !DILocation(line: 44, scope: !1173)
!1181 = !DILocation(line: 46, scope: !1173)
!1182 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1183)
!1183 = !{!1184}
!1184 = !DILocalVariable(name: "this", arg: 1, scope: !1182, file: !33, line: 50, type: !1157)
!1185 = !DILocation(line: 50, scope: !1182)
!1186 = !DILocation(line: 51, scope: !1182)
!1187 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1188)
!1188 = !{!1189}
!1189 = !DILocalVariable(name: "this", arg: 1, scope: !1187, file: !33, line: 55, type: !1157)
!1190 = !DILocation(line: 55, scope: !1187)
!1191 = !DILocation(line: 56, scope: !1187)
!1192 = !DILocation(line: 57, scope: !1187)
!1193 = !DILocation(line: 59, scope: !1187)
!1194 = !DILocation(line: 60, scope: !1187)
!1195 = !DILocation(line: 62, scope: !1187)
!1196 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<CQB::Engine::TaskState>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1197)
!1197 = !{!1198, !1199}
!1198 = !DILocalVariable(name: "this", arg: 1, scope: !1196, file: !33, line: 67, type: !1157)
!1199 = !DILocalVariable(name: "index", arg: 2, scope: !1196, file: !33, line: 67, type: !45)
!1200 = !DILocation(line: 67, scope: !1196)
!1201 = !DILocation(line: 68, scope: !1196)
!1202 = !DILocation(line: 69, scope: !1196)
!1203 = !DILocation(line: 73, scope: !1196)
!1204 = !DILocation(line: 70, scope: !1196)
!1205 = !DILocation(line: 71, scope: !1196)
!1206 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<CQB::Engine::TaskState>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1207)
!1207 = !{!1208}
!1208 = !DILocalVariable(name: "this", arg: 1, scope: !1206, file: !33, line: 164, type: !1071)
!1209 = !DILocation(line: 164, scope: !1206)
!1210 = !DILocation(line: 165, scope: !1206)
!1211 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<CQB::Engine::TaskState>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1212)
!1212 = !{!1213}
!1213 = !DILocalVariable(name: "this", arg: 1, scope: !1211, file: !33, line: 169, type: !1071)
!1214 = !DILocation(line: 169, scope: !1211)
!1215 = !DILocation(line: 170, scope: !1211)
!1216 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<CQB::Engine::TaskState>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1217)
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "this", arg: 1, scope: !1216, file: !33, line: 175, type: !1071)
!1219 = !DILocation(line: 175, scope: !1216)
!1220 = !DILocation(line: 176, scope: !1216)
!1221 = !DILocation(line: 177, scope: !1216)
!1222 = !DILocation(line: 178, scope: !1216)
!1223 = !DILocation(line: 179, scope: !1216)
!1224 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<CQB::Engine::TaskState>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1225)
!1225 = !{!1226, !1227}
!1226 = !DILocalVariable(name: "this", arg: 1, scope: !1224, file: !33, line: 185, type: !1071)
!1227 = !DILocalVariable(name: "other", arg: 2, scope: !1224, file: !33, line: 185, type: !1072)
!1228 = !DILocation(line: 185, scope: !1224)
!1229 = !DILocation(line: 186, scope: !1224)
!1230 = !DILocation(line: 187, scope: !1224)
!1231 = !DILocation(line: 189, scope: !1224)
!1232 = !DILocation(line: 190, scope: !1224)
!1233 = !DILocalVariable(name: "i", scope: !1224, file: !33, line: 190, type: !45)
!1234 = !DILocation(line: 191, scope: !1224)
!1235 = !DILocation(line: 193, scope: !1224)
!1236 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<CQB::Engine::TaskState>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1237)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "this", arg: 1, scope: !1236, file: !33, line: 197, type: !1071)
!1239 = !DILocation(line: 197, scope: !1236)
!1240 = !DILocation(line: 198, scope: !1236)
!1241 = distinct !DISubprogram(name: "indexOf", linkageName: "CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*", scope: !1, file: !1, line: 154, type: !34, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1242)
!1242 = !{!1243, !1261, !1263}
!1243 = !DILocalVariable(name: "this", arg: 1, scope: !1241, file: !1, line: 154, type: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::Engine::Runner*", baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::Engine::Runner", file: !1, line: 147, size: 448, align: 64, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1258, !1259, !1260}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ciDone", scope: !1, file: !1, line: 147, baseType: !130, size: 8, align: 8)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "buildDone", scope: !1, file: !1, line: 147, baseType: !130, size: 8, align: 8, offset: 8)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ciRoot", scope: !1, file: !1, line: 147, baseType: !1250, size: 64, align: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Task*", baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::CI::Task", file: !685, line: 10, size: 384, align: 64, elements: !1252)
!1252 = !{!687, !688, !1253, !698}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !685, line: 10, baseType: !1254, size: 128, align: 64, offset: 192)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<CQB::CI::Task*>", file: !33, line: 81, size: 128, align: 64, elements: !1255)
!1255 = !{!1256, !44, !46}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !1257, size: 64, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "CQB::CI::Task**", baseType: !1250, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "activeStates", scope: !1, file: !1, line: 147, baseType: !1072, size: 128, align: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "activeTask", scope: !1, file: !1, line: 147, baseType: !1250, size: 64, align: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "buildGraph", scope: !1, file: !1, line: 147, baseType: !215, size: 128, align: 64, offset: 320)
!1261 = !DILocalVariable(name: "g", arg: 2, scope: !1241, file: !1, line: 154, type: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<CQB::Build::Command>&", baseType: !215, size: 64)
!1263 = !DILocalVariable(name: "name", arg: 3, scope: !1241, file: !1, line: 154, type: !42)
!1264 = !DILocation(line: 154, scope: !1241)
!1265 = !DILocation(line: 155, scope: !1241)
!1266 = !DILocalVariable(name: "i", scope: !1241, file: !1, line: 155, type: !45)
!1267 = !DILocation(line: 156, scope: !1241)
!1268 = !DILocation(line: 158, scope: !1241)
!1269 = distinct !DISubprogram(name: "runBuildPipeline", linkageName: "CQB::Engine::Runner_runBuildPipeline_char*", scope: !1, file: !1, line: 160, type: !34, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1270)
!1270 = !{!1271, !1272}
!1271 = !DILocalVariable(name: "this", arg: 1, scope: !1269, file: !1, line: 160, type: !1244)
!1272 = !DILocalVariable(name: "qc_exe", arg: 2, scope: !1269, file: !1, line: 160, type: !42)
!1273 = !DILocation(line: 160, scope: !1269)
!1274 = !DILocation(line: 161, scope: !1269)
!1275 = !DILocalVariable(name: "order", scope: !1269, file: !1, line: 161, type: !1276)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<int>", file: !33, line: 81, size: 128, align: 64, elements: !1277)
!1277 = !{!1278, !44, !46}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !1279, size: 64, align: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "int*", baseType: !45, size: 64)
!1280 = !DILocation(line: 162, scope: !1269)
!1281 = !DILocalVariable(name: "n", scope: !1269, file: !1, line: 162, type: !45)
!1282 = !DILocation(line: 163, scope: !1269)
!1283 = !DILocalVariable(name: "remaining", scope: !1269, file: !1, line: 163, type: !1276)
!1284 = !DILocation(line: 164, scope: !1269)
!1285 = !DILocalVariable(name: "done", scope: !1269, file: !1, line: 164, type: !1286)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Vec<bool>", file: !33, line: 81, size: 128, align: 64, elements: !1287)
!1287 = !{!1288, !44, !46}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 81, baseType: !1289, size: 64, align: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "bool*", baseType: !130, size: 64)
!1290 = !DILocation(line: 170, scope: !1269)
!1291 = !DILocalVariable(name: "i", scope: !1269, file: !1, line: 170, type: !45)
!1292 = !DILocation(line: 171, scope: !1269)
!1293 = !DILocation(line: 172, scope: !1269)
!1294 = !DILocation(line: 173, scope: !1269)
!1295 = !DILocation(line: 180, scope: !1269)
!1296 = !DILocation(line: 174, scope: !1269)
!1297 = !DILocation(line: 168, scope: !1269)
!1298 = !DILocation(line: 175, scope: !1269)
!1299 = !DILocation(line: 166, scope: !1269)
!1300 = !DILocation(line: 167, scope: !1269)
!1301 = !DILocation(line: 181, scope: !1269)
!1302 = !DILocalVariable(name: "progressed", scope: !1269, file: !1, line: 181, type: !130)
!1303 = !DILocation(line: 182, scope: !1269)
!1304 = !DILocalVariable(name: "i", scope: !1269, file: !1, line: 182, type: !45)
!1305 = !DILocation(line: 198, scope: !1269)
!1306 = !DILocalVariable(name: "tty", scope: !1269, file: !1, line: 198, type: !130)
!1307 = !DILocation(line: 199, scope: !1269)
!1308 = !DILocalVariable(name: "totalStart", scope: !1269, file: !1, line: 199, type: !1309)
!1309 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1310 = !DILocation(line: 200, scope: !1269)
!1311 = !DILocalVariable(name: "k", scope: !1269, file: !1, line: 200, type: !45)
!1312 = !DILocation(line: 183, scope: !1269)
!1313 = !DILocation(line: 193, scope: !1269)
!1314 = !DILocation(line: 184, scope: !1269)
!1315 = !DILocation(line: 185, scope: !1269)
!1316 = !DILocation(line: 186, scope: !1269)
!1317 = !DILocation(line: 187, scope: !1269)
!1318 = !DILocalVariable(name: "j", scope: !1269, file: !1, line: 187, type: !45)
!1319 = !DILocation(line: 188, scope: !1269)
!1320 = !DILocation(line: 189, scope: !1269)
!1321 = !DILocation(line: 194, scope: !1269)
!1322 = !DILocation(line: 201, scope: !1269)
!1323 = !DILocalVariable(name: "command", scope: !1269, file: !1, line: 201, type: !219)
!1324 = !DILocation(line: 202, scope: !1269)
!1325 = !DILocalVariable(name: "comm", scope: !1269, file: !1, line: 202, type: !38)
!1326 = !DILocation(line: 203, scope: !1269)
!1327 = !DILocalVariable(name: "qc", scope: !1269, file: !1, line: 203, type: !436)
!1328 = !DILocation(line: 204, scope: !1269)
!1329 = !DILocalVariable(name: "isQc", scope: !1269, file: !1, line: 204, type: !130)
!1330 = !DILocation(line: 205, scope: !1269)
!1331 = !DILocation(line: 256, scope: !1269)
!1332 = !DILocalVariable(name: "total", scope: !1269, file: !1, line: 256, type: !1309)
!1333 = !DILocation(line: 257, scope: !1269)
!1334 = !DILocation(line: 258, scope: !1269)
!1335 = !DILocation(line: 206, scope: !1269)
!1336 = !DILocation(line: 207, scope: !1269)
!1337 = !DILocation(line: 219, scope: !1269)
!1338 = !DILocation(line: 220, scope: !1269)
!1339 = !DILocalVariable(name: "label", scope: !1269, file: !1, line: 220, type: !436)
!1340 = !DILocation(line: 222, scope: !1269)
!1341 = !DILocalVariable(name: "num", scope: !1269, file: !1, line: 222, type: !436)
!1342 = !DILocation(line: 224, scope: !1269)
!1343 = !DILocalVariable(name: "num2", scope: !1269, file: !1, line: 224, type: !436)
!1344 = !DILocation(line: 225, scope: !1269)
!1345 = !DILocation(line: 226, scope: !1269)
!1346 = !DILocalVariable(name: "slash", scope: !1269, file: !1, line: 226, type: !436)
!1347 = !DILocation(line: 229, scope: !1269)
!1348 = !DILocation(line: 230, scope: !1269)
!1349 = !DILocation(line: 231, scope: !1269)
!1350 = !DILocalVariable(name: "lb", scope: !1269, file: !1, line: 231, type: !436)
!1351 = !DILocation(line: 233, scope: !1269)
!1352 = !DILocation(line: 234, scope: !1269)
!1353 = !DILocalVariable(name: "t0", scope: !1269, file: !1, line: 234, type: !1309)
!1354 = !DILocation(line: 235, scope: !1269)
!1355 = !DILocalVariable(name: "res", scope: !1269, file: !1, line: 235, type: !1356)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "CQB::Engine::RunResult", file: !1, line: 83, size: 128, align: 64, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "exitCode", scope: !1, file: !1, line: 83, baseType: !45, size: 32, align: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !1, file: !1, line: 83, baseType: !42, size: 64, align: 64, offset: 64)
!1360 = !DILocation(line: 236, scope: !1269)
!1361 = !DILocalVariable(name: "ms", scope: !1269, file: !1, line: 236, type: !1309)
!1362 = !DILocation(line: 237, scope: !1269)
!1363 = !DILocation(line: 238, scope: !1269)
!1364 = !DILocation(line: 217, scope: !1269)
!1365 = !DILocation(line: 208, scope: !1269)
!1366 = !DILocation(line: 209, scope: !1269)
!1367 = !DILocation(line: 210, scope: !1269)
!1368 = !DILocation(line: 211, scope: !1269)
!1369 = !DILocalVariable(name: "hasProgress", scope: !1269, file: !1, line: 211, type: !130)
!1370 = !DILocation(line: 212, scope: !1269)
!1371 = !DILocation(line: 213, scope: !1269)
!1372 = !DILocation(line: 215, scope: !1269)
!1373 = !DILocation(line: 239, scope: !1269)
!1374 = !DILocation(line: 240, scope: !1269)
!1375 = !DILocation(line: 242, scope: !1269)
!1376 = !DILocation(line: 243, scope: !1269)
!1377 = !DILocalVariable(name: "steps", scope: !1269, file: !1, line: 243, type: !45)
!1378 = !DILocation(line: 244, scope: !1269)
!1379 = !DILocation(line: 254, scope: !1269)
!1380 = !DILocation(line: 232, scope: !1269)
!1381 = !DILocation(line: 228, scope: !1269)
!1382 = !DILocation(line: 227, scope: !1269)
!1383 = !DILocation(line: 223, scope: !1269)
!1384 = !DILocation(line: 221, scope: !1269)
!1385 = !DILocation(line: 250, scope: !1269)
!1386 = !DILocation(line: 251, scope: !1269)
!1387 = !DILocation(line: 252, scope: !1269)
!1388 = !DILocation(line: 245, scope: !1269)
!1389 = !DILocation(line: 247, scope: !1269)
!1390 = distinct !DISubprogram(name: "runCIPipeline", linkageName: "CQB::Engine::Runner_runCIPipeline", scope: !1, file: !1, line: 261, type: !34, scopeLine: 261, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1391)
!1391 = !{!1392}
!1392 = !DILocalVariable(name: "this", arg: 1, scope: !1390, file: !1, line: 261, type: !1244)
!1393 = !DILocation(line: 262, scope: !1390)
!1394 = !DILocation(line: 261, scope: !1390)
!1395 = !DILocation(line: 263, scope: !1390)
!1396 = !DILocation(line: 264, scope: !1390)
!1397 = !DILocation(line: 266, scope: !1390)
!1398 = !DILocalVariable(name: "pending", scope: !1390, file: !1, line: 266, type: !1254)
!1399 = !DILocation(line: 267, scope: !1390)
!1400 = !DILocalVariable(name: "visited", scope: !1390, file: !1, line: 267, type: !1254)
!1401 = !DILocation(line: 272, scope: !1390)
!1402 = !DILocation(line: 273, scope: !1390)
!1403 = !DILocalVariable(name: "head", scope: !1390, file: !1, line: 273, type: !45)
!1404 = !DILocation(line: 274, scope: !1390)
!1405 = !DILocation(line: 275, scope: !1390)
!1406 = !DILocalVariable(name: "task", scope: !1390, file: !1, line: 275, type: !1250)
!1407 = !DILocation(line: 276, scope: !1390)
!1408 = !DILocation(line: 277, scope: !1390)
!1409 = !DILocalVariable(name: "seen", scope: !1390, file: !1, line: 277, type: !130)
!1410 = !DILocation(line: 278, scope: !1390)
!1411 = !DILocation(line: 343, scope: !1390)
!1412 = !DILocation(line: 344, scope: !1390)
!1413 = !DILocation(line: 269, scope: !1390)
!1414 = !DILocation(line: 270, scope: !1390)
!1415 = !DILocation(line: 279, scope: !1390)
!1416 = !DILocation(line: 284, scope: !1390)
!1417 = !DILocation(line: 280, scope: !1390)
!1418 = !DILocation(line: 281, scope: !1390)
!1419 = !DILocation(line: 285, scope: !1390)
!1420 = !DILocation(line: 286, scope: !1390)
!1421 = !DILocation(line: 287, scope: !1390)
!1422 = !DILocalVariable(name: "stateIndex", scope: !1390, file: !1, line: 287, type: !45)
!1423 = !DILocation(line: 288, scope: !1390)
!1424 = !DILocalVariable(name: "i", scope: !1390, file: !1, line: 288, type: !45)
!1425 = !DILocation(line: 289, scope: !1390)
!1426 = !DILocation(line: 294, scope: !1390)
!1427 = !DILocation(line: 290, scope: !1390)
!1428 = !DILocation(line: 291, scope: !1390)
!1429 = !DILocation(line: 296, scope: !1390)
!1430 = !DILocation(line: 301, scope: !1390)
!1431 = !DILocalVariable(name: "state", scope: !1390, file: !1, line: 295, type: !1076)
!1432 = !DILocation(line: 295, scope: !1390)
!1433 = !DILocation(line: 305, scope: !1390)
!1434 = !DILocation(line: 306, scope: !1390)
!1435 = !DILocation(line: 312, scope: !1390)
!1436 = !DILocalVariable(name: "state", scope: !1390, file: !1, line: 312, type: !1075)
!1437 = !DILocation(line: 313, scope: !1390)
!1438 = !DILocalVariable(name: "failed", scope: !1390, file: !1, line: 313, type: !130)
!1439 = !DILocation(line: 314, scope: !1390)
!1440 = !DILocalVariable(name: "i", scope: !1390, file: !1, line: 314, type: !45)
!1441 = !DILocation(line: 308, scope: !1390)
!1442 = !DILocation(line: 309, scope: !1390)
!1443 = !DILocation(line: 310, scope: !1390)
!1444 = !DILocation(line: 315, scope: !1390)
!1445 = !DILocalVariable(name: "step", scope: !1390, file: !1, line: 315, type: !693)
!1446 = !DILocation(line: 316, scope: !1390)
!1447 = !DILocation(line: 333, scope: !1390)
!1448 = !DILocation(line: 317, scope: !1390)
!1449 = !DILocation(line: 318, scope: !1390)
!1450 = !DILocalVariable(name: "res", scope: !1390, file: !1, line: 318, type: !1356)
!1451 = !DILocation(line: 319, scope: !1390)
!1452 = !DILocation(line: 320, scope: !1390)
!1453 = !DILocation(line: 321, scope: !1390)
!1454 = !DILocation(line: 322, scope: !1390)
!1455 = !DILocation(line: 323, scope: !1390)
!1456 = !DILocation(line: 324, scope: !1390)
!1457 = !DILocation(line: 325, scope: !1390)
!1458 = !DILocation(line: 331, scope: !1390)
!1459 = !DILocation(line: 326, scope: !1390)
!1460 = !DILocation(line: 327, scope: !1390)
!1461 = !DILocation(line: 328, scope: !1390)
!1462 = !DILocation(line: 334, scope: !1390)
!1463 = !DILocation(line: 337, scope: !1390)
!1464 = !DILocation(line: 338, scope: !1390)
!1465 = !DILocation(line: 339, scope: !1390)
!1466 = !DILocation(line: 340, scope: !1390)
!1467 = distinct !DISubprogram(name: "Runner", linkageName: "CQB::Engine::Runner_Runner_Vector::Vec<Build::Command>_CI::Task*", scope: !1, file: !1, line: 347, type: !34, scopeLine: 347, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DILocalVariable(name: "this", arg: 1, scope: !1467, file: !1, line: 347, type: !1244)
!1470 = !DILocalVariable(name: "build", arg: 2, scope: !1467, file: !1, line: 347, type: !215)
!1471 = !DILocalVariable(name: "ciRoot", arg: 3, scope: !1467, file: !1, line: 347, type: !1250)
!1472 = !DILocation(line: 347, scope: !1467)
!1473 = !DILocation(line: 348, scope: !1467)
!1474 = !DILocation(line: 349, scope: !1467)
!1475 = !DILocation(line: 350, scope: !1467)
!1476 = !DILocation(line: 351, scope: !1467)
!1477 = !DILocation(line: 352, scope: !1467)
!1478 = !DILocation(line: 353, scope: !1467)
!1479 = distinct !DISubprogram(name: "Run", linkageName: "CQB::Engine::Runner_Run_char*", scope: !1, file: !1, line: 355, type: !34, scopeLine: 355, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1480)
!1480 = !{!1481, !1482}
!1481 = !DILocalVariable(name: "this", arg: 1, scope: !1479, file: !1, line: 355, type: !1244)
!1482 = !DILocalVariable(name: "qc_exe", arg: 2, scope: !1479, file: !1, line: 355, type: !42)
!1483 = !DILocation(line: 355, scope: !1479)
!1484 = !DILocation(line: 356, scope: !1479)
!1485 = !DILocation(line: 357, scope: !1479)
!1486 = !DILocation(line: 358, scope: !1479)
!1487 = !{!"cpu_set_t*"}
!1488 = distinct !DISubprogram(name: "__bswap_16", linkageName: "__bswap_16", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1488, file: !1, type: !1491)
!1491 = !DIBasicType(name: "i16u_t", size: 16, encoding: DW_ATE_unsigned)
!1492 = !{!"__uint16_t"}
!1493 = !DILocation(line: 0, scope: !1488)
!1494 = distinct !DISubprogram(name: "__bswap_32", linkageName: "__bswap_32", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1495)
!1495 = !{!1496}
!1496 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1494, file: !1, type: !1497)
!1497 = !DIBasicType(name: "i32u_t", size: 32, encoding: DW_ATE_unsigned)
!1498 = !{!"__uint32_t"}
!1499 = !DILocation(line: 0, scope: !1494)
!1500 = distinct !DISubprogram(name: "__bswap_64", linkageName: "__bswap_64", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1501)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "__bsx", arg: 1, scope: !1500, file: !1, type: !102)
!1503 = !{!"__uint64_t"}
!1504 = !DILocation(line: 0, scope: !1500)
!1505 = distinct !DISubprogram(name: "__uint16_identity", linkageName: "__uint16_identity", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1506)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "__x", arg: 1, scope: !1505, file: !1, type: !1491)
!1508 = !DILocation(line: 0, scope: !1505)
!1509 = distinct !DISubprogram(name: "__uint32_identity", linkageName: "__uint32_identity", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1510)
!1510 = !{!1511}
!1511 = !DILocalVariable(name: "__x", arg: 1, scope: !1509, file: !1, type: !1497)
!1512 = !DILocation(line: 0, scope: !1509)
!1513 = distinct !DISubprogram(name: "__uint64_identity", linkageName: "__uint64_identity", scope: !1, file: !1, type: !34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1514)
!1514 = !{!1515}
!1515 = !DILocalVariable(name: "__x", arg: 1, scope: !1513, file: !1, type: !102)
!1516 = !DILocation(line: 0, scope: !1513)
!1517 = !{!"ssize_t"}
!1518 = !{!"i32u_t"}
!1519 = !{!"__useconds_t"}
!1520 = !{!"long int"}
!1521 = !{!"size_t"}
!1522 = !{!"__pid_t"}
!1523 = !{!"__uid_t"}
!1524 = !{!"__gid_t"}
!1525 = !{!"void*"}
!1526 = !{!"__sighandler_t"}
!1527 = !{!"clock_t"}
!1528 = !{!"time_t"}
!1529 = !{!"double"}
!1530 = !{!"tm*"}
!1531 = distinct !DISubprogram(name: "nowMs", linkageName: "CQB::Engine::nowMs", scope: !1, file: !1, line: 16, type: !34, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!1532 = !DILocation(line: 17, scope: !1531)
!1533 = !DILocalVariable(name: "ts", scope: !1531, file: !1, line: 17, type: !1534)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1, size: 128, align: 64, elements: !1535)
!1535 = !{!1536, !1537}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1, file: !1, baseType: !1309, size: 64, align: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1, file: !1, baseType: !1309, size: 64, align: 64, offset: 64)
!1538 = !DILocation(line: 18, scope: !1531)
!1539 = !DILocation(line: 19, scope: !1531)
!1540 = distinct !DISubprogram(name: "isProgressLine", linkageName: "CQB::Engine::isProgressLine", scope: !1, file: !1, line: 21, type: !34, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1541)
!1541 = !{!1542, !1543}
!1542 = !DILocalVariable(name: "s", arg: 1, scope: !1540, file: !1, line: 21, type: !42)
!1543 = !DILocalVariable(name: "start", arg: 2, scope: !1540, file: !1, line: 21, type: !45)
!1544 = !DILocation(line: 21, scope: !1540)
!1545 = !DILocation(line: 22, scope: !1540)
!1546 = !DILocation(line: 23, scope: !1540)
!1547 = !DILocalVariable(name: "j", scope: !1540, file: !1, line: 23, type: !45)
!1548 = !DILocation(line: 24, scope: !1540)
!1549 = !DILocation(line: 25, scope: !1540)
!1550 = !DILocalVariable(name: "c", scope: !1540, file: !1, line: 25, type: !43)
!1551 = !DILocation(line: 26, scope: !1540)
!1552 = !DILocation(line: 30, scope: !1540)
!1553 = !DILocation(line: 27, scope: !1540)
!1554 = !DILocation(line: 28, scope: !1540)
!1555 = distinct !DISubprogram(name: "countDone", linkageName: "CQB::Engine::countDone", scope: !1, file: !1, line: 32, type: !34, scopeLine: 32, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1556)
!1556 = !{!1557}
!1557 = !DILocalVariable(name: "s", arg: 1, scope: !1555, file: !1, line: 32, type: !42)
!1558 = !DILocation(line: 32, scope: !1555)
!1559 = !DILocation(line: 33, scope: !1555)
!1560 = !DILocalVariable(name: "n", scope: !1555, file: !1, line: 33, type: !45)
!1561 = !DILocation(line: 34, scope: !1555)
!1562 = !DILocalVariable(name: "i", scope: !1555, file: !1, line: 34, type: !45)
!1563 = !DILocation(line: 35, scope: !1555)
!1564 = !DILocation(line: 36, scope: !1555)
!1565 = !DILocation(line: 40, scope: !1555)
!1566 = !DILocation(line: 37, scope: !1555)
!1567 = !DILocation(line: 38, scope: !1555)
!1568 = distinct !DISubprogram(name: "printWithoutProgress", linkageName: "CQB::Engine::printWithoutProgress", scope: !1, file: !1, line: 42, type: !34, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1569)
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "s", arg: 1, scope: !1568, file: !1, line: 42, type: !42)
!1571 = !DILocation(line: 42, scope: !1568)
!1572 = !DILocation(line: 43, scope: !1568)
!1573 = !DILocalVariable(name: "i", scope: !1568, file: !1, line: 43, type: !45)
!1574 = !DILocation(line: 44, scope: !1568)
!1575 = !DILocation(line: 45, scope: !1568)
!1576 = !DILocalVariable(name: "start", scope: !1568, file: !1, line: 45, type: !45)
!1577 = !DILocation(line: 46, scope: !1568)
!1578 = !DILocation(line: 52, scope: !1568)
!1579 = !DILocation(line: 47, scope: !1568)
!1580 = !DILocalVariable(name: "len", scope: !1568, file: !1, line: 47, type: !45)
!1581 = !DILocation(line: 48, scope: !1568)
!1582 = !DILocation(line: 49, scope: !1568)
!1583 = !DILocation(line: 50, scope: !1568)
!1584 = distinct !DISubprogram(name: "exited", linkageName: "CQB::Engine::exited", scope: !1, file: !1, line: 65, type: !34, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1585)
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "status", arg: 1, scope: !1584, file: !1, line: 65, type: !45)
!1587 = !DILocation(line: 65, scope: !1584)
!1588 = !DILocation(line: 66, scope: !1584)
!1589 = distinct !DISubprogram(name: "exitStatus", linkageName: "CQB::Engine::exitStatus", scope: !1, file: !1, line: 68, type: !34, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "status", arg: 1, scope: !1589, file: !1, line: 68, type: !45)
!1592 = !DILocation(line: 68, scope: !1589)
!1593 = !DILocation(line: 69, scope: !1589)
!1594 = distinct !DISubprogram(name: "signaled", linkageName: "CQB::Engine::signaled", scope: !1, file: !1, line: 71, type: !34, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1595)
!1595 = !{!1596}
!1596 = !DILocalVariable(name: "status", arg: 1, scope: !1594, file: !1, line: 71, type: !45)
!1597 = !DILocation(line: 71, scope: !1594)
!1598 = !DILocation(line: 72, scope: !1594)
!1599 = !DILocalVariable(name: "sig", scope: !1594, file: !1, line: 72, type: !45)
!1600 = !DILocation(line: 73, scope: !1594)
!1601 = distinct !DISubprogram(name: "termSignal", linkageName: "CQB::Engine::termSignal", scope: !1, file: !1, line: 75, type: !34, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1602)
!1602 = !{!1603}
!1603 = !DILocalVariable(name: "status", arg: 1, scope: !1601, file: !1, line: 75, type: !45)
!1604 = !DILocation(line: 75, scope: !1601)
!1605 = !DILocation(line: 76, scope: !1601)
!1606 = distinct !DISubprogram(name: "decodeStatus", linkageName: "CQB::Engine::decodeStatus", scope: !1, file: !1, line: 78, type: !34, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1607)
!1607 = !{!1608}
!1608 = !DILocalVariable(name: "status", arg: 1, scope: !1606, file: !1, line: 78, type: !45)
!1609 = !DILocation(line: 78, scope: !1606)
!1610 = !DILocation(line: 79, scope: !1606)
!1611 = !DILocation(line: 80, scope: !1606)
!1612 = !DILocation(line: 81, scope: !1606)
!1613 = distinct !DISubprogram(name: "runCommand", linkageName: "CQB::Engine::runCommand", scope: !1, file: !1, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1614)
!1614 = !{!1615, !1616, !1617}
!1615 = !DILocalVariable(name: "args", arg: 1, scope: !1613, file: !1, line: 87, type: !38)
!1616 = !DILocalVariable(name: "label", arg: 2, scope: !1613, file: !1, line: 87, type: !42)
!1617 = !DILocalVariable(name: "tty", arg: 3, scope: !1613, file: !1, line: 87, type: !130)
!1618 = !{!"RunResult"}
!1619 = !DILocation(line: 87, scope: !1613)
!1620 = !DILocation(line: 88, scope: !1613)
!1621 = !DILocalVariable(name: "fds", scope: !1613, file: !1, line: 88, type: !1622)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 32, elements: !1623)
!1623 = !{!1624}
!1624 = !DISubrange(count: 2, lowerBound: 0)
!1625 = !DILocation(line: 89, scope: !1613)
!1626 = !DILocation(line: 90, scope: !1613)
!1627 = !DILocalVariable(name: "fa", scope: !1613, file: !1, line: 90, type: !1628)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_spawn_file_actions_t", file: !1, size: 640, align: 64, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1635}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "__allocated", scope: !1, file: !1, baseType: !45, size: 32, align: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__used", scope: !1, file: !1, baseType: !45, size: 32, align: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "__actions", scope: !1, file: !1, baseType: !1633, size: 64, align: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__spawn_action*", baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "__spawn_action", file: !1, align: 8, elements: !25)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !1, file: !1, baseType: !1636, size: 512, align: 32, offset: 128)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 32, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 16, lowerBound: 0)
!1639 = !DILocation(line: 91, scope: !1613)
!1640 = !DILocation(line: 92, scope: !1613)
!1641 = !DILocation(line: 93, scope: !1613)
!1642 = !DILocation(line: 94, scope: !1613)
!1643 = !DILocation(line: 95, scope: !1613)
!1644 = !DILocation(line: 96, scope: !1613)
!1645 = !DILocation(line: 97, scope: !1613)
!1646 = !DILocalVariable(name: "argv", scope: !1613, file: !1, line: 97, type: !41)
!1647 = !DILocation(line: 98, scope: !1613)
!1648 = !DILocalVariable(name: "pid", scope: !1613, file: !1, line: 98, type: !45)
!1649 = !DILocation(line: 99, scope: !1613)
!1650 = !DILocalVariable(name: "rc", scope: !1613, file: !1, line: 99, type: !45)
!1651 = !DILocation(line: 100, scope: !1613)
!1652 = !DILocation(line: 101, scope: !1613)
!1653 = !DILocation(line: 102, scope: !1613)
!1654 = !DILocation(line: 103, scope: !1613)
!1655 = !DILocalVariable(name: "outs", scope: !1613, file: !1, line: 103, type: !436)
!1656 = !DILocation(line: 104, scope: !1613)
!1657 = !DILocalVariable(name: "buf", scope: !1613, file: !1, line: 104, type: !1658)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32768, align: 8, elements: !1659)
!1659 = !{!1660}
!1660 = !DISubrange(count: 4096, lowerBound: 0)
!1661 = !DILocation(line: 105, scope: !1613)
!1662 = !DILocalVariable(name: "line", scope: !1613, file: !1, line: 105, type: !1663)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 4096, align: 8, elements: !1664)
!1664 = !{!1665}
!1665 = !DISubrange(count: 512, lowerBound: 0)
!1666 = !DILocation(line: 106, scope: !1613)
!1667 = !DILocalVariable(name: "phase", scope: !1613, file: !1, line: 106, type: !1668)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, align: 8, elements: !1669)
!1669 = !{!1670}
!1670 = !DISubrange(count: 32, lowerBound: 0)
!1671 = !DILocation(line: 107, scope: !1613)
!1672 = !DILocalVariable(name: "lineLen", scope: !1613, file: !1, line: 107, type: !45)
!1673 = !DILocation(line: 108, scope: !1613)
!1674 = !DILocalVariable(name: "steps", scope: !1613, file: !1, line: 108, type: !45)
!1675 = !DILocation(line: 109, scope: !1613)
!1676 = !DILocalVariable(name: "phaseStart", scope: !1613, file: !1, line: 109, type: !1309)
!1677 = !DILocation(line: 110, scope: !1613)
!1678 = !DILocalVariable(name: "lastStepMs", scope: !1613, file: !1, line: 110, type: !1309)
!1679 = !DILocation(line: 111, scope: !1613)
!1680 = !DILocalVariable(name: "n", scope: !1613, file: !1, line: 111, type: !45)
!1681 = !DILocation(line: 112, scope: !1613)
!1682 = !DILocation(line: 113, scope: !1613)
!1683 = !DILocation(line: 114, scope: !1613)
!1684 = !DILocalVariable(name: "s", scope: !1613, file: !1, line: 114, type: !436)
!1685 = !DILocation(line: 115, scope: !1613)
!1686 = !DILocation(line: 116, scope: !1613)
!1687 = !DILocation(line: 117, scope: !1613)
!1688 = !DILocalVariable(name: "i", scope: !1613, file: !1, line: 117, type: !45)
!1689 = !DILocation(line: 142, scope: !1613)
!1690 = !DILocation(line: 143, scope: !1613)
!1691 = !DILocalVariable(name: "status", scope: !1613, file: !1, line: 143, type: !45)
!1692 = !DILocation(line: 144, scope: !1613)
!1693 = !DILocation(line: 145, scope: !1613)
!1694 = !DILocation(line: 118, scope: !1613)
!1695 = !DILocation(line: 140, scope: !1613)
!1696 = !DILocation(line: 119, scope: !1613)
!1697 = !DILocation(line: 122, scope: !1613)
!1698 = !DILocation(line: 123, scope: !1613)
!1699 = !DILocalVariable(name: "len", scope: !1613, file: !1, line: 123, type: !45)
!1700 = !DILocation(line: 124, scope: !1613)
!1701 = !DILocation(line: 125, scope: !1613)
!1702 = !DILocation(line: 120, scope: !1613)
!1703 = !DILocation(line: 126, scope: !1613)
!1704 = !DILocalVariable(name: "p", scope: !1613, file: !1, line: 126, type: !45)
!1705 = !DILocalVariable(name: "j", scope: !1613, file: !1, line: 126, type: !45)
!1706 = !DILocation(line: 127, scope: !1613)
!1707 = !DILocation(line: 128, scope: !1613)
!1708 = !DILocation(line: 129, scope: !1613)
!1709 = !DILocation(line: 130, scope: !1613)
!1710 = !DILocation(line: 131, scope: !1613)
!1711 = !DILocation(line: 135, scope: !1613)
!1712 = !DILocation(line: 133, scope: !1613)
!1713 = !DILocation(line: 136, scope: !1613)
!1714 = !DILocation(line: 137, scope: !1613)
!1715 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<int>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1716)
!1716 = !{!1717}
!1717 = !DILocalVariable(name: "this", arg: 1, scope: !1715, file: !33, line: 87, type: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<int>*", baseType: !1276, size: 64)
!1719 = !DILocation(line: 87, scope: !1715)
!1720 = !DILocation(line: 88, scope: !1715)
!1721 = !DILocation(line: 89, scope: !1715)
!1722 = !DILocation(line: 90, scope: !1715)
!1723 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<int>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1724)
!1724 = !{!1725, !1726}
!1725 = !DILocalVariable(name: "this", arg: 1, scope: !1723, file: !33, line: 95, type: !1718)
!1726 = !DILocalVariable(name: "cap", arg: 2, scope: !1723, file: !33, line: 95, type: !45)
!1727 = !DILocation(line: 95, scope: !1723)
!1728 = !DILocation(line: 96, scope: !1723)
!1729 = !DILocation(line: 97, scope: !1723)
!1730 = !DILocation(line: 98, scope: !1723)
!1731 = !DILocation(line: 99, scope: !1723)
!1732 = !DILocation(line: 100, scope: !1723)
!1733 = !DILocation(line: 101, scope: !1723)
!1734 = !DILocation(line: 104, scope: !1723)
!1735 = !DILocalVariable(name: "new_data", scope: !1723, file: !33, line: 104, type: !1279)
!1736 = !DILocation(line: 105, scope: !1723)
!1737 = !DILocation(line: 106, scope: !1723)
!1738 = !DILocation(line: 108, scope: !1723)
!1739 = !DILocation(line: 109, scope: !1723)
!1740 = !DILocation(line: 110, scope: !1723)
!1741 = !DILocation(line: 112, scope: !1723)
!1742 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<int>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1743)
!1743 = !{!1744, !1745}
!1744 = !DILocalVariable(name: "this", arg: 1, scope: !1742, file: !33, line: 117, type: !1718)
!1745 = !DILocalVariable(name: "value", arg: 2, scope: !1742, file: !33, line: 117, type: !45)
!1746 = !DILocation(line: 117, scope: !1742)
!1747 = !DILocation(line: 118, scope: !1742)
!1748 = !DILocation(line: 119, scope: !1742)
!1749 = !DILocation(line: 122, scope: !1742)
!1750 = !DILocation(line: 123, scope: !1742)
!1751 = !DILocation(line: 120, scope: !1742)
!1752 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<int>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1753)
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "this", arg: 1, scope: !1752, file: !33, line: 127, type: !1718)
!1755 = !DILocation(line: 127, scope: !1752)
!1756 = !DILocation(line: 128, scope: !1752)
!1757 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<int>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1758)
!1758 = !{!1759}
!1759 = !DILocalVariable(name: "this", arg: 1, scope: !1757, file: !33, line: 132, type: !1718)
!1760 = !DILocation(line: 132, scope: !1757)
!1761 = !DILocation(line: 133, scope: !1757)
!1762 = !DILocation(line: 134, scope: !1757)
!1763 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<int>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1764)
!1764 = !{!1765}
!1765 = !DILocalVariable(name: "this", arg: 1, scope: !1763, file: !33, line: 139, type: !1718)
!1766 = !DILocation(line: 139, scope: !1763)
!1767 = !DILocation(line: 140, scope: !1763)
!1768 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<int>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DILocalVariable(name: "this", arg: 1, scope: !1768, file: !33, line: 146, type: !1718)
!1771 = !DILocalVariable(name: "data", arg: 2, scope: !1768, file: !33, line: 146, type: !1279)
!1772 = !DILocalVariable(name: "length", arg: 3, scope: !1768, file: !33, line: 146, type: !102)
!1773 = !DILocation(line: 146, scope: !1768)
!1774 = !DILocation(line: 147, scope: !1768)
!1775 = !DILocation(line: 148, scope: !1768)
!1776 = !DILocation(line: 149, scope: !1768)
!1777 = !DILocation(line: 150, scope: !1768)
!1778 = !DILocation(line: 151, scope: !1768)
!1779 = !DILocalVariable(name: "i", scope: !1768, file: !33, line: 151, type: !45)
!1780 = !DILocation(line: 152, scope: !1768)
!1781 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<int>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1782)
!1782 = !{!1783, !1784}
!1783 = !DILocalVariable(name: "this", arg: 1, scope: !1781, file: !33, line: 159, type: !1718)
!1784 = !DILocalVariable(name: "index", arg: 2, scope: !1781, file: !33, line: 159, type: !102)
!1785 = !DILocation(line: 159, scope: !1781)
!1786 = !DILocation(line: 160, scope: !1781)
!1787 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<int>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1788)
!1788 = !{!1789, !1794, !1795, !1796}
!1789 = !DILocalVariable(name: "this", arg: 1, scope: !1787, file: !33, line: 27, type: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<int>*", baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<int>", file: !33, line: 18, size: 128, align: 64, elements: !1792)
!1792 = !{!1793, !125, !126}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !1279, size: 64, align: 64)
!1794 = !DILocalVariable(name: "data", arg: 2, scope: !1787, file: !33, line: 27, type: !1279)
!1795 = !DILocalVariable(name: "size", arg: 3, scope: !1787, file: !33, line: 27, type: !45)
!1796 = !DILocalVariable(name: "is_end", arg: 4, scope: !1787, file: !33, line: 27, type: !130)
!1797 = !DILocation(line: 27, scope: !1787)
!1798 = !DILocation(line: 28, scope: !1787)
!1799 = !DILocation(line: 29, scope: !1787)
!1800 = !DILocation(line: 30, scope: !1787)
!1801 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<int>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1802)
!1802 = !{!1803}
!1803 = !DILocalVariable(name: "this", arg: 1, scope: !1801, file: !33, line: 34, type: !1790)
!1804 = !DILocation(line: 34, scope: !1801)
!1805 = !DILocation(line: 35, scope: !1801)
!1806 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<int>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1807)
!1807 = !{!1808}
!1808 = !DILocalVariable(name: "this", arg: 1, scope: !1806, file: !33, line: 39, type: !1790)
!1809 = !DILocation(line: 39, scope: !1806)
!1810 = !DILocation(line: 40, scope: !1806)
!1811 = !DILocation(line: 41, scope: !1806)
!1812 = !DILocation(line: 43, scope: !1806)
!1813 = !DILocation(line: 44, scope: !1806)
!1814 = !DILocation(line: 46, scope: !1806)
!1815 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<int>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1816)
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "this", arg: 1, scope: !1815, file: !33, line: 50, type: !1790)
!1818 = !DILocation(line: 50, scope: !1815)
!1819 = !DILocation(line: 51, scope: !1815)
!1820 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<int>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1821)
!1821 = !{!1822}
!1822 = !DILocalVariable(name: "this", arg: 1, scope: !1820, file: !33, line: 55, type: !1790)
!1823 = !DILocation(line: 55, scope: !1820)
!1824 = !DILocation(line: 56, scope: !1820)
!1825 = !DILocation(line: 57, scope: !1820)
!1826 = !DILocation(line: 59, scope: !1820)
!1827 = !DILocation(line: 60, scope: !1820)
!1828 = !DILocation(line: 62, scope: !1820)
!1829 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<int>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1830)
!1830 = !{!1831, !1832}
!1831 = !DILocalVariable(name: "this", arg: 1, scope: !1829, file: !33, line: 67, type: !1790)
!1832 = !DILocalVariable(name: "index", arg: 2, scope: !1829, file: !33, line: 67, type: !45)
!1833 = !DILocation(line: 67, scope: !1829)
!1834 = !DILocation(line: 68, scope: !1829)
!1835 = !DILocation(line: 69, scope: !1829)
!1836 = !DILocation(line: 73, scope: !1829)
!1837 = !DILocation(line: 70, scope: !1829)
!1838 = !DILocation(line: 71, scope: !1829)
!1839 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<int>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1840)
!1840 = !{!1841}
!1841 = !DILocalVariable(name: "this", arg: 1, scope: !1839, file: !33, line: 164, type: !1718)
!1842 = !DILocation(line: 164, scope: !1839)
!1843 = !DILocation(line: 165, scope: !1839)
!1844 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<int>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1845)
!1845 = !{!1846}
!1846 = !DILocalVariable(name: "this", arg: 1, scope: !1844, file: !33, line: 169, type: !1718)
!1847 = !DILocation(line: 169, scope: !1844)
!1848 = !DILocation(line: 170, scope: !1844)
!1849 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<int>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1850)
!1850 = !{!1851}
!1851 = !DILocalVariable(name: "this", arg: 1, scope: !1849, file: !33, line: 175, type: !1718)
!1852 = !DILocation(line: 175, scope: !1849)
!1853 = !DILocation(line: 176, scope: !1849)
!1854 = !DILocation(line: 177, scope: !1849)
!1855 = !DILocation(line: 178, scope: !1849)
!1856 = !DILocation(line: 179, scope: !1849)
!1857 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<int>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1858)
!1858 = !{!1859, !1860}
!1859 = !DILocalVariable(name: "this", arg: 1, scope: !1857, file: !33, line: 185, type: !1718)
!1860 = !DILocalVariable(name: "other", arg: 2, scope: !1857, file: !33, line: 185, type: !1276)
!1861 = !DILocation(line: 185, scope: !1857)
!1862 = !DILocation(line: 186, scope: !1857)
!1863 = !DILocation(line: 187, scope: !1857)
!1864 = !DILocation(line: 189, scope: !1857)
!1865 = !DILocation(line: 190, scope: !1857)
!1866 = !DILocalVariable(name: "i", scope: !1857, file: !33, line: 190, type: !45)
!1867 = !DILocation(line: 191, scope: !1857)
!1868 = !DILocation(line: 193, scope: !1857)
!1869 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<int>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1870)
!1870 = !{!1871}
!1871 = !DILocalVariable(name: "this", arg: 1, scope: !1869, file: !33, line: 197, type: !1718)
!1872 = !DILocation(line: 197, scope: !1869)
!1873 = !DILocation(line: 198, scope: !1869)
!1874 = distinct !DISubprogram(name: "Vec", linkageName: "Vector::Vec<bool>_Vec", scope: !33, file: !33, line: 87, type: !34, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1875)
!1875 = !{!1876}
!1876 = !DILocalVariable(name: "this", arg: 1, scope: !1874, file: !33, line: 87, type: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Vec<bool>*", baseType: !1286, size: 64)
!1878 = !DILocation(line: 87, scope: !1874)
!1879 = !DILocation(line: 88, scope: !1874)
!1880 = !DILocation(line: 89, scope: !1874)
!1881 = !DILocation(line: 90, scope: !1874)
!1882 = distinct !DISubprogram(name: "reserve", linkageName: "Vector::Vec<bool>_reserve_int", scope: !33, file: !33, line: 95, type: !34, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1883)
!1883 = !{!1884, !1885}
!1884 = !DILocalVariable(name: "this", arg: 1, scope: !1882, file: !33, line: 95, type: !1877)
!1885 = !DILocalVariable(name: "cap", arg: 2, scope: !1882, file: !33, line: 95, type: !45)
!1886 = !DILocation(line: 95, scope: !1882)
!1887 = !DILocation(line: 96, scope: !1882)
!1888 = !DILocation(line: 97, scope: !1882)
!1889 = !DILocation(line: 98, scope: !1882)
!1890 = !DILocation(line: 99, scope: !1882)
!1891 = !DILocation(line: 100, scope: !1882)
!1892 = !DILocation(line: 101, scope: !1882)
!1893 = !DILocation(line: 104, scope: !1882)
!1894 = !DILocalVariable(name: "new_data", scope: !1882, file: !33, line: 104, type: !1289)
!1895 = !DILocation(line: 105, scope: !1882)
!1896 = !DILocation(line: 106, scope: !1882)
!1897 = !DILocation(line: 108, scope: !1882)
!1898 = !DILocation(line: 109, scope: !1882)
!1899 = !DILocation(line: 110, scope: !1882)
!1900 = !DILocation(line: 112, scope: !1882)
!1901 = distinct !DISubprogram(name: "push", linkageName: "Vector::Vec<bool>_push_T", scope: !33, file: !33, line: 117, type: !34, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1902)
!1902 = !{!1903, !1904}
!1903 = !DILocalVariable(name: "this", arg: 1, scope: !1901, file: !33, line: 117, type: !1877)
!1904 = !DILocalVariable(name: "value", arg: 2, scope: !1901, file: !33, line: 117, type: !130)
!1905 = !DILocation(line: 117, scope: !1901)
!1906 = !DILocation(line: 118, scope: !1901)
!1907 = !DILocation(line: 119, scope: !1901)
!1908 = !DILocation(line: 122, scope: !1901)
!1909 = !DILocation(line: 123, scope: !1901)
!1910 = !DILocation(line: 120, scope: !1901)
!1911 = distinct !DISubprogram(name: "length", linkageName: "Vector::Vec<bool>_length", scope: !33, file: !33, line: 127, type: !34, scopeLine: 127, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1912)
!1912 = !{!1913}
!1913 = !DILocalVariable(name: "this", arg: 1, scope: !1911, file: !33, line: 127, type: !1877)
!1914 = !DILocation(line: 127, scope: !1911)
!1915 = !DILocation(line: 128, scope: !1911)
!1916 = distinct !DISubprogram(name: "pop", linkageName: "Vector::Vec<bool>_pop", scope: !33, file: !33, line: 132, type: !34, scopeLine: 132, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1917)
!1917 = !{!1918}
!1918 = !DILocalVariable(name: "this", arg: 1, scope: !1916, file: !33, line: 132, type: !1877)
!1919 = !DILocation(line: 132, scope: !1916)
!1920 = !DILocation(line: 133, scope: !1916)
!1921 = !DILocation(line: 134, scope: !1916)
!1922 = distinct !DISubprogram(name: "shrinkToFit", linkageName: "Vector::Vec<bool>_shrinkToFit", scope: !33, file: !33, line: 139, type: !34, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1923)
!1923 = !{!1924}
!1924 = !DILocalVariable(name: "this", arg: 1, scope: !1922, file: !33, line: 139, type: !1877)
!1925 = !DILocation(line: 139, scope: !1922)
!1926 = !DILocation(line: 140, scope: !1922)
!1927 = distinct !DISubprogram(name: "operator[]=", linkageName: "Vector::Vec<bool>_operator[]=_T*_addr_t", scope: !33, file: !33, line: 146, type: !34, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1928)
!1928 = !{!1929, !1930, !1931}
!1929 = !DILocalVariable(name: "this", arg: 1, scope: !1927, file: !33, line: 146, type: !1877)
!1930 = !DILocalVariable(name: "data", arg: 2, scope: !1927, file: !33, line: 146, type: !1289)
!1931 = !DILocalVariable(name: "length", arg: 3, scope: !1927, file: !33, line: 146, type: !102)
!1932 = !DILocation(line: 146, scope: !1927)
!1933 = !DILocation(line: 147, scope: !1927)
!1934 = !DILocation(line: 148, scope: !1927)
!1935 = !DILocation(line: 149, scope: !1927)
!1936 = !DILocation(line: 150, scope: !1927)
!1937 = !DILocation(line: 151, scope: !1927)
!1938 = !DILocalVariable(name: "i", scope: !1927, file: !33, line: 151, type: !45)
!1939 = !DILocation(line: 152, scope: !1927)
!1940 = distinct !DISubprogram(name: "operator[]", linkageName: "Vector::Vec<bool>_operator[]_addr_t", scope: !33, file: !33, line: 159, type: !34, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1941)
!1941 = !{!1942, !1943}
!1942 = !DILocalVariable(name: "this", arg: 1, scope: !1940, file: !33, line: 159, type: !1877)
!1943 = !DILocalVariable(name: "index", arg: 2, scope: !1940, file: !33, line: 159, type: !102)
!1944 = !DILocation(line: 159, scope: !1940)
!1945 = !DILocation(line: 160, scope: !1940)
!1946 = distinct !DISubprogram(name: "It", linkageName: "Vector::Iterator::It<bool>_It_T*_int_bool", scope: !33, file: !33, line: 27, type: !34, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1947)
!1947 = !{!1948, !1953, !1954, !1955}
!1948 = !DILocalVariable(name: "this", arg: 1, scope: !1946, file: !33, line: 27, type: !1949)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Vector::Iterator::It<bool>*", baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vector::Iterator::It<bool>", file: !33, line: 18, size: 128, align: 64, elements: !1951)
!1951 = !{!1952, !125, !126}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !33, line: 18, baseType: !1289, size: 64, align: 64)
!1953 = !DILocalVariable(name: "data", arg: 2, scope: !1946, file: !33, line: 27, type: !1289)
!1954 = !DILocalVariable(name: "size", arg: 3, scope: !1946, file: !33, line: 27, type: !45)
!1955 = !DILocalVariable(name: "is_end", arg: 4, scope: !1946, file: !33, line: 27, type: !130)
!1956 = !DILocation(line: 27, scope: !1946)
!1957 = !DILocation(line: 28, scope: !1946)
!1958 = !DILocation(line: 29, scope: !1946)
!1959 = !DILocation(line: 30, scope: !1946)
!1960 = distinct !DISubprogram(name: "_atEnd", linkageName: "Vector::Iterator::It<bool>__atEnd", scope: !33, file: !33, line: 34, type: !34, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1961)
!1961 = !{!1962}
!1962 = !DILocalVariable(name: "this", arg: 1, scope: !1960, file: !33, line: 34, type: !1949)
!1963 = !DILocation(line: 34, scope: !1960)
!1964 = !DILocation(line: 35, scope: !1960)
!1965 = distinct !DISubprogram(name: "_next", linkageName: "Vector::Iterator::It<bool>__next", scope: !33, file: !33, line: 39, type: !34, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1966)
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "this", arg: 1, scope: !1965, file: !33, line: 39, type: !1949)
!1968 = !DILocation(line: 39, scope: !1965)
!1969 = !DILocation(line: 40, scope: !1965)
!1970 = !DILocation(line: 41, scope: !1965)
!1971 = !DILocation(line: 43, scope: !1965)
!1972 = !DILocation(line: 44, scope: !1965)
!1973 = !DILocation(line: 46, scope: !1965)
!1974 = distinct !DISubprogram(name: "_atStart", linkageName: "Vector::Iterator::It<bool>__atStart", scope: !33, file: !33, line: 50, type: !34, scopeLine: 50, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1975)
!1975 = !{!1976}
!1976 = !DILocalVariable(name: "this", arg: 1, scope: !1974, file: !33, line: 50, type: !1949)
!1977 = !DILocation(line: 50, scope: !1974)
!1978 = !DILocation(line: 51, scope: !1974)
!1979 = distinct !DISubprogram(name: "_prev", linkageName: "Vector::Iterator::It<bool>__prev", scope: !33, file: !33, line: 55, type: !34, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1980)
!1980 = !{!1981}
!1981 = !DILocalVariable(name: "this", arg: 1, scope: !1979, file: !33, line: 55, type: !1949)
!1982 = !DILocation(line: 55, scope: !1979)
!1983 = !DILocation(line: 56, scope: !1979)
!1984 = !DILocation(line: 57, scope: !1979)
!1985 = !DILocation(line: 59, scope: !1979)
!1986 = !DILocation(line: 60, scope: !1979)
!1987 = !DILocation(line: 62, scope: !1979)
!1988 = distinct !DISubprogram(name: "_moveTo", linkageName: "Vector::Iterator::It<bool>__moveTo_int", scope: !33, file: !33, line: 67, type: !34, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1989)
!1989 = !{!1990, !1991}
!1990 = !DILocalVariable(name: "this", arg: 1, scope: !1988, file: !33, line: 67, type: !1949)
!1991 = !DILocalVariable(name: "index", arg: 2, scope: !1988, file: !33, line: 67, type: !45)
!1992 = !DILocation(line: 67, scope: !1988)
!1993 = !DILocation(line: 68, scope: !1988)
!1994 = !DILocation(line: 69, scope: !1988)
!1995 = !DILocation(line: 73, scope: !1988)
!1996 = !DILocation(line: 70, scope: !1988)
!1997 = !DILocation(line: 71, scope: !1988)
!1998 = distinct !DISubprogram(name: "_begin", linkageName: "Vector::Vec<bool>__begin", scope: !33, file: !33, line: 164, type: !34, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !1999)
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "this", arg: 1, scope: !1998, file: !33, line: 164, type: !1877)
!2001 = !DILocation(line: 164, scope: !1998)
!2002 = !DILocation(line: 165, scope: !1998)
!2003 = distinct !DISubprogram(name: "_end", linkageName: "Vector::Vec<bool>__end", scope: !33, file: !33, line: 169, type: !34, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2004)
!2004 = !{!2005}
!2005 = !DILocalVariable(name: "this", arg: 1, scope: !2003, file: !33, line: 169, type: !1877)
!2006 = !DILocation(line: 169, scope: !2003)
!2007 = !DILocation(line: 170, scope: !2003)
!2008 = distinct !DISubprogram(name: "_destroy", linkageName: "Vector::Vec<bool>__destroy", scope: !33, file: !33, line: 175, type: !34, scopeLine: 175, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "this", arg: 1, scope: !2008, file: !33, line: 175, type: !1877)
!2011 = !DILocation(line: 175, scope: !2008)
!2012 = !DILocation(line: 176, scope: !2008)
!2013 = !DILocation(line: 177, scope: !2008)
!2014 = !DILocation(line: 178, scope: !2008)
!2015 = !DILocation(line: 179, scope: !2008)
!2016 = distinct !DISubprogram(name: "operator=", linkageName: "Vector::Vec<bool>_operator=_Vec<T>", scope: !33, file: !33, line: 185, type: !34, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2017)
!2017 = !{!2018, !2019}
!2018 = !DILocalVariable(name: "this", arg: 1, scope: !2016, file: !33, line: 185, type: !1877)
!2019 = !DILocalVariable(name: "other", arg: 2, scope: !2016, file: !33, line: 185, type: !1286)
!2020 = !DILocation(line: 185, scope: !2016)
!2021 = !DILocation(line: 186, scope: !2016)
!2022 = !DILocation(line: 187, scope: !2016)
!2023 = !DILocation(line: 189, scope: !2016)
!2024 = !DILocation(line: 190, scope: !2016)
!2025 = !DILocalVariable(name: "i", scope: !2016, file: !33, line: 190, type: !45)
!2026 = !DILocation(line: 191, scope: !2016)
!2027 = !DILocation(line: 193, scope: !2016)
!2028 = distinct !DISubprogram(name: "isEmpty", linkageName: "Vector::Vec<bool>_isEmpty", scope: !33, file: !33, line: 197, type: !34, scopeLine: 197, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2029)
!2029 = !{!2030}
!2030 = !DILocalVariable(name: "this", arg: 1, scope: !2028, file: !33, line: 197, type: !1877)
!2031 = !DILocation(line: 197, scope: !2028)
!2032 = !DILocation(line: 198, scope: !2028)
!2033 = distinct !DISubprogram(name: "String::toStr<int>", linkageName: "String::toStr<int>", scope: !437, file: !437, line: 252, type: !34, scopeLine: 252, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2034)
!2034 = !{!2035}
!2035 = !DILocalVariable(name: "value", arg: 1, scope: !2033, file: !437, line: 252, type: !45)
!2036 = !DILocation(line: 252, scope: !2033)
!2037 = !DILocation(line: 253, scope: !2033)
!2038 = !DILocation(line: 254, scope: !2033)
!2039 = !DILocation(line: 256, scope: !2033)
!2040 = !DILocalVariable(name: "negative", scope: !2033, file: !437, line: 256, type: !130)
!2041 = !DILocation(line: 257, scope: !2033)
!2042 = !DILocation(line: 258, scope: !2033)
!2043 = !DILocation(line: 259, scope: !2033)
!2044 = !DILocation(line: 261, scope: !2033)
!2045 = !DILocalVariable(name: "buffer", scope: !2033, file: !437, line: 261, type: !2046)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, align: 8, elements: !2047)
!2047 = !{!2048}
!2048 = !DISubrange(count: 64, lowerBound: 0)
!2049 = !DILocation(line: 262, scope: !2033)
!2050 = !DILocalVariable(name: "i", scope: !2033, file: !437, line: 262, type: !102)
!2051 = !DILocation(line: 263, scope: !2033)
!2052 = !DILocation(line: 264, scope: !2033)
!2053 = !DILocation(line: 265, scope: !2033)
!2054 = !DILocation(line: 267, scope: !2033)
!2055 = !DILocation(line: 268, scope: !2033)
!2056 = !DILocation(line: 270, scope: !2033)
!2057 = !DILocalVariable(name: "j", scope: !2033, file: !437, line: 270, type: !102)
!2058 = !DILocation(line: 271, scope: !2033)
!2059 = !DILocalVariable(name: "temp", scope: !2033, file: !437, line: 271, type: !43)
!2060 = !DILocation(line: 272, scope: !2033)
!2061 = !DILocation(line: 273, scope: !2033)
!2062 = !DILocation(line: 275, scope: !2033)
!2063 = !DILocation(line: 276, scope: !2033)
