; ModuleID = 'master_module'
source_filename = "master_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"String::Str" = type { ptr, i64, i64 }
%"String::View" = type { ptr, i64 }
%"Vector::Iterator::It<int>" = type { ptr, i32, i32 }
%"Vector::Vec<int>" = type { ptr, i32, i32 }
%"Utils::_timespec" = type { i64, i64 }
%"Math::Floating" = type { i32, [8 x i8] }
%"Errors::Error<double>" = type { i32, [8 x i8] }
%"Vector::Iterator::It<char*>" = type { ptr, i32, i32 }
%"Vector::Vec<char*>" = type { ptr, i32, i32 }
%"CQB::Build::Command" = type { ptr, ptr, %"Vector::Vec<char*>", ptr, %"Vector::Vec<char*>", %"Vector::Vec<char*>" }
%"Vector::Iterator::It<CQB::Build::Command>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::Build::Command>" = type { ptr, i32, i32 }
%"Vector::Iterator::It<CQB::CI::Task*>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::CI::Task*>" = type { ptr, i32, i32 }
%"CQB::CI::Step" = type { ptr, %"Vector::Vec<char*>" }
%"Vector::Iterator::It<CQB::CI::Step>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::CI::Step>" = type { ptr, i32, i32 }
%"CQB::CI::Task" = type { ptr, %"Vector::Vec<CQB::CI::Step>", %"Vector::Vec<CQB::CI::Task*>", i1 }
%"CQB::Engine::TaskState" = type { ptr, ptr, ptr, i32, ptr, %"Vector::Vec<char*>", i32, i32 }
%"Vector::Iterator::It<CQB::Engine::TaskState>" = type { ptr, i32, i32 }
%"Vector::Vec<CQB::Engine::TaskState>" = type { ptr, i32, i32 }
%timespec = type { i64, i64 }
%"CQB::Engine::RunResult" = type { i32, ptr }
%posix_spawn_file_actions_t = type { i32, i32, ptr, [16 x i32] }
%"Vector::Iterator::It<bool>" = type { ptr, i32, i32 }
%"Vector::Vec<bool>" = type { ptr, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"panic: %s (%s:%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%0*.*jd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%*.*jd\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@"String::Str::NOT_FOUND" = weak_odr local_unnamed_addr global i64 -1
@.str.23 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.24 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.31 = private constant [48 x i8] c"attempted to extract a negative length subtring\00"
@.str.32 = private constant [68 x i8] c"attempted to extract a substring larger than the length of a string\00"
@.str.34 = private constant [29 x i8] c"substring view out of bounds\00"
@.str.37 = private constant [27 x i8] c"string index out of bounds\00"
@.str.38 = private constant [37 x i8] c"string insertion index out of bounds\00"
@.str.40 = private constant [33 x i8] c"string erase range out of bounds\00"
@.str.41 = private unnamed_addr constant [5 x i8] c"true\00"
@.str.42 = private unnamed_addr constant [6 x i8] c"qtrue\00"
@.str.43 = private unnamed_addr constant [5 x i8] c"both\00"
@.str.44 = private unnamed_addr constant [7 x i8] c"qfalse\00"
@.str.45 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.46 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.49 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.50 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.53 = private constant [3 x i8] c"-A\00"
@.str.54 = private constant [4 x i8] c"-ad\00"
@.str.55 = private unnamed_addr constant [3 x i8] c"-D\00"
@.str.56 = private unnamed_addr constant [3 x i8] c"-L\00"
@.str.57 = private unnamed_addr constant [3 x i8] c"-l\00"
@.str.58 = private unnamed_addr constant [3 x i8] c"-I\00"
@.str.59 = private unnamed_addr constant [5 x i8] c"-Wl,\00"
@.str.60 = private unnamed_addr constant [3 x i8] c"-W\00"
@.str.61 = private unnamed_addr constant [6 x i8] c"-Wno-\00"
@.str.62 = private unnamed_addr constant [3 x i8] c"-E\00"
@.str.63 = private constant [10 x i8] c"--c-flags\00"
@.str.64 = private constant [3 x i8] c"qc\00"
@.str.65 = private constant [3 x i8] c"qc\00"
@.str.66 = private constant [4 x i8] c"-oo\00"
@.str.67 = private constant [3 x i8] c"ar\00"
@.str.68 = private constant [4 x i8] c"rcs\00"
@.str.69 = private constant [3 x i8] c"qc\00"
@.str.70 = private constant [9 x i8] c"-dynamic\00"
@.str.71 = private constant [17 x i8] c"qc --translate-c\00"
@.str.72 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.73 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.76 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.77 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.82 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.83 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@__tzname = weak_odr local_unnamed_addr global ptr null
@__daylight = weak_odr local_unnamed_addr global i32 0
@__timezone = weak_odr local_unnamed_addr global i64 0
@tzname = weak_odr local_unnamed_addr global ptr null
@daylight = weak_odr local_unnamed_addr global i32 0
@timezone = weak_odr local_unnamed_addr global i64 0
@__environ = weak_odr local_unnamed_addr global ptr null
@optarg = weak_odr local_unnamed_addr global ptr null
@optind = weak_odr local_unnamed_addr global i32 0
@opterr = weak_odr local_unnamed_addr global i32 0
@optopt = weak_odr local_unnamed_addr global i32 0
@.str.86 = private constant [7 x i8] c"[DONE \00"
@0 = private constant [1 x i8] zeroinitializer, align 1
@.str.88 = private constant [12 x i8] c"pipe failed\00"
@.str.89 = private constant [18 x i8] c"command not found\00"
@1 = private unnamed_addr constant [5 x i8] c"\0D\1B[K\00", align 1
@2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@3 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@4 = private unnamed_addr constant [6 x i8] c"ms) [\00", align 1
@5 = private unnamed_addr constant [3 x i8] c"]\00\00", align 1
@.str.93 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@.str.94 = private constant [36 x i8] c"attempted to iterate a empty vector\00"
@6 = private unnamed_addr constant [29 x i8] c"/home/luca/.qc/lib/stdlib.qc\00", align 1
@7 = private unnamed_addr constant [12 x i8] c"QC-BUILD: '\00", align 1
@8 = private unnamed_addr constant [30 x i8] c"' depends on unknown target '\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"'\0A\00\00", align 1
@10 = private unnamed_addr constant [44 x i8] c"QC-BUILD: dependency cycle in build graph\0A\00\00", align 1
@.str.99 = private constant [3 x i8] c"qc\00"
@.str.100 = private constant [3 x i8] c"-o\00"
@.str.101 = private constant [11 x i8] c"--progress\00"
@.str.102 = private constant [11 x i8] c"--progress\00"
@11 = private unnamed_addr constant [6 x i8] c"\0D\1B[K\00\00", align 1
@12 = private unnamed_addr constant [9 x i8] c" steps, \00", align 1
@13 = private unnamed_addr constant [6 x i8] c" ok (\00", align 1
@14 = private unnamed_addr constant [5 x i8] c"s)\0A\00\00", align 1
@15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@17 = private unnamed_addr constant [15 x i8] c" FAILED (exit \00", align 1
@18 = private unnamed_addr constant [4 x i8] c")\0A\00\00", align 1
@19 = private unnamed_addr constant [17 x i8] c"build finished: \00", align 1
@20 = private unnamed_addr constant [13 x i8] c" targets in \00", align 1
@21 = private unnamed_addr constant [2 x i8] c".\00", align 1
@22 = private unnamed_addr constant [4 x i8] c"s\0A\00\00", align 1
@23 = private unnamed_addr constant [26 x i8] c"QC-CI: no pipeline root\0A\00\00", align 1
@.str.113 = private constant [3 x i8] c"ci\00"
@.str.114 = private constant [8 x i8] c"running\00"
@.str.116 = private constant [8 x i8] c"running\00"
@.str.117 = private constant [1 x i8] zeroinitializer
@24 = private unnamed_addr constant [9 x i8] c"QC-CI: [\00", align 1
@25 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.119 = private constant [1 x i8] zeroinitializer
@26 = private unnamed_addr constant [8 x i8] c"QC-CI: \00", align 1
@27 = private unnamed_addr constant [14 x i8] c"QC-CI: step '\00", align 1
@28 = private unnamed_addr constant [25 x i8] c"' failed with exit code \00", align 1
@29 = private unnamed_addr constant [3 x i8] c"\0A\00\00", align 1
@.str.122 = private constant [7 x i8] c"failed\00"
@.str.123 = private constant [8 x i8] c"success\00"

; Function Attrs: cold mustprogress nofree noreturn nounwind sspstrong uwtable
define internal fastcc void @__qc_panic(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 132, 1234) %2) unnamed_addr #0 {
  %4 = load ptr, ptr @stderr, align 8, !tbaa !9
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %1, i32 noundef %2) #23
  tail call void @abort() #24
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @qc_malloc(i64 noundef %0) unnamed_addr #4 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #25
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @qc_free(ptr noundef captures(none) %0) unnamed_addr #6 {
  tail call void @free(ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal fastcc noalias noundef ptr @qc_realloc(ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #27
  ret ptr %3
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal fastcc void @qc_flush() unnamed_addr #10 {
  %1 = tail call i32 @fflush(ptr noundef null)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal fastcc void @qc_fmt_int(i64 noundef %0, i32 noundef range(i32 -1, 4) %1, i1 noundef zeroext %2) unnamed_addr #10 {
  %4 = tail call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %1, i32 0)
  %5 = select i1 %2, ptr @.str.1, ptr @.str.2
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %5, i32 noundef %4, i32 noundef -1, i64 noundef %0)
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal fastcc void @qc_fmt_string(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @0, ptr %0
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 -1)
  %.not = icmp sgt i32 %5, -2
  br i1 %.not, label %.loopexit1, label %.preheader

7:                                                ; preds = %.preheader
  %8 = add nuw nsw i32 %11, 1
  %9 = xor i32 %6, %8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %.loopexit1, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %1, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %12 = load ptr, ptr @stdout, align 8, !tbaa !9
  %13 = tail call i32 @putc(i32 noundef 32, ptr noundef %12), !inline_history !14
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %.loopexit, label %7

.loopexit1:                                       ; preds = %7, %1
  %15 = load ptr, ptr @stdout, align 8, !tbaa !9
  %16 = tail call i32 @fputs(ptr noundef nonnull %3, ptr noundef %15)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit1
  ret void
}

; Function Attrs: mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind sspstrong uwtable
define internal fastcc void @qc_print_string(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @0, ptr %0
  %4 = load ptr, ptr @stdout, align 8, !tbaa !9
  %5 = tail call i32 @fputs(ptr noundef nonnull %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: mustprogress sspstrong uwtable
define internal fastcc void @qc_close(i32 noundef %0) unnamed_addr #13 {
  %2 = tail call i32 @close(i32 noundef %0)
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree sspstrong uwtable
define internal fastcc noundef i64 @qc_read(i32 noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #15 {
  %3 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %1, i64 noundef 4095)
  ret i64 %3
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #16

define weak_odr void @"String::Str_Str_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !15 {
entry:
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %length_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %strlen, ptr %length_ptr, align 8
  %add = add i64 %strlen, 1
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %add)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call, ptr nonnull align 1 %1, i64 %add, i1 false)
  store ptr %builtin_call, ptr %0, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %add, ptr %capacity_ptr, align 8
  ret void
}

define weak_odr void @"String::Str_Str_addr_t_char"(ptr %0, i64 %1, i8 %2) local_unnamed_addr !qc.return_types !15 {
entry:
  %length_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %length_ptr, align 8
  %add = add i64 %1, 1
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %add)
  %icmplt22 = icmp sgt i64 %1, 0
  br i1 %icmplt22, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr align 1 %builtin_call, i8 %2, i64 %1, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %entry
  %ptr_arr_asi8 = getelementptr i8, ptr %builtin_call, i64 %1
  store i8 0, ptr %ptr_arr_asi8, align 1
  store ptr %builtin_call, ptr %0, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %add, ptr %capacity_ptr, align 8
  ret void
}

define weak_odr void @"String::Str_Str_char*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %add = add i64 %2, 1
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %add, ptr %capacity_ptr, align 8
  %length_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %length_ptr, align 8
  ret void
}

define weak_odr %"String::Str" @"String::Str_operator=_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !16 {
entry:
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  store ptr null, ptr %0, align 8
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %length_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %strlen, ptr %length_ptr, align 8
  %add = add i64 %strlen, 1
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %add)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call, ptr nonnull align 1 %1, i64 %add, i1 false)
  store ptr %builtin_call, ptr %0, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %add, ptr %capacity_ptr, align 8
  %2 = insertvalue %"String::Str" poison, ptr %builtin_call, 0
  %3 = insertvalue %"String::Str" %2, i64 %strlen, 1
  %deref21 = insertvalue %"String::Str" %3, i64 %add, 2
  ret %"String::Str" %deref21
}

define weak_odr i64 @"String::Str_len"(ptr %0) local_unnamed_addr !qc.return_types !17 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %1, align 8
  ret i64 %length
}

define weak_odr %"String::Str" @"String::Str_substr_addr_t_addr_t"(ptr %0, i64 %1, i64 %2) local_unnamed_addr !qc.return_types !16 {
entry:
  %icmplt = icmp slt i64 %2, 0
  br i1 %icmplt, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.31, ptr nonnull @6, i32 1103) #29
  unreachable

ifcont:                                           ; preds = %entry
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length3 = load i64, ptr %3, align 8
  %icmpgt = icmp sgt i64 %1, %length3
  %sub = sub i64 %length3, %1
  %icmpgt7 = icmp sgt i64 %2, %sub
  %or.cond = or i1 %icmpgt, %icmpgt7
  br i1 %or.cond, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont
  tail call fastcc void @__qc_panic(ptr nonnull @.str.32, ptr nonnull @6, i32 1106) #29
  unreachable

ifcont9:                                          ; preds = %ifcont
  %add = add nuw i64 %2, 1
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %add)
  %builtin_call37 = ptrtoaddr ptr %builtin_call to i64
  %icmplt1234.not = icmp eq i64 %2, 0
  br i1 %icmplt1234.not, label %for.end, label %iter.check

iter.check:                                       ; preds = %ifcont9
  %data = load ptr, ptr %0, align 8
  %invariant.gep = getelementptr i8, ptr %data, i64 %1
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %data38 = ptrtoaddr ptr %data to i64
  %4 = add i64 %1, %data38
  %5 = sub i64 %4, %builtin_call37
  %diff.check = icmp ugt i64 %5, -32
  br i1 %diff.check, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check39 = icmp ult i64 %2, 32
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 28
  %n.vec = and i64 %2, 9223372036854775776
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr i8, ptr %builtin_call, i64 %index
  %7 = getelementptr i8, ptr %invariant.gep, i64 %index
  %8 = getelementptr i8, ptr %7, i64 16
  %wide.load = load <16 x i8>, ptr %7, align 1
  %wide.load40 = load <16 x i8>, ptr %8, align 1
  %9 = getelementptr i8, ptr %6, i64 16
  store <16 x i8> %wide.load, ptr %6, align 1
  store <16 x i8> %wide.load40, ptr %9, align 1
  %index.next = add nuw i64 %index, 32
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %for.end, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %2, 9223372036854775804
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ]
  %11 = getelementptr i8, ptr %builtin_call, i64 %index43
  %12 = getelementptr i8, ptr %invariant.gep, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %12, align 1
  store <4 x i8> %wide.load44, ptr %11, align 1
  %index.next45 = add nuw i64 %index43, 4
  %13 = icmp eq i64 %index.next45, %n.vec42
  br i1 %13, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %2, %n.vec42
  br i1 %cmp.n46, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %"String::i.035.ph" = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  %xtraiter = and i64 %2, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %"String::i.035.prol" = phi i64 [ %inc.prol, %for.body.prol ], [ %"String::i.035.ph", %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %ptr_arr_asi.prol = getelementptr i8, ptr %builtin_call, i64 %"String::i.035.prol"
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %"String::i.035.prol"
  %ptr_arr_val.prol = load i8, ptr %gep.prol, align 1
  store i8 %ptr_arr_val.prol, ptr %ptr_arr_asi.prol, align 1
  %inc.prol = add nuw nsw i64 %"String::i.035.prol", 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !23

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %"String::i.035.unr" = phi i64 [ %"String::i.035.ph", %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %14 = sub nsw i64 %"String::i.035.ph", %2
  %15 = icmp ugt i64 %14, -4
  br i1 %15, label %for.end, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %"String::i.035" = phi i64 [ %inc.3, %for.body ], [ %"String::i.035.unr", %for.body.prol.loopexit ]
  %ptr_arr_asi = getelementptr i8, ptr %builtin_call, i64 %"String::i.035"
  %gep = getelementptr i8, ptr %invariant.gep, i64 %"String::i.035"
  %ptr_arr_val = load i8, ptr %gep, align 1
  store i8 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %inc = add nuw nsw i64 %"String::i.035", 1
  %ptr_arr_asi.1 = getelementptr i8, ptr %builtin_call, i64 %inc
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %inc
  %ptr_arr_val.1 = load i8, ptr %gep.1, align 1
  store i8 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 1
  %inc.1 = add nuw nsw i64 %"String::i.035", 2
  %ptr_arr_asi.2 = getelementptr i8, ptr %builtin_call, i64 %inc.1
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %inc.1
  %ptr_arr_val.2 = load i8, ptr %gep.2, align 1
  store i8 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 1
  %inc.2 = add nuw nsw i64 %"String::i.035", 3
  %ptr_arr_asi.3 = getelementptr i8, ptr %builtin_call, i64 %inc.2
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %inc.2
  %ptr_arr_val.3 = load i8, ptr %gep.3, align 1
  store i8 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 1
  %inc.3 = add nuw nsw i64 %"String::i.035", 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %2
  br i1 %exitcond.not.3, label %for.end, label %for.body, !llvm.loop !25

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %ifcont9
  %ptr_arr_asi19 = getelementptr i8, ptr %builtin_call, i64 %2
  store i8 0, ptr %ptr_arr_asi19, align 1
  %"String::Str_inst.fca.0.insert" = insertvalue %"String::Str" poison, ptr %builtin_call, 0
  %"String::Str_inst.fca.1.insert" = insertvalue %"String::Str" %"String::Str_inst.fca.0.insert", i64 %2, 1
  %"String::Str_inst.fca.2.insert" = insertvalue %"String::Str" %"String::Str_inst.fca.1.insert", i64 %add, 2
  ret %"String::Str" %"String::Str_inst.fca.2.insert"
}

define weak_odr %"String::View" @"String::Str_subView_addr_t_addr_t"(ptr %0, i64 %1, i64 %2) local_unnamed_addr !qc.return_types !26 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length2 = load i64, ptr %3, align 8
  %icmpgt = icmp sgt i64 %1, %length2
  %sub = sub i64 %length2, %1
  %icmpgt6 = icmp sgt i64 %2, %sub
  %or.cond = select i1 %icmpgt, i1 true, i1 %icmpgt6
  br i1 %or.cond, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.34, ptr nonnull @6, i32 1118) #29
  unreachable

ifcont:                                           ; preds = %entry
  %data = load ptr, ptr %0, align 8
  %ptr_arith_plus = getelementptr i8, ptr %data, i64 %1
  %4 = insertvalue %"String::View" zeroinitializer, ptr %ptr_arith_plus, 0
  %5 = insertvalue %"String::View" %4, i64 %2, 1
  ret %"String::View" %5
}

define weak_odr i64 @"String::Str_find_Str_addr_t"(ptr %0, %"String::Str" %1, i64 %2) local_unnamed_addr !qc.return_types !17 {
entry:
  %.fca.0.extract = extractvalue %"String::Str" %1, 0
  %.fca.1.extract = extractvalue %"String::Str" %1, 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %3, align 8
  %icmpgt = icmp sgt i64 %2, %length
  br i1 %icmpgt, label %then, label %ifcont

common.ret:                                       ; preds = %for.body, %for.cond17, %ifcont, %for.end, %then10, %then
  %common.ret.op = phi i64 [ %"Str::NOT_FOUND", %then ], [ %2, %ifcont ], [ %"Str::NOT_FOUND12", %then10 ], [ %"Str::NOT_FOUND35", %for.end ], [ %"String::i.053", %for.cond17 ], [ %"String::i.053", %for.body ]
  ret i64 %common.ret.op

then:                                             ; preds = %entry
  %"Str::NOT_FOUND" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %common.ret

ifcont:                                           ; preds = %entry
  %icmpeq = icmp eq i64 %.fca.1.extract, 0
  br i1 %icmpeq, label %common.ret, label %ifcont4

ifcont4:                                          ; preds = %ifcont
  %sub = sub i64 %length, %2
  %icmpgt9 = icmp sgt i64 %.fca.1.extract, %sub
  br i1 %icmpgt9, label %then10, label %for.cond.preheader

for.cond.preheader:                               ; preds = %ifcont4
  %sub16 = sub i64 %length, %.fca.1.extract
  %icmple.not52 = icmp sgt i64 %2, %sub16
  br i1 %icmple.not52, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %icmplt50 = icmp sgt i64 %.fca.1.extract, 0
  br label %for.body

then10:                                           ; preds = %ifcont4
  %"Str::NOT_FOUND12" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %common.ret

for.body:                                         ; preds = %for.body.lr.ph, %ifcont31
  %"String::i.053" = phi i64 [ %2, %for.body.lr.ph ], [ %inc34, %ifcont31 ]
  br i1 %icmplt50, label %for.body18.lr.ph, label %common.ret

for.body18.lr.ph:                                 ; preds = %for.body
  %data = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %data, i64 %"String::i.053"
  br label %for.body18

for.end:                                          ; preds = %ifcont31, %for.cond.preheader
  %"Str::NOT_FOUND35" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %common.ret

for.cond17:                                       ; preds = %for.body18
  %inc = add nuw nsw i64 %"String::j.051", 1
  %exitcond.not = icmp eq i64 %inc, %.fca.1.extract
  br i1 %exitcond.not, label %common.ret, label %for.body18

for.body18:                                       ; preds = %for.body18.lr.ph, %for.cond17
  %"String::j.051" = phi i64 [ 0, %for.body18.lr.ph ], [ %inc, %for.cond17 ]
  %ptr_arr_addr = getelementptr i8, ptr %4, i64 %"String::j.051"
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %ptr_arr_addr26 = getelementptr i8, ptr %.fca.0.extract, i64 %"String::j.051"
  %ptr_arr_val27 = load i8, ptr %ptr_arr_addr26, align 1
  %icmpne.not = icmp eq i8 %ptr_arr_val, %ptr_arr_val27
  br i1 %icmpne.not, label %for.cond17, label %ifcont31

ifcont31:                                         ; preds = %for.body18
  %inc34 = add i64 %"String::i.053", 1
  %icmple.not = icmp sgt i64 %inc34, %sub16
  br i1 %icmple.not, label %for.end, label %for.body
}

define weak_odr i1 @"String::Str_contains_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.0.extract.i = extractvalue %"String::Str" %1, 0
  %.fca.1.extract.i = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length.i = load i64, ptr %2, align 8
  %icmpgt.i = icmp slt i64 %length.i, 0
  br i1 %icmpgt.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  %"Str::NOT_FOUND.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

ifcont.i:                                         ; preds = %entry
  %icmpeq.i = icmp eq i64 %.fca.1.extract.i, 0
  br i1 %icmpeq.i, label %"String::Str_find_Str_addr_t.exit", label %ifcont4.i

ifcont4.i:                                        ; preds = %ifcont.i
  %icmpgt9.i = icmp sgt i64 %.fca.1.extract.i, %length.i
  br i1 %icmpgt9.i, label %then10.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %ifcont4.i
  %sub16.i = sub i64 %length.i, %.fca.1.extract.i
  %icmple.not52.i = icmp slt i64 %sub16.i, 0
  br i1 %icmple.not52.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %icmplt50.i = icmp sgt i64 %.fca.1.extract.i, 0
  br label %for.body.i

then10.i:                                         ; preds = %ifcont4.i
  %"Str::NOT_FOUND12.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

for.body.i:                                       ; preds = %ifcont31.i, %for.body.lr.ph.i
  %"String::i.053.i" = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc34.i, %ifcont31.i ]
  br i1 %icmplt50.i, label %for.body18.lr.ph.i, label %"String::Str_find_Str_addr_t.exit"

for.body18.lr.ph.i:                               ; preds = %for.body.i
  %data.i = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %data.i, i64 %"String::i.053.i"
  br label %for.body18.i

for.end.i:                                        ; preds = %ifcont31.i, %for.cond.preheader.i
  %"Str::NOT_FOUND35.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

for.cond17.i:                                     ; preds = %for.body18.i
  %inc.i = add nuw nsw i64 %"String::j.051.i", 1
  %exitcond.not.i = icmp eq i64 %inc.i, %.fca.1.extract.i
  br i1 %exitcond.not.i, label %"String::Str_find_Str_addr_t.exit", label %for.body18.i

for.body18.i:                                     ; preds = %for.cond17.i, %for.body18.lr.ph.i
  %"String::j.051.i" = phi i64 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.cond17.i ]
  %ptr_arr_addr.i = getelementptr i8, ptr %3, i64 %"String::j.051.i"
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %ptr_arr_addr26.i = getelementptr i8, ptr %.fca.0.extract.i, i64 %"String::j.051.i"
  %ptr_arr_val27.i = load i8, ptr %ptr_arr_addr26.i, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, %ptr_arr_val27.i
  br i1 %icmpne.not.i, label %for.cond17.i, label %ifcont31.i

ifcont31.i:                                       ; preds = %for.body18.i
  %inc34.i = add i64 %"String::i.053.i", 1
  %icmple.not.i = icmp sgt i64 %inc34.i, %sub16.i
  br i1 %icmple.not.i, label %for.end.i, label %for.body.i

"String::Str_find_Str_addr_t.exit":               ; preds = %for.body.i, %for.cond17.i, %then.i, %ifcont.i, %then10.i, %for.end.i
  %common.ret.op.i = phi i64 [ %"Str::NOT_FOUND.i", %then.i ], [ 0, %ifcont.i ], [ %"Str::NOT_FOUND12.i", %then10.i ], [ %"Str::NOT_FOUND35.i", %for.end.i ], [ %"String::i.053.i", %for.cond17.i ], [ 0, %for.body.i ]
  %"Str::NOT_FOUND" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  %icmpne = icmp ne i64 %common.ret.op.i, %"Str::NOT_FOUND"
  ret i1 %icmpne
}

define weak_odr i1 @"String::Str_startsWith_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.0.extract.i = extractvalue %"String::Str" %1, 0
  %.fca.1.extract.i = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length.i = load i64, ptr %2, align 8
  %icmpgt.i = icmp slt i64 %length.i, 0
  br i1 %icmpgt.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  %"Str::NOT_FOUND.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

ifcont.i:                                         ; preds = %entry
  %icmpeq.i = icmp eq i64 %.fca.1.extract.i, 0
  br i1 %icmpeq.i, label %"String::Str_find_Str_addr_t.exit", label %ifcont4.i

ifcont4.i:                                        ; preds = %ifcont.i
  %icmpgt9.i = icmp sgt i64 %.fca.1.extract.i, %length.i
  br i1 %icmpgt9.i, label %then10.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %ifcont4.i
  %sub16.i = sub i64 %length.i, %.fca.1.extract.i
  %icmple.not52.i = icmp slt i64 %sub16.i, 0
  br i1 %icmple.not52.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %icmplt50.i = icmp sgt i64 %.fca.1.extract.i, 0
  br label %for.body.i

then10.i:                                         ; preds = %ifcont4.i
  %"Str::NOT_FOUND12.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

for.body.i:                                       ; preds = %ifcont31.i, %for.body.lr.ph.i
  %"String::i.053.i" = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc34.i, %ifcont31.i ]
  br i1 %icmplt50.i, label %for.body18.lr.ph.i, label %"String::Str_find_Str_addr_t.exit"

for.body18.lr.ph.i:                               ; preds = %for.body.i
  %data.i = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %data.i, i64 %"String::i.053.i"
  br label %for.body18.i

for.end.i:                                        ; preds = %ifcont31.i, %for.cond.preheader.i
  %"Str::NOT_FOUND35.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

for.cond17.i:                                     ; preds = %for.body18.i
  %inc.i = add nuw nsw i64 %"String::j.051.i", 1
  %exitcond.not.i = icmp eq i64 %inc.i, %.fca.1.extract.i
  br i1 %exitcond.not.i, label %"String::Str_find_Str_addr_t.exit", label %for.body18.i

for.body18.i:                                     ; preds = %for.cond17.i, %for.body18.lr.ph.i
  %"String::j.051.i" = phi i64 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.cond17.i ]
  %ptr_arr_addr.i = getelementptr i8, ptr %3, i64 %"String::j.051.i"
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %ptr_arr_addr26.i = getelementptr i8, ptr %.fca.0.extract.i, i64 %"String::j.051.i"
  %ptr_arr_val27.i = load i8, ptr %ptr_arr_addr26.i, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, %ptr_arr_val27.i
  br i1 %icmpne.not.i, label %for.cond17.i, label %ifcont31.i

ifcont31.i:                                       ; preds = %for.body18.i
  %inc34.i = add i64 %"String::i.053.i", 1
  %icmple.not.i = icmp sgt i64 %inc34.i, %sub16.i
  br i1 %icmple.not.i, label %for.end.i, label %for.body.i

"String::Str_find_Str_addr_t.exit":               ; preds = %for.body.i, %for.cond17.i, %then.i, %ifcont.i, %then10.i, %for.end.i
  %common.ret.op.i = phi i64 [ %"Str::NOT_FOUND.i", %then.i ], [ 0, %ifcont.i ], [ %"Str::NOT_FOUND12.i", %then10.i ], [ %"Str::NOT_FOUND35.i", %for.end.i ], [ %"String::i.053.i", %for.cond17.i ], [ 0, %for.body.i ]
  %icmpeq = icmp eq i64 %common.ret.op.i, 0
  ret i1 %icmpeq
}

define weak_odr i1 @"String::Str_endsWith_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.1.extract = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length1 = load i64, ptr %2, align 8
  %icmpgt = icmp sgt i64 %.fca.1.extract, %length1
  br i1 %icmpgt, label %common.ret, label %ifcont

common.ret:                                       ; preds = %entry, %"String::Str_find_Str_addr_t.exit"
  %common.ret.op = phi i1 [ %icmpeq, %"String::Str_find_Str_addr_t.exit" ], [ false, %entry ]
  ret i1 %common.ret.op

ifcont:                                           ; preds = %entry
  %sub = sub i64 %length1, %.fca.1.extract
  %.fca.0.extract.i = extractvalue %"String::Str" %1, 0
  %icmpgt.i = icmp sgt i64 %sub, %length1
  br i1 %icmpgt.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %ifcont
  %"Str::NOT_FOUND.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

ifcont.i:                                         ; preds = %ifcont
  %icmpeq.i = icmp eq i64 %.fca.1.extract, 0
  br i1 %icmpeq.i, label %"String::Str_find_Str_addr_t.exit", label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %ifcont.i
  %icmplt50.i = icmp sgt i64 %.fca.1.extract, 0
  br label %for.body.i

for.body.i:                                       ; preds = %ifcont31.i, %for.body.lr.ph.i
  %"String::i.053.i" = phi i64 [ %sub, %for.body.lr.ph.i ], [ %inc34.i, %ifcont31.i ]
  br i1 %icmplt50.i, label %for.body18.lr.ph.i, label %"String::Str_find_Str_addr_t.exit"

for.body18.lr.ph.i:                               ; preds = %for.body.i
  %data.i = load ptr, ptr %0, align 8
  %3 = getelementptr i8, ptr %data.i, i64 %"String::i.053.i"
  br label %for.body18.i

for.end.i:                                        ; preds = %ifcont31.i
  %"Str::NOT_FOUND35.i" = load i64, ptr @"String::Str::NOT_FOUND", align 8
  br label %"String::Str_find_Str_addr_t.exit"

for.cond17.i:                                     ; preds = %for.body18.i
  %inc.i = add nuw nsw i64 %"String::j.051.i", 1
  %exitcond.not.i = icmp eq i64 %inc.i, %.fca.1.extract
  br i1 %exitcond.not.i, label %"String::Str_find_Str_addr_t.exit", label %for.body18.i

for.body18.i:                                     ; preds = %for.cond17.i, %for.body18.lr.ph.i
  %"String::j.051.i" = phi i64 [ 0, %for.body18.lr.ph.i ], [ %inc.i, %for.cond17.i ]
  %ptr_arr_addr.i = getelementptr i8, ptr %3, i64 %"String::j.051.i"
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %ptr_arr_addr26.i = getelementptr i8, ptr %.fca.0.extract.i, i64 %"String::j.051.i"
  %ptr_arr_val27.i = load i8, ptr %ptr_arr_addr26.i, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, %ptr_arr_val27.i
  br i1 %icmpne.not.i, label %for.cond17.i, label %ifcont31.i

ifcont31.i:                                       ; preds = %for.body18.i
  %inc34.i = add i64 %"String::i.053.i", 1
  %icmple.not.i = icmp sgt i64 %inc34.i, %sub
  br i1 %icmple.not.i, label %for.end.i, label %for.body.i

"String::Str_find_Str_addr_t.exit":               ; preds = %for.body.i, %for.cond17.i, %then.i, %ifcont.i, %for.end.i
  %common.ret.op.i = phi i64 [ %"Str::NOT_FOUND.i", %then.i ], [ %sub, %ifcont.i ], [ %"String::i.053.i", %for.cond17.i ], [ %"Str::NOT_FOUND35.i", %for.end.i ], [ %sub, %for.body.i ]
  %icmpeq = icmp eq i64 %common.ret.op.i, %sub
  br label %common.ret
}

define weak_odr i1 @"String::Str_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %1, align 8
  %icmpeq = icmp eq i64 %length, 0
  ret i1 %icmpeq
}

define weak_odr i1 @"String::Str_eq_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.0.extract = extractvalue %"String::Str" %1, 0
  %.fca.1.extract = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %2, align 8
  %icmpne.not = icmp eq i64 %length, %.fca.1.extract
  br i1 %icmpne.not, label %for.cond.preheader, label %common.ret

for.cond.preheader:                               ; preds = %entry
  %icmplt14 = icmp sgt i64 %.fca.1.extract, 0
  br i1 %icmplt14, label %for.body.lr.ph, label %common.ret

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = load ptr, ptr %0, align 8
  br label %for.body

common.ret:                                       ; preds = %for.body, %for.cond.preheader, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ true, %for.cond.preheader ], [ %icmpne8.not, %for.body ]
  ret i1 %common.ret.op

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %"String::i.015" = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %ptr_arr_addr = getelementptr i8, ptr %data, i64 %"String::i.015"
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %ptr_arr_addr6 = getelementptr i8, ptr %.fca.0.extract, i64 %"String::i.015"
  %ptr_arr_val7 = load i8, ptr %ptr_arr_addr6, align 1
  %icmpne8.not = icmp eq i8 %ptr_arr_val, %ptr_arr_val7
  %inc = add nuw nsw i64 %"String::i.015", 1
  %exitcond.not = icmp ne i64 %inc, %.fca.1.extract
  %or.cond.not = select i1 %icmpne8.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %for.body, label %common.ret
}

define weak_odr i1 @"String::Str_operator==_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.0.extract.i = extractvalue %"String::Str" %1, 0
  %.fca.1.extract.i = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length.i = load i64, ptr %2, align 8
  %icmpne.not.i = icmp eq i64 %length.i, %.fca.1.extract.i
  br i1 %icmpne.not.i, label %for.cond.preheader.i, label %"String::Str_eq_Str.exit"

for.cond.preheader.i:                             ; preds = %entry
  %icmplt14.i = icmp sgt i64 %.fca.1.extract.i, 0
  br i1 %icmplt14.i, label %for.body.lr.ph.i, label %"String::Str_eq_Str.exit"

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data.i = load ptr, ptr %0, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %"String::i.015.i" = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %ptr_arr_addr.i = getelementptr i8, ptr %data.i, i64 %"String::i.015.i"
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %ptr_arr_addr6.i = getelementptr i8, ptr %.fca.0.extract.i, i64 %"String::i.015.i"
  %ptr_arr_val7.i = load i8, ptr %ptr_arr_addr6.i, align 1
  %icmpne8.not.i = icmp eq i8 %ptr_arr_val.i, %ptr_arr_val7.i
  %inc.i = add nuw nsw i64 %"String::i.015.i", 1
  %exitcond.not.i = icmp ne i64 %inc.i, %.fca.1.extract.i
  %or.cond.not = select i1 %icmpne8.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %for.body.i, label %"String::Str_eq_Str.exit"

"String::Str_eq_Str.exit":                        ; preds = %for.body.i, %entry, %for.cond.preheader.i
  %common.ret.op.i = phi i1 [ false, %entry ], [ true, %for.cond.preheader.i ], [ %icmpne8.not.i, %for.body.i ]
  ret i1 %common.ret.op.i
}

define weak_odr i1 @"String::Str_operator!=_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %.fca.0.extract.i = extractvalue %"String::Str" %1, 0
  %.fca.1.extract.i = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length.i = load i64, ptr %2, align 8
  %icmpne.not.i = icmp eq i64 %length.i, %.fca.1.extract.i
  br i1 %icmpne.not.i, label %for.cond.preheader.i, label %"String::Str_eq_Str.exit"

for.cond.preheader.i:                             ; preds = %entry
  %icmplt14.i = icmp sgt i64 %.fca.1.extract.i, 0
  br i1 %icmplt14.i, label %for.body.lr.ph.i, label %"String::Str_eq_Str.exit"

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %data.i = load ptr, ptr %0, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %"String::i.015.i" = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %ptr_arr_addr.i = getelementptr i8, ptr %data.i, i64 %"String::i.015.i"
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %ptr_arr_addr6.i = getelementptr i8, ptr %.fca.0.extract.i, i64 %"String::i.015.i"
  %ptr_arr_val7.i = load i8, ptr %ptr_arr_addr6.i, align 1
  %icmpne8.not.i.not = icmp ne i8 %ptr_arr_val.i, %ptr_arr_val7.i
  %inc.i = add nuw nsw i64 %"String::i.015.i", 1
  %exitcond.not.i = icmp eq i64 %inc.i, %.fca.1.extract.i
  %or.cond = select i1 %icmpne8.not.i.not, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %"String::Str_eq_Str.exit", label %for.body.i

"String::Str_eq_Str.exit":                        ; preds = %for.body.i, %entry, %for.cond.preheader.i
  %not = phi i1 [ true, %entry ], [ false, %for.cond.preheader.i ], [ %icmpne8.not.i.not, %for.body.i ]
  ret i1 %not
}

define weak_odr i1 @"String::Str__eval"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length.i = load i64, ptr %1, align 8
  %icmpeq.i = icmp ne i64 %length.i, 0
  ret i1 %icmpeq.i
}

define weak_odr %"String::Str" @"String::Str_operator+_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !16 {
entry:
  %.fca.0.extract = extractvalue %"String::Str" %1, 0
  %.fca.1.extract = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %2, align 8
  %add = add i64 %length, %.fca.1.extract
  %add2 = add i64 %add, 1
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %add2)
  %icmplt43 = icmp sgt i64 %length, 0
  br i1 %icmplt43, label %iter.check, label %for.cond7.preheader

iter.check:                                       ; preds = %entry
  %builtin_call47 = ptrtoaddr ptr %builtin_call to i64
  %data = load ptr, ptr %0, align 8
  %min.iters.check = icmp ult i64 %length, 4
  %data48 = ptrtoaddr ptr %data to i64
  %3 = sub i64 %data48, %builtin_call47
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %for.body.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %length, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %length, 28
  %n.vec = and i64 %length, 9223372036854775776
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %4 = getelementptr i8, ptr %builtin_call, i64 %index
  %5 = getelementptr i8, ptr %data, i64 %index
  %6 = getelementptr i8, ptr %5, i64 16
  %wide.load = load <16 x i8>, ptr %5, align 1
  %wide.load50 = load <16 x i8>, ptr %6, align 1
  %7 = getelementptr i8, ptr %4, i64 16
  store <16 x i8> %wide.load, ptr %4, align 1
  store <16 x i8> %wide.load50, ptr %7, align 1
  %index.next = add nuw i64 %index, 32
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %length, %n.vec
  br i1 %cmp.n, label %for.cond7.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %for.body.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %length, 9223372036854775804
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ]
  %9 = getelementptr i8, ptr %builtin_call, i64 %index53
  %10 = getelementptr i8, ptr %data, i64 %index53
  %wide.load54 = load <4 x i8>, ptr %10, align 1
  store <4 x i8> %wide.load54, ptr %9, align 1
  %index.next55 = add nuw i64 %index53, 4
  %11 = icmp eq i64 %index.next55, %n.vec52
  br i1 %11, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n56 = icmp eq i64 %length, %n.vec52
  br i1 %cmp.n56, label %for.cond7.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %"String::i.044.ph" = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec52, %vec.epilog.middle.block ]
  %xtraiter = and i64 %length, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %"String::i.044.prol" = phi i64 [ %inc.prol, %for.body.prol ], [ %"String::i.044.ph", %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %ptr_arr_asi.prol = getelementptr i8, ptr %builtin_call, i64 %"String::i.044.prol"
  %ptr_arr_addr.prol = getelementptr i8, ptr %data, i64 %"String::i.044.prol"
  %ptr_arr_val.prol = load i8, ptr %ptr_arr_addr.prol, align 1
  store i8 %ptr_arr_val.prol, ptr %ptr_arr_asi.prol, align 1
  %inc.prol = add nuw nsw i64 %"String::i.044.prol", 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !30

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %"String::i.044.unr" = phi i64 [ %"String::i.044.ph", %for.body.preheader ], [ %inc.prol, %for.body.prol ]
  %12 = sub nsw i64 %"String::i.044.ph", %length
  %13 = icmp ugt i64 %12, -4
  br i1 %13, label %for.cond7.preheader, label %for.body

for.cond7.preheader:                              ; preds = %for.body.prol.loopexit, %for.body, %middle.block, %vec.epilog.middle.block, %entry
  %invariant.gep = getelementptr i8, ptr %builtin_call, i64 %length
  %icmplt1345 = icmp sgt i64 %.fca.1.extract, 0
  br i1 %icmplt1345, label %for.body8.preheader, label %for.end10

for.body8.preheader:                              ; preds = %for.cond7.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %invariant.gep, ptr align 1 %.fca.0.extract, i64 %.fca.1.extract, i1 false)
  br label %for.end10

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %"String::i.044" = phi i64 [ %inc.3, %for.body ], [ %"String::i.044.unr", %for.body.prol.loopexit ]
  %ptr_arr_asi = getelementptr i8, ptr %builtin_call, i64 %"String::i.044"
  %ptr_arr_addr = getelementptr i8, ptr %data, i64 %"String::i.044"
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  store i8 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %inc = add nuw nsw i64 %"String::i.044", 1
  %ptr_arr_asi.1 = getelementptr i8, ptr %builtin_call, i64 %inc
  %ptr_arr_addr.1 = getelementptr i8, ptr %data, i64 %inc
  %ptr_arr_val.1 = load i8, ptr %ptr_arr_addr.1, align 1
  store i8 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 1
  %inc.1 = add nuw nsw i64 %"String::i.044", 2
  %ptr_arr_asi.2 = getelementptr i8, ptr %builtin_call, i64 %inc.1
  %ptr_arr_addr.2 = getelementptr i8, ptr %data, i64 %inc.1
  %ptr_arr_val.2 = load i8, ptr %ptr_arr_addr.2, align 1
  store i8 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 1
  %inc.2 = add nuw nsw i64 %"String::i.044", 3
  %ptr_arr_asi.3 = getelementptr i8, ptr %builtin_call, i64 %inc.2
  %ptr_arr_addr.3 = getelementptr i8, ptr %data, i64 %inc.2
  %ptr_arr_val.3 = load i8, ptr %ptr_arr_addr.3, align 1
  store i8 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 1
  %inc.3 = add nuw nsw i64 %"String::i.044", 4
  %exitcond.not.3 = icmp eq i64 %inc.3, %length
  br i1 %exitcond.not.3, label %for.cond7.preheader, label %for.body, !llvm.loop !31

for.end10:                                        ; preds = %for.body8.preheader, %for.cond7.preheader
  %ptr_arr_asi29 = getelementptr i8, ptr %invariant.gep, i64 %.fca.1.extract
  store i8 0, ptr %ptr_arr_asi29, align 1
  %"String::Str_inst.fca.0.insert" = insertvalue %"String::Str" poison, ptr %builtin_call, 0
  %"String::Str_inst.fca.1.insert" = insertvalue %"String::Str" %"String::Str_inst.fca.0.insert", i64 %add, 1
  %"String::Str_inst.fca.2.insert" = insertvalue %"String::Str" %"String::Str_inst.fca.1.insert", i64 %add2, 2
  ret %"String::Str" %"String::Str_inst.fca.2.insert"
}

define weak_odr %"String::Str" @"String::Str_operator+=_Str"(ptr %0, %"String::Str" %1) local_unnamed_addr !qc.return_types !16 {
entry:
  %.fca.0.extract = extractvalue %"String::Str" %1, 0
  %.fca.1.extract = extractvalue %"String::Str" %1, 1
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %2, align 8
  %add = add i64 %length, %.fca.1.extract
  %data = load ptr, ptr %0, align 8
  %add2 = add i64 %add, 1
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %add2)
  store ptr %builtin_call, ptr %0, align 8
  %icmplt27 = icmp sgt i64 %.fca.1.extract, 0
  br i1 %icmplt27, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %xtraiter = and i64 %.fca.1.extract, 3
  %3 = icmp ult i64 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %.fca.1.extract, 9223372036854775804
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %"String::i.028" = phi i64 [ 0, %for.body.preheader.new ], [ %inc.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %length4 = load i64, ptr %2, align 8
  %data7 = load ptr, ptr %0, align 8
  %4 = getelementptr i8, ptr %data7, i64 %length4
  %ptr_arr_asi = getelementptr i8, ptr %4, i64 %"String::i.028"
  %ptr_arr_addr = getelementptr i8, ptr %.fca.0.extract, i64 %"String::i.028"
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  store i8 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %inc = or disjoint i64 %"String::i.028", 1
  %length4.1 = load i64, ptr %2, align 8
  %data7.1 = load ptr, ptr %0, align 8
  %5 = getelementptr i8, ptr %data7.1, i64 %length4.1
  %ptr_arr_asi.1 = getelementptr i8, ptr %5, i64 %inc
  %ptr_arr_addr.1 = getelementptr i8, ptr %.fca.0.extract, i64 %inc
  %ptr_arr_val.1 = load i8, ptr %ptr_arr_addr.1, align 1
  store i8 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 1
  %inc.1 = or disjoint i64 %"String::i.028", 2
  %length4.2 = load i64, ptr %2, align 8
  %data7.2 = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %data7.2, i64 %length4.2
  %ptr_arr_asi.2 = getelementptr i8, ptr %6, i64 %inc.1
  %ptr_arr_addr.2 = getelementptr i8, ptr %.fca.0.extract, i64 %inc.1
  %ptr_arr_val.2 = load i8, ptr %ptr_arr_addr.2, align 1
  store i8 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 1
  %inc.2 = or disjoint i64 %"String::i.028", 3
  %length4.3 = load i64, ptr %2, align 8
  %data7.3 = load ptr, ptr %0, align 8
  %7 = getelementptr i8, ptr %data7.3, i64 %length4.3
  %ptr_arr_asi.3 = getelementptr i8, ptr %7, i64 %inc.2
  %ptr_arr_addr.3 = getelementptr i8, ptr %.fca.0.extract, i64 %inc.2
  %ptr_arr_val.3 = load i8, ptr %ptr_arr_addr.3, align 1
  store i8 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 1
  %inc.3 = add nuw nsw i64 %"String::i.028", 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end.loopexit, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %"String::i.028.epil.init" = phi i64 [ 0, %for.body.preheader ], [ %inc.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %"String::i.028.epil" = phi i64 [ %inc.epil, %for.body.epil ], [ %"String::i.028.epil.init", %for.body.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.epil ], [ 0, %for.body.epil.preheader ]
  %length4.epil = load i64, ptr %2, align 8
  %data7.epil = load ptr, ptr %0, align 8
  %8 = getelementptr i8, ptr %data7.epil, i64 %length4.epil
  %ptr_arr_asi.epil = getelementptr i8, ptr %8, i64 %"String::i.028.epil"
  %ptr_arr_addr.epil = getelementptr i8, ptr %.fca.0.extract, i64 %"String::i.028.epil"
  %ptr_arr_val.epil = load i8, ptr %ptr_arr_addr.epil, align 1
  store i8 %ptr_arr_val.epil, ptr %ptr_arr_asi.epil, align 1
  %inc.epil = add nuw nsw i64 %"String::i.028.epil", 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end.loopexit, label %for.body.epil, !llvm.loop !32

for.end.loopexit:                                 ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa
  %data14.pre = load ptr, ptr %0, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %data14 = phi ptr [ %data14.pre, %for.end.loopexit ], [ %builtin_call, %entry ]
  store i64 %add, ptr %2, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %add2, ptr %capacity_ptr, align 8
  %ptr_arr_asi15 = getelementptr i8, ptr %data14, i64 %add
  store i8 0, ptr %ptr_arr_asi15, align 1
  %deref.unpack = load ptr, ptr %0, align 8
  %9 = insertvalue %"String::Str" poison, ptr %deref.unpack, 0
  %deref.unpack23 = load i64, ptr %2, align 8
  %10 = insertvalue %"String::Str" %9, i64 %deref.unpack23, 1
  %deref.unpack25 = load i64, ptr %capacity_ptr, align 8
  %deref26 = insertvalue %"String::Str" %10, i64 %deref.unpack25, 2
  ret %"String::Str" %deref26
}

define weak_odr ptr @"String::Str_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !33 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %2, align 8
  %icmpge.not = icmp slt i64 %1, %length
  br i1 %icmpge.not, label %ifcont, label %then

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.37, ptr nonnull @6, i32 1205) #29
  unreachable

ifcont:                                           ; preds = %entry
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr i8, ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"String::Str__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  ret void
}

define weak_odr void @"String::Str_insert_addr_t_Str"(ptr %0, i64 %1, %"String::Str" %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %.fca.0.extract = extractvalue %"String::Str" %2, 0
  %.fca.1.extract = extractvalue %"String::Str" %2, 1
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length = load i64, ptr %3, align 8
  %icmpgt = icmp sgt i64 %1, %length
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.38, ptr nonnull @6, i32 1215) #29
  unreachable

ifcont:                                           ; preds = %entry
  %add = add i64 %length, %.fca.1.extract
  %add4 = add i64 %add, 1
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %capacity = load i64, ptr %4, align 8
  %icmpgt5 = icmp sgt i64 %add4, %capacity
  br i1 %icmpgt5, label %then6, label %ifcont7

then6:                                            ; preds = %ifcont
  store i64 %add4, ptr %4, align 8
  %data = load ptr, ptr %0, align 8
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %add4)
  store ptr %builtin_call, ptr %0, align 8
  %length11.pre = load i64, ptr %3, align 8
  br label %ifcont7

ifcont7:                                          ; preds = %then6, %ifcont
  %length11 = phi i64 [ %length11.pre, %then6 ], [ %length, %ifcont ]
  %icmpgt1354 = icmp sgt i64 %length11, %1
  br i1 %icmpgt1354, label %for.body.preheader, label %for.cond22.preheader

for.body.preheader:                               ; preds = %ifcont7
  %5 = sub i64 %length11, %1
  %xtraiter = and i64 %5, 3
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %"String::i.055.prol" = phi i64 [ %sub19.prol, %for.body.prol ], [ %length11, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %for.body.prol ], [ 0, %for.body.preheader ]
  %data17.prol = load ptr, ptr %0, align 8
  %6 = getelementptr i8, ptr %data17.prol, i64 %"String::i.055.prol"
  %7 = getelementptr i8, ptr %6, i64 %.fca.1.extract
  %ptr_arr_asi.prol = getelementptr i8, ptr %7, i64 -1
  %sub19.prol = add nsw i64 %"String::i.055.prol", -1
  %ptr_arr_addr.prol = getelementptr i8, ptr %data17.prol, i64 %sub19.prol
  %ptr_arr_val.prol = load i8, ptr %ptr_arr_addr.prol, align 1
  store i8 %ptr_arr_val.prol, ptr %ptr_arr_asi.prol, align 1
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !35

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %"String::i.055.unr" = phi i64 [ %length11, %for.body.preheader ], [ %sub19.prol, %for.body.prol ]
  %8 = sub i64 %1, %length11
  %9 = icmp ugt i64 %8, -4
  br i1 %9, label %for.cond22.preheader, label %for.body

for.cond22.preheader:                             ; preds = %for.body.prol.loopexit, %for.body, %ifcont7
  %icmplt56 = icmp sgt i64 %.fca.1.extract, 0
  br i1 %icmplt56, label %for.body23.preheader, label %for.end25

for.body23.preheader:                             ; preds = %for.cond22.preheader
  %xtraiter59 = and i64 %.fca.1.extract, 3
  %10 = icmp ult i64 %.fca.1.extract, 4
  br i1 %10, label %for.body23.epil.preheader, label %for.body23.preheader.new

for.body23.preheader.new:                         ; preds = %for.body23.preheader
  %unroll_iter = and i64 %.fca.1.extract, 9223372036854775804
  br label %for.body23

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %"String::i.055" = phi i64 [ %sub19.3, %for.body ], [ %"String::i.055.unr", %for.body.prol.loopexit ]
  %data17 = load ptr, ptr %0, align 8
  %11 = getelementptr i8, ptr %data17, i64 %"String::i.055"
  %12 = getelementptr i8, ptr %11, i64 %.fca.1.extract
  %ptr_arr_asi = getelementptr i8, ptr %12, i64 -1
  %sub19 = add nsw i64 %"String::i.055", -1
  %ptr_arr_addr = getelementptr i8, ptr %data17, i64 %sub19
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  store i8 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %data17.1 = load ptr, ptr %0, align 8
  %13 = getelementptr i8, ptr %data17.1, i64 %sub19
  %14 = getelementptr i8, ptr %13, i64 %.fca.1.extract
  %ptr_arr_asi.1 = getelementptr i8, ptr %14, i64 -1
  %sub19.1 = add nsw i64 %"String::i.055", -2
  %ptr_arr_addr.1 = getelementptr i8, ptr %data17.1, i64 %sub19.1
  %ptr_arr_val.1 = load i8, ptr %ptr_arr_addr.1, align 1
  store i8 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 1
  %data17.2 = load ptr, ptr %0, align 8
  %15 = getelementptr i8, ptr %data17.2, i64 %sub19.1
  %16 = getelementptr i8, ptr %15, i64 %.fca.1.extract
  %ptr_arr_asi.2 = getelementptr i8, ptr %16, i64 -1
  %sub19.2 = add nsw i64 %"String::i.055", -3
  %ptr_arr_addr.2 = getelementptr i8, ptr %data17.2, i64 %sub19.2
  %ptr_arr_val.2 = load i8, ptr %ptr_arr_addr.2, align 1
  store i8 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 1
  %data17.3 = load ptr, ptr %0, align 8
  %17 = getelementptr i8, ptr %data17.3, i64 %sub19.2
  %18 = getelementptr i8, ptr %17, i64 %.fca.1.extract
  %ptr_arr_asi.3 = getelementptr i8, ptr %18, i64 -1
  %sub19.3 = add nsw i64 %"String::i.055", -4
  %ptr_arr_addr.3 = getelementptr i8, ptr %data17.3, i64 %sub19.3
  %ptr_arr_val.3 = load i8, ptr %ptr_arr_addr.3, align 1
  store i8 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 1
  %icmpgt13.3 = icmp sgt i64 %sub19.3, %1
  br i1 %icmpgt13.3, label %for.body, label %for.cond22.preheader

for.body23:                                       ; preds = %for.body23, %for.body23.preheader.new
  %"String::i21.057" = phi i64 [ 0, %for.body23.preheader.new ], [ %inc.3, %for.body23 ]
  %niter = phi i64 [ 0, %for.body23.preheader.new ], [ %niter.next.3, %for.body23 ]
  %data31 = load ptr, ptr %0, align 8
  %19 = getelementptr i8, ptr %data31, i64 %1
  %ptr_arr_asi32 = getelementptr i8, ptr %19, i64 %"String::i21.057"
  %ptr_arr_addr35 = getelementptr i8, ptr %.fca.0.extract, i64 %"String::i21.057"
  %ptr_arr_val36 = load i8, ptr %ptr_arr_addr35, align 1
  store i8 %ptr_arr_val36, ptr %ptr_arr_asi32, align 1
  %inc = or disjoint i64 %"String::i21.057", 1
  %data31.1 = load ptr, ptr %0, align 8
  %20 = getelementptr i8, ptr %data31.1, i64 %1
  %ptr_arr_asi32.1 = getelementptr i8, ptr %20, i64 %inc
  %ptr_arr_addr35.1 = getelementptr i8, ptr %.fca.0.extract, i64 %inc
  %ptr_arr_val36.1 = load i8, ptr %ptr_arr_addr35.1, align 1
  store i8 %ptr_arr_val36.1, ptr %ptr_arr_asi32.1, align 1
  %inc.1 = or disjoint i64 %"String::i21.057", 2
  %data31.2 = load ptr, ptr %0, align 8
  %21 = getelementptr i8, ptr %data31.2, i64 %1
  %ptr_arr_asi32.2 = getelementptr i8, ptr %21, i64 %inc.1
  %ptr_arr_addr35.2 = getelementptr i8, ptr %.fca.0.extract, i64 %inc.1
  %ptr_arr_val36.2 = load i8, ptr %ptr_arr_addr35.2, align 1
  store i8 %ptr_arr_val36.2, ptr %ptr_arr_asi32.2, align 1
  %inc.2 = or disjoint i64 %"String::i21.057", 3
  %data31.3 = load ptr, ptr %0, align 8
  %22 = getelementptr i8, ptr %data31.3, i64 %1
  %ptr_arr_asi32.3 = getelementptr i8, ptr %22, i64 %inc.2
  %ptr_arr_addr35.3 = getelementptr i8, ptr %.fca.0.extract, i64 %inc.2
  %ptr_arr_val36.3 = load i8, ptr %ptr_arr_addr35.3, align 1
  store i8 %ptr_arr_val36.3, ptr %ptr_arr_asi32.3, align 1
  %inc.3 = add nuw nsw i64 %"String::i21.057", 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end25.loopexit.unr-lcssa, label %for.body23

for.end25.loopexit.unr-lcssa:                     ; preds = %for.body23
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %for.end25, label %for.body23.epil.preheader

for.body23.epil.preheader:                        ; preds = %for.end25.loopexit.unr-lcssa, %for.body23.preheader
  %"String::i21.057.epil.init" = phi i64 [ 0, %for.body23.preheader ], [ %inc.3, %for.end25.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter59, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %for.body23.epil

for.body23.epil:                                  ; preds = %for.body23.epil, %for.body23.epil.preheader
  %"String::i21.057.epil" = phi i64 [ %inc.epil, %for.body23.epil ], [ %"String::i21.057.epil.init", %for.body23.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body23.epil ], [ 0, %for.body23.epil.preheader ]
  %data31.epil = load ptr, ptr %0, align 8
  %23 = getelementptr i8, ptr %data31.epil, i64 %1
  %ptr_arr_asi32.epil = getelementptr i8, ptr %23, i64 %"String::i21.057.epil"
  %ptr_arr_addr35.epil = getelementptr i8, ptr %.fca.0.extract, i64 %"String::i21.057.epil"
  %ptr_arr_val36.epil = load i8, ptr %ptr_arr_addr35.epil, align 1
  store i8 %ptr_arr_val36.epil, ptr %ptr_arr_asi32.epil, align 1
  %inc.epil = add nuw nsw i64 %"String::i21.057.epil", 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter59
  br i1 %epil.iter.cmp.not, label %for.end25, label %for.body23.epil, !llvm.loop !36

for.end25:                                        ; preds = %for.end25.loopexit.unr-lcssa, %for.body23.epil, %for.cond22.preheader
  store i64 %add, ptr %3, align 8
  %data40 = load ptr, ptr %0, align 8
  %ptr_arr_asi41 = getelementptr i8, ptr %data40, i64 %add
  store i8 0, ptr %ptr_arr_asi41, align 1
  ret void
}

define weak_odr void @"String::Str_erase_addr_t_addr_t"(ptr %0, i64 %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %length2 = load i64, ptr %3, align 8
  %icmpgt = icmp sgt i64 %1, %length2
  %sub = sub i64 %length2, %1
  %icmpgt6 = icmp sgt i64 %2, %sub
  %or.cond = select i1 %icmpgt, i1 true, i1 %icmpgt6
  br i1 %or.cond, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.40, ptr nonnull @6, i32 1233) #29
  unreachable

ifcont:                                           ; preds = %entry
  %icmpeq = icmp eq i64 %2, 0
  br i1 %icmpeq, label %common.ret, label %for.cond.preheader

for.cond.preheader:                               ; preds = %ifcont
  %sub1335 = sub i64 %length2, %2
  %icmplt36 = icmp slt i64 %1, %sub1335
  br i1 %icmplt36, label %for.body, label %for.end

common.ret:                                       ; preds = %ifcont, %for.end
  ret void

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %"String::i.037" = phi i64 [ %inc, %for.body ], [ %1, %for.cond.preheader ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr i8, ptr %data, i64 %"String::i.037"
  %ptr_arr_addr = getelementptr i8, ptr %ptr_arr_asi, i64 %2
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  store i8 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %inc = add nsw i64 %"String::i.037", 1
  %length11 = load i64, ptr %3, align 8
  %sub13 = sub i64 %length11, %2
  %icmplt = icmp slt i64 %inc, %sub13
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %sub13.lcssa = phi i64 [ %sub1335, %for.cond.preheader ], [ %sub13, %for.body ]
  store i64 %sub13.lcssa, ptr %3, align 8
  %data22 = load ptr, ptr %0, align 8
  %ptr_arr_asi23 = getelementptr i8, ptr %data22, i64 %sub13.lcssa
  store i8 0, ptr %ptr_arr_asi23, align 1
  br label %common.ret
}

define weak_odr i1 @"String::Str_streq_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %data1 = load ptr, ptr %0, align 8
  %ptr_arr_val32 = load i8, ptr %data1, align 1
  %icmpne.not33 = icmp eq i8 %ptr_arr_val32, 0
  br i1 %icmpne.not33, label %while.end, label %and.rhs

while.body:                                       ; preds = %and.rhs
  %icmpne15.not = icmp eq i8 %ptr_arr_val35, %ptr_arr_val5
  br i1 %icmpne15.not, label %ifcont, label %common.ret

common.ret:                                       ; preds = %while.body, %while.end
  %common.ret.op = phi i1 [ %icmpeq, %while.end ], [ false, %while.body ]
  ret i1 %common.ret.op

while.end:                                        ; preds = %and.rhs, %ifcont, %entry
  %"String::i.0.lcssa" = phi i64 [ 0, %entry ], [ %inc, %ifcont ], [ %"String::i.034", %and.rhs ]
  %ptr_arr_val.lcssa = phi i8 [ 0, %entry ], [ 0, %ifcont ], [ %ptr_arr_val35, %and.rhs ]
  %ptr_arr_addr22 = getelementptr i8, ptr %1, i64 %"String::i.0.lcssa"
  %ptr_arr_val23 = load i8, ptr %ptr_arr_addr22, align 1
  %icmpeq = icmp eq i8 %ptr_arr_val.lcssa, %ptr_arr_val23
  br label %common.ret

and.rhs:                                          ; preds = %entry, %ifcont
  %ptr_arr_val35 = phi i8 [ %ptr_arr_val, %ifcont ], [ %ptr_arr_val32, %entry ]
  %"String::i.034" = phi i64 [ %inc, %ifcont ], [ 0, %entry ]
  %ptr_arr_addr4 = getelementptr i8, ptr %1, i64 %"String::i.034"
  %ptr_arr_val5 = load i8, ptr %ptr_arr_addr4, align 1
  %icmpne6.not = icmp eq i8 %ptr_arr_val5, 0
  br i1 %icmpne6.not, label %while.end, label %while.body

ifcont:                                           ; preds = %while.body
  %inc = add i64 %"String::i.034", 1
  %ptr_arr_addr = getelementptr i8, ptr %data1, i64 %inc
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne.not = icmp eq i8 %ptr_arr_val, 0
  br i1 %icmpne.not, label %while.end, label %and.rhs
}

define weak_odr i1 @"String::Str_operator==_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %data1.i = load ptr, ptr %0, align 8
  %ptr_arr_val32.i = load i8, ptr %data1.i, align 1
  %icmpne.not33.i = icmp eq i8 %ptr_arr_val32.i, 0
  br i1 %icmpne.not33.i, label %while.end.i, label %and.rhs.i

while.body.i:                                     ; preds = %and.rhs.i
  %icmpne15.not.i = icmp eq i8 %ptr_arr_val35.i, %ptr_arr_val5.i
  br i1 %icmpne15.not.i, label %ifcont.i, label %"String::Str_streq_char*.exit"

while.end.i:                                      ; preds = %ifcont.i, %and.rhs.i, %entry
  %"String::i.0.lcssa.i" = phi i64 [ 0, %entry ], [ %"String::i.034.i", %and.rhs.i ], [ %inc.i, %ifcont.i ]
  %ptr_arr_val.lcssa.i = phi i8 [ 0, %entry ], [ %ptr_arr_val35.i, %and.rhs.i ], [ 0, %ifcont.i ]
  %ptr_arr_addr22.i = getelementptr i8, ptr %1, i64 %"String::i.0.lcssa.i"
  %ptr_arr_val23.i = load i8, ptr %ptr_arr_addr22.i, align 1
  %icmpeq.i = icmp eq i8 %ptr_arr_val.lcssa.i, %ptr_arr_val23.i
  br label %"String::Str_streq_char*.exit"

and.rhs.i:                                        ; preds = %entry, %ifcont.i
  %ptr_arr_val35.i = phi i8 [ %ptr_arr_val.i, %ifcont.i ], [ %ptr_arr_val32.i, %entry ]
  %"String::i.034.i" = phi i64 [ %inc.i, %ifcont.i ], [ 0, %entry ]
  %ptr_arr_addr4.i = getelementptr i8, ptr %1, i64 %"String::i.034.i"
  %ptr_arr_val5.i = load i8, ptr %ptr_arr_addr4.i, align 1
  %icmpne6.not.i = icmp eq i8 %ptr_arr_val5.i, 0
  br i1 %icmpne6.not.i, label %while.end.i, label %while.body.i

ifcont.i:                                         ; preds = %while.body.i
  %inc.i = add i64 %"String::i.034.i", 1
  %ptr_arr_addr.i = getelementptr i8, ptr %data1.i, i64 %inc.i
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, 0
  br i1 %icmpne.not.i, label %while.end.i, label %and.rhs.i

"String::Str_streq_char*.exit":                   ; preds = %while.body.i, %while.end.i
  %common.ret.op.i = phi i1 [ %icmpeq.i, %while.end.i ], [ false, %while.body.i ]
  ret i1 %common.ret.op.i
}

define weak_odr i1 @"String::Str_operator!=_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !27 {
entry:
  %data1.i = load ptr, ptr %0, align 8
  %ptr_arr_val32.i = load i8, ptr %data1.i, align 1
  %icmpne.not33.i = icmp eq i8 %ptr_arr_val32.i, 0
  br i1 %icmpne.not33.i, label %while.end.i, label %and.rhs.i

while.body.i:                                     ; preds = %and.rhs.i
  %icmpne15.not.i = icmp eq i8 %ptr_arr_val35.i, %ptr_arr_val5.i
  br i1 %icmpne15.not.i, label %ifcont.i, label %"String::Str_streq_char*.exit"

while.end.i:                                      ; preds = %ifcont.i, %and.rhs.i, %entry
  %"String::i.0.lcssa.i" = phi i64 [ 0, %entry ], [ %"String::i.034.i", %and.rhs.i ], [ %inc.i, %ifcont.i ]
  %ptr_arr_val.lcssa.i = phi i8 [ 0, %entry ], [ %ptr_arr_val35.i, %and.rhs.i ], [ 0, %ifcont.i ]
  %ptr_arr_addr22.i = getelementptr i8, ptr %1, i64 %"String::i.0.lcssa.i"
  %ptr_arr_val23.i = load i8, ptr %ptr_arr_addr22.i, align 1
  %icmpeq.i = icmp ne i8 %ptr_arr_val.lcssa.i, %ptr_arr_val23.i
  br label %"String::Str_streq_char*.exit"

and.rhs.i:                                        ; preds = %entry, %ifcont.i
  %ptr_arr_val35.i = phi i8 [ %ptr_arr_val.i, %ifcont.i ], [ %ptr_arr_val32.i, %entry ]
  %"String::i.034.i" = phi i64 [ %inc.i, %ifcont.i ], [ 0, %entry ]
  %ptr_arr_addr4.i = getelementptr i8, ptr %1, i64 %"String::i.034.i"
  %ptr_arr_val5.i = load i8, ptr %ptr_arr_addr4.i, align 1
  %icmpne6.not.i = icmp eq i8 %ptr_arr_val5.i, 0
  br i1 %icmpne6.not.i, label %while.end.i, label %while.body.i

ifcont.i:                                         ; preds = %while.body.i
  %inc.i = add i64 %"String::i.034.i", 1
  %ptr_arr_addr.i = getelementptr i8, ptr %data1.i, i64 %inc.i
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, 0
  br i1 %icmpne.not.i, label %while.end.i, label %and.rhs.i

"String::Str_streq_char*.exit":                   ; preds = %while.body.i, %while.end.i
  %common.ret.op.i = phi i1 [ %icmpeq.i, %while.end.i ], [ true, %while.body.i ]
  ret i1 %common.ret.op.i
}

define weak_odr i1 @"String::Str_toBool"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %data1.i = load ptr, ptr %0, align 8
  %ptr_arr_val32.i = load i8, ptr %data1.i, align 1
  switch i8 %ptr_arr_val32.i, label %"String::Str_streq_char*.exit" [
    i8 0, label %while.end.i
    i8 116, label %ifcont.i
  ]

while.end.i:                                      ; preds = %ifcont.i.3, %ifcont.i.2, %ifcont.i.1, %ifcont.i, %entry
  %"String::i.0.lcssa.i" = phi i64 [ 0, %entry ], [ 1, %ifcont.i ], [ 3, %ifcont.i.2 ], [ 4, %ifcont.i.3 ], [ 2, %ifcont.i.1 ]
  %ptr_arr_val.lcssa.i = phi i8 [ %ptr_arr_val32.i, %entry ], [ %ptr_arr_val.i, %ifcont.i ], [ %ptr_arr_val.i.2, %ifcont.i.2 ], [ %ptr_arr_val.i.3, %ifcont.i.3 ], [ %ptr_arr_val.i.1, %ifcont.i.1 ]
  %ptr_arr_addr22.i = getelementptr i8, ptr @.str.41, i64 %"String::i.0.lcssa.i"
  %ptr_arr_val23.i = load i8, ptr %ptr_arr_addr22.i, align 1
  %icmpeq.i = icmp eq i8 %ptr_arr_val.lcssa.i, %ptr_arr_val23.i
  br label %"String::Str_streq_char*.exit"

ifcont.i:                                         ; preds = %entry
  %ptr_arr_addr.i = getelementptr i8, ptr %data1.i, i64 1
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  switch i8 %ptr_arr_val.i, label %"String::Str_streq_char*.exit" [
    i8 0, label %while.end.i
    i8 114, label %ifcont.i.1
  ]

ifcont.i.1:                                       ; preds = %ifcont.i
  %ptr_arr_addr.i.1 = getelementptr i8, ptr %data1.i, i64 2
  %ptr_arr_val.i.1 = load i8, ptr %ptr_arr_addr.i.1, align 1
  switch i8 %ptr_arr_val.i.1, label %"String::Str_streq_char*.exit" [
    i8 0, label %while.end.i
    i8 117, label %ifcont.i.2
  ]

ifcont.i.2:                                       ; preds = %ifcont.i.1
  %ptr_arr_addr.i.2 = getelementptr i8, ptr %data1.i, i64 3
  %ptr_arr_val.i.2 = load i8, ptr %ptr_arr_addr.i.2, align 1
  switch i8 %ptr_arr_val.i.2, label %"String::Str_streq_char*.exit" [
    i8 0, label %while.end.i
    i8 101, label %ifcont.i.3
  ]

ifcont.i.3:                                       ; preds = %ifcont.i.2
  %ptr_arr_addr.i.3 = getelementptr i8, ptr %data1.i, i64 4
  %ptr_arr_val.i.3 = load i8, ptr %ptr_arr_addr.i.3, align 1
  br label %while.end.i

"String::Str_streq_char*.exit":                   ; preds = %ifcont.i.2, %ifcont.i.1, %ifcont.i, %entry, %while.end.i
  %common.ret.op.i = phi i1 [ %icmpeq.i, %while.end.i ], [ false, %ifcont.i.2 ], [ false, %ifcont.i.1 ], [ false, %ifcont.i ], [ false, %entry ]
  ret i1 %common.ret.op.i
}

define weak_odr i2 @"String::Str_toQBool"(ptr %0) local_unnamed_addr !qc.return_types !37 {
entry:
  %data1.i = load ptr, ptr %0, align 8
  %ptr_arr_val32.i = load i8, ptr %data1.i, align 1
  switch i8 %ptr_arr_val32.i, label %.thread [
    i8 98, label %ifcont.i17
    i8 113, label %ifcont.i
  ]

ifcont.i:                                         ; preds = %entry
  %ptr_arr_addr.i = getelementptr i8, ptr %data1.i, i64 1
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr.i, align 1
  switch i8 %ptr_arr_val.i, label %ifcont.i41 [
    i8 0, label %and.rhs.i8.preheader.thread
    i8 116, label %ifcont.i.1
  ]

ifcont.i.1:                                       ; preds = %ifcont.i
  %ptr_arr_addr.i.1 = getelementptr i8, ptr %data1.i, i64 2
  %ptr_arr_val.i.1 = load i8, ptr %ptr_arr_addr.i.1, align 1
  switch i8 %ptr_arr_val.i.1, label %ifcont.i41 [
    i8 0, label %and.rhs.i8.preheader.thread
    i8 114, label %ifcont.i.2
  ]

ifcont.i.2:                                       ; preds = %ifcont.i.1
  %ptr_arr_addr.i.2 = getelementptr i8, ptr %data1.i, i64 3
  %ptr_arr_val.i.2 = load i8, ptr %ptr_arr_addr.i.2, align 1
  switch i8 %ptr_arr_val.i.2, label %ifcont.i41 [
    i8 0, label %and.rhs.i8.preheader.thread
    i8 117, label %ifcont.i.3
  ]

ifcont.i.3:                                       ; preds = %ifcont.i.2
  %ptr_arr_addr.i.3 = getelementptr i8, ptr %data1.i, i64 4
  %ptr_arr_val.i.3 = load i8, ptr %ptr_arr_addr.i.3, align 1
  switch i8 %ptr_arr_val.i.3, label %ifcont.i41 [
    i8 0, label %and.rhs.i8.preheader.thread
    i8 101, label %ifcont.i.4
  ]

ifcont.i.4:                                       ; preds = %ifcont.i.3
  %ptr_arr_addr.i.4 = getelementptr i8, ptr %data1.i, i64 5
  %ptr_arr_val.i.4 = load i8, ptr %ptr_arr_addr.i.4, align 1
  br label %and.rhs.i8.preheader.thread

and.rhs.i8.preheader.thread:                      ; preds = %ifcont.i.4, %ifcont.i.3, %ifcont.i.2, %ifcont.i.1, %ifcont.i
  %"String::i.0.lcssa.i.ph" = phi i64 [ 3, %ifcont.i.2 ], [ 5, %ifcont.i.4 ], [ 2, %ifcont.i.1 ], [ 1, %ifcont.i ], [ 4, %ifcont.i.3 ]
  %ptr_arr_val.lcssa.i.ph = phi i8 [ %ptr_arr_val.i.2, %ifcont.i.2 ], [ %ptr_arr_val.i.4, %ifcont.i.4 ], [ %ptr_arr_val.i.1, %ifcont.i.1 ], [ %ptr_arr_val.i, %ifcont.i ], [ %ptr_arr_val.i.3, %ifcont.i.3 ]
  %ptr_arr_addr22.i61 = getelementptr i8, ptr @.str.42, i64 %"String::i.0.lcssa.i.ph"
  %ptr_arr_val23.i62 = load i8, ptr %ptr_arr_addr22.i61, align 1
  %icmpeq.i63 = icmp eq i8 %ptr_arr_val.lcssa.i.ph, %ptr_arr_val23.i62
  %1 = freeze i1 %icmpeq.i63
  br label %ifcont.i41

ifcont.i17:                                       ; preds = %entry
  %ptr_arr_addr.i19 = getelementptr i8, ptr %data1.i, i64 1
  %ptr_arr_val.i20 = load i8, ptr %ptr_arr_addr.i19, align 1
  switch i8 %ptr_arr_val.i20, label %.thread [
    i8 0, label %"String::Str_streq_char*.exit52"
    i8 111, label %ifcont.i17.1
  ]

ifcont.i17.1:                                     ; preds = %ifcont.i17
  %ptr_arr_addr.i19.1 = getelementptr i8, ptr %data1.i, i64 2
  %ptr_arr_val.i20.1 = load i8, ptr %ptr_arr_addr.i19.1, align 1
  switch i8 %ptr_arr_val.i20.1, label %.thread [
    i8 0, label %"String::Str_streq_char*.exit52"
    i8 116, label %ifcont.i17.2
  ]

ifcont.i17.2:                                     ; preds = %ifcont.i17.1
  %ptr_arr_addr.i19.2 = getelementptr i8, ptr %data1.i, i64 3
  %ptr_arr_val.i20.2 = load i8, ptr %ptr_arr_addr.i19.2, align 1
  switch i8 %ptr_arr_val.i20.2, label %.thread [
    i8 0, label %"String::Str_streq_char*.exit52"
    i8 104, label %ifcont.i17.3
  ]

ifcont.i17.3:                                     ; preds = %ifcont.i17.2
  %ptr_arr_addr.i19.3 = getelementptr i8, ptr %data1.i, i64 4
  %ptr_arr_val.i20.3 = load i8, ptr %ptr_arr_addr.i19.3, align 1
  br label %"String::Str_streq_char*.exit52"

while.end.i46.thread:                             ; preds = %ifcont.i41.5, %ifcont.i41.4, %ifcont.i41.3, %ifcont.i41.2, %ifcont.i41.1, %ifcont.i41
  %"String::i.0.lcssa.i47.ph" = phi i64 [ 5, %ifcont.i41.4 ], [ 3, %ifcont.i41.2 ], [ 6, %ifcont.i41.5 ], [ 2, %ifcont.i41.1 ], [ 1, %ifcont.i41 ], [ 4, %ifcont.i41.3 ]
  %ptr_arr_val.lcssa.i48.ph = phi i8 [ %ptr_arr_val.i44.4, %ifcont.i41.4 ], [ %ptr_arr_val.i44.2, %ifcont.i41.2 ], [ %ptr_arr_val.i44.5, %ifcont.i41.5 ], [ %ptr_arr_val.i44.1, %ifcont.i41.1 ], [ %ptr_arr_val.i44, %ifcont.i41 ], [ %ptr_arr_val.i44.3, %ifcont.i41.3 ]
  %ptr_arr_addr22.i49116 = getelementptr i8, ptr @.str.44, i64 %"String::i.0.lcssa.i47.ph"
  %ptr_arr_val23.i50117 = load i8, ptr %ptr_arr_addr22.i49116, align 1
  %icmpeq.i51118 = icmp eq i8 %ptr_arr_val.lcssa.i48.ph, %ptr_arr_val23.i50117
  %select_val104119 = zext i1 %icmpeq.i51118 to i2
  br i1 %common.ret.op.i54.ph.ph, label %2, label %.thread

ifcont.i41:                                       ; preds = %ifcont.i.3, %ifcont.i.2, %ifcont.i.1, %ifcont.i, %and.rhs.i8.preheader.thread
  %common.ret.op.i54.ph.ph = phi i1 [ %1, %and.rhs.i8.preheader.thread ], [ false, %ifcont.i ], [ false, %ifcont.i.1 ], [ false, %ifcont.i.2 ], [ false, %ifcont.i.3 ]
  %ptr_arr_addr.i43 = getelementptr i8, ptr %data1.i, i64 1
  %ptr_arr_val.i44 = load i8, ptr %ptr_arr_addr.i43, align 1
  switch i8 %ptr_arr_val.i44, label %"String::Str_streq_char*.exit52.thread" [
    i8 0, label %while.end.i46.thread
    i8 102, label %ifcont.i41.1
  ]

ifcont.i41.1:                                     ; preds = %ifcont.i41
  %ptr_arr_addr.i43.1 = getelementptr i8, ptr %data1.i, i64 2
  %ptr_arr_val.i44.1 = load i8, ptr %ptr_arr_addr.i43.1, align 1
  switch i8 %ptr_arr_val.i44.1, label %"String::Str_streq_char*.exit52.thread" [
    i8 0, label %while.end.i46.thread
    i8 97, label %ifcont.i41.2
  ]

ifcont.i41.2:                                     ; preds = %ifcont.i41.1
  %ptr_arr_addr.i43.2 = getelementptr i8, ptr %data1.i, i64 3
  %ptr_arr_val.i44.2 = load i8, ptr %ptr_arr_addr.i43.2, align 1
  switch i8 %ptr_arr_val.i44.2, label %"String::Str_streq_char*.exit52.thread" [
    i8 0, label %while.end.i46.thread
    i8 108, label %ifcont.i41.3
  ]

ifcont.i41.3:                                     ; preds = %ifcont.i41.2
  %ptr_arr_addr.i43.3 = getelementptr i8, ptr %data1.i, i64 4
  %ptr_arr_val.i44.3 = load i8, ptr %ptr_arr_addr.i43.3, align 1
  switch i8 %ptr_arr_val.i44.3, label %"String::Str_streq_char*.exit52.thread" [
    i8 0, label %while.end.i46.thread
    i8 115, label %ifcont.i41.4
  ]

ifcont.i41.4:                                     ; preds = %ifcont.i41.3
  %ptr_arr_addr.i43.4 = getelementptr i8, ptr %data1.i, i64 5
  %ptr_arr_val.i44.4 = load i8, ptr %ptr_arr_addr.i43.4, align 1
  switch i8 %ptr_arr_val.i44.4, label %"String::Str_streq_char*.exit52.thread" [
    i8 0, label %while.end.i46.thread
    i8 101, label %ifcont.i41.5
  ]

ifcont.i41.5:                                     ; preds = %ifcont.i41.4
  %ptr_arr_addr.i43.5 = getelementptr i8, ptr %data1.i, i64 6
  %ptr_arr_val.i44.5 = load i8, ptr %ptr_arr_addr.i43.5, align 1
  br label %while.end.i46.thread

"String::Str_streq_char*.exit52.thread":          ; preds = %ifcont.i41.4, %ifcont.i41.3, %ifcont.i41.2, %ifcont.i41.1, %ifcont.i41
  br i1 %common.ret.op.i54.ph.ph, label %2, label %.thread

"String::Str_streq_char*.exit52":                 ; preds = %ifcont.i17.3, %ifcont.i17.2, %ifcont.i17.1, %ifcont.i17
  %"String::i.0.lcssa.i23.ph" = phi i64 [ 4, %ifcont.i17.3 ], [ 2, %ifcont.i17.1 ], [ 1, %ifcont.i17 ], [ 3, %ifcont.i17.2 ]
  %ptr_arr_val.lcssa.i24.ph = phi i8 [ %ptr_arr_val.i20.3, %ifcont.i17.3 ], [ %ptr_arr_val.i20.1, %ifcont.i17.1 ], [ %ptr_arr_val.i20, %ifcont.i17 ], [ %ptr_arr_val.i20.2, %ifcont.i17.2 ]
  %ptr_arr_addr22.i2582 = getelementptr i8, ptr @.str.43, i64 %"String::i.0.lcssa.i23.ph"
  %ptr_arr_val23.i2683 = load i8, ptr %ptr_arr_addr22.i2582, align 1
  %icmpeq.i2784 = icmp eq i8 %ptr_arr_val.lcssa.i24.ph, %ptr_arr_val23.i2683
  %cond.fr = freeze i1 %icmpeq.i2784
  %spec.select129 = sext i1 %cond.fr to i2
  br label %.thread

2:                                                ; preds = %while.end.i46.thread, %"String::Str_streq_char*.exit52.thread"
  br label %.thread

.thread:                                          ; preds = %"String::Str_streq_char*.exit52", %entry, %ifcont.i17.2, %ifcont.i17.1, %ifcont.i17, %while.end.i46.thread, %"String::Str_streq_char*.exit52.thread", %2
  %3 = phi i2 [ -2, %2 ], [ 0, %entry ], [ %select_val104119, %while.end.i46.thread ], [ 0, %ifcont.i17.1 ], [ 0, %"String::Str_streq_char*.exit52.thread" ], [ %spec.select129, %"String::Str_streq_char*.exit52" ], [ 0, %ifcont.i17 ], [ 0, %ifcont.i17.2 ]
  ret i2 %3
}

define weak_odr ptr @"String::Str_c_str"(ptr %0) local_unnamed_addr !qc.return_types !38 {
entry:
  %data = load ptr, ptr %0, align 8
  ret ptr %data
}

define weak_odr void @"Vector::Vec<int>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<int>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = shl nsw i64 %promote_int, 2
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<int>_push_T"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = shl nsw i64 %promote_int.i, 2
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<int>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<int>_reserve_int.exit.thread"

"Vector::Vec<int>_reserve_int.exit.thread":       ; preds = %ifcont5.i, %then8.i
  %size511 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<int>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<int>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<int>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<int>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<int>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<int>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<int>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size511, %"Vector::Vec<int>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [4 x i8], ptr %data6, i64 %5
  store i32 %1, ptr %ptr_arr_asi, align 4
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<int>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<int>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<int>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<int>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = shl nsw i64 %promote_int.i, 2
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<int>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<int>_reserve_int.exit"

"Vector::Vec<int>_reserve_int.exit":              ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<int>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %mul = ashr exact i64 %sext, 30
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size514 = load i32, ptr %3, align 8
  %icmplt15 = icmp sgt i32 %size514, 0
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [4 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<int>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [4 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<int>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<int>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr i32 @"Vector::Iterator::It<int>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.23, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [4 x i8], ptr %data4, i64 %3
  %common.ret.op = load i32, ptr %ptr_arr_addr5, align 4
  ret i32 %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<int>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr i32 @"Vector::Iterator::It<int>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.24, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %common.ret.op.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %common.ret.op = load i32, ptr %common.ret.op.in, align 4
  ret i32 %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [4 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [4 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<int>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<int>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<int>" poison, ptr %data, 0
  %"Vector::Iterator::It<int>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<int>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<int>" @"Vector::Vec<int>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<int>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<int>" poison, ptr %data, 0
  %"Vector::Iterator::It<int>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<int>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<int>" %"Vector::Iterator::It<int>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<int>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<int>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<int>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<int>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<int>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<int>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = shl nsw i64 %promote_int.i, 2
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt12 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [4 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [4 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val = load i32, ptr %ptr_arr_addr, align 4
  store i32 %ptr_arr_val, ptr %ptr_arr_asi, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr [4 x i8], ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr [4 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next
  %ptr_arr_val.1 = load i32, ptr %ptr_arr_addr.1, align 4
  store i32 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %data.2 = load ptr, ptr %0, align 8
  %ptr_arr_asi.2 = getelementptr [4 x i8], ptr %data.2, i64 %indvars.iv.next.1
  %ptr_arr_addr.2 = getelementptr [4 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.1
  %ptr_arr_val.2 = load i32, ptr %ptr_arr_addr.2, align 4
  store i32 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %data.3 = load ptr, ptr %0, align 8
  %ptr_arr_asi.3 = getelementptr [4 x i8], ptr %data.3, i64 %indvars.iv.next.2
  %ptr_arr_addr.3 = getelementptr [4 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.2
  %ptr_arr_val.3 = load i32, ptr %ptr_arr_addr.3, align 4
  store i32 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i64 [ 0, %for.body.epil.preheader ], [ %epil.iter.next, %for.body.epil ]
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr [4 x i8], ptr %data.epil, i64 %indvars.iv.epil
  %ptr_arr_addr.epil = getelementptr [4 x i8], ptr %.fca.0.extract, i64 %indvars.iv.epil
  %ptr_arr_val.epil = load i32, ptr %ptr_arr_addr.epil, align 4
  store i32 %ptr_arr_val.epil, ptr %ptr_arr_asi.epil, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !44

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<int>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr %"Vector::Vec<int>" @"Utils::range"(i32 %start, i32 %stop, i32 %step) local_unnamed_addr !qc.return_types !45 {
entry:
  %icmpgt = icmp sgt i32 %step, 0
  %icmple = icmp sle i32 %start, %stop
  %and = select i1 %icmpgt, i1 %icmple, i1 false
  br i1 %and, label %for.cond.preheader, label %elif.cond

for.cond.preheader:                               ; preds = %entry
  %icmplt96 = icmp slt i32 %start, %stop
  br i1 %icmplt96, label %for.body, label %common.ret

common.ret:                                       ; preds = %"Vector::Vec<int>_push_T.exit74", %"Vector::Vec<int>_push_T.exit", %for.cond.preheader, %elif.cond
  %fin29.fca.0.load.pn.in.sroa.speculated = phi ptr [ %fin.sroa.0.4, %"Vector::Vec<int>_push_T.exit" ], [ null, %elif.cond ], [ null, %for.cond.preheader ], [ %fin.sroa.0.6, %"Vector::Vec<int>_push_T.exit74" ]
  %fin29.fca.1.load.pn = phi i32 [ %fin.sroa.11.5, %"Vector::Vec<int>_push_T.exit" ], [ 0, %elif.cond ], [ 0, %for.cond.preheader ], [ %fin.sroa.11.8, %"Vector::Vec<int>_push_T.exit74" ]
  %fin29.fca.2.load.pn = phi i32 [ %fin.sroa.24.4, %"Vector::Vec<int>_push_T.exit" ], [ 0, %elif.cond ], [ 0, %for.cond.preheader ], [ %fin.sroa.24.6, %"Vector::Vec<int>_push_T.exit74" ]
  %fin29.fca.0.insert.pn = insertvalue %"Vector::Vec<int>" poison, ptr %fin29.fca.0.load.pn.in.sroa.speculated, 0
  %fin29.fca.1.insert.pn = insertvalue %"Vector::Vec<int>" %fin29.fca.0.insert.pn, i32 %fin29.fca.1.load.pn, 1
  %common.ret.op = insertvalue %"Vector::Vec<int>" %fin29.fca.1.insert.pn, i32 %fin29.fca.2.load.pn, 2
  ret %"Vector::Vec<int>" %common.ret.op

elif.cond:                                        ; preds = %entry
  %icmplt12 = icmp slt i32 %step, 0
  %icmpgt2489 = icmp sgt i32 %start, %stop
  %or.cond = select i1 %icmplt12, i1 %icmpgt2489, i1 false
  br i1 %or.cond, label %for.body19, label %common.ret

for.body:                                         ; preds = %for.cond.preheader, %"Vector::Vec<int>_push_T.exit"
  %start1.0100 = phi i32 [ %add, %"Vector::Vec<int>_push_T.exit" ], [ %start, %for.cond.preheader ]
  %fin.sroa.24.199 = phi i32 [ %fin.sroa.24.4, %"Vector::Vec<int>_push_T.exit" ], [ 0, %for.cond.preheader ]
  %fin.sroa.11.198 = phi i32 [ %fin.sroa.11.5, %"Vector::Vec<int>_push_T.exit" ], [ 0, %for.cond.preheader ]
  %fin.sroa.0.197 = phi ptr [ %fin.sroa.0.4, %"Vector::Vec<int>_push_T.exit" ], [ null, %for.cond.preheader ]
  %icmple.not.i = icmp sgt i32 %fin.sroa.24.199, %fin.sroa.11.198
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %for.body
  %icmpeq.i = icmp eq i32 %fin.sroa.24.199, 0
  %mul.i = shl i32 %fin.sroa.24.199, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  tail call fastcc void @qc_free(ptr %fin.sroa.0.197)
  br label %"Vector::Vec<int>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 2
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %fin.sroa.0.197, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %fin.sroa.11.198, i32 %select_val.i)
  br label %ifcont.i

"Vector::Vec<int>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %0 = icmp eq ptr %fin.sroa.0.197, null
  br i1 %0, label %"Vector::Vec<int>_push_T.exit", label %ifcont.i

ifcont.i:                                         ; preds = %ifcont5.i.i, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", %for.body
  %fin.sroa.0.3 = phi ptr [ %fin.sroa.0.197, %for.body ], [ %builtin_call.i.i, %ifcont5.i.i ], [ %fin.sroa.0.197, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %fin.sroa.11.4 = phi i32 [ %fin.sroa.11.198, %for.body ], [ %spec.select, %ifcont5.i.i ], [ %fin.sroa.11.198, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %fin.sroa.24.3 = phi i32 [ %fin.sroa.24.199, %for.body ], [ %select_val.i, %ifcont5.i.i ], [ %fin.sroa.24.199, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %1 = sext i32 %fin.sroa.11.4 to i64
  %ptr_arr_asi.i = getelementptr [4 x i8], ptr %fin.sroa.0.3, i64 %1
  store i32 %start1.0100, ptr %ptr_arr_asi.i, align 4
  %inc.i = add i32 %fin.sroa.11.4, 1
  br label %"Vector::Vec<int>_push_T.exit"

"Vector::Vec<int>_push_T.exit":                   ; preds = %then.i.i, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %fin.sroa.0.4 = phi ptr [ %fin.sroa.0.3, %ifcont.i ], [ null, %then.i.i ], [ null, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %fin.sroa.11.5 = phi i32 [ %inc.i, %ifcont.i ], [ 0, %then.i.i ], [ %fin.sroa.11.198, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %fin.sroa.24.4 = phi i32 [ %fin.sroa.24.3, %ifcont.i ], [ 0, %then.i.i ], [ %fin.sroa.24.199, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %add = add i32 %start1.0100, %step
  %icmplt = icmp slt i32 %add, %stop
  br i1 %icmplt, label %for.body, label %common.ret

for.body19:                                       ; preds = %elif.cond, %"Vector::Vec<int>_push_T.exit74"
  %start1.193 = phi i32 [ %add28, %"Vector::Vec<int>_push_T.exit74" ], [ %start, %elif.cond ]
  %fin.sroa.24.292 = phi i32 [ %fin.sroa.24.6, %"Vector::Vec<int>_push_T.exit74" ], [ 0, %elif.cond ]
  %fin.sroa.11.291 = phi i32 [ %fin.sroa.11.8, %"Vector::Vec<int>_push_T.exit74" ], [ 0, %elif.cond ]
  %fin.sroa.0.290 = phi ptr [ %fin.sroa.0.6, %"Vector::Vec<int>_push_T.exit74" ], [ null, %elif.cond ]
  %icmple.not.i45 = icmp sgt i32 %fin.sroa.24.292, %fin.sroa.11.291
  br i1 %icmple.not.i45, label %ifcont.i62, label %then.i47

then.i47:                                         ; preds = %for.body19
  %icmpeq.i48 = icmp eq i32 %fin.sroa.24.292, 0
  %mul.i49 = shl i32 %fin.sroa.24.292, 1
  %select_val.i50 = select i1 %icmpeq.i48, i32 1, i32 %mul.i49
  %icmpeq.i.i51 = icmp eq i32 %select_val.i50, 0
  br i1 %icmpeq.i.i51, label %then.i.i73, label %ifcont.i.i52

then.i.i73:                                       ; preds = %then.i47
  tail call fastcc void @qc_free(ptr %fin.sroa.0.290)
  br label %"Vector::Vec<int>_push_T.exit74"

ifcont.i.i52:                                     ; preds = %then.i47
  %promote_int.i.i53 = sext i32 %select_val.i50 to i64
  %mul.i.i54 = shl nsw i64 %promote_int.i.i53, 2
  %builtin_call.i.i55 = tail call fastcc ptr @qc_realloc(ptr %fin.sroa.0.290, i64 %mul.i.i54)
  %ptr_eq.i.i56 = icmp eq ptr %builtin_call.i.i55, null
  br i1 %ptr_eq.i.i56, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69", label %ifcont5.i.i57

ifcont5.i.i57:                                    ; preds = %ifcont.i.i52
  %spec.select86 = tail call i32 @llvm.smin.i32(i32 %fin.sroa.11.291, i32 %select_val.i50)
  br label %ifcont.i62

"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69": ; preds = %ifcont.i.i52
  %2 = icmp eq ptr %fin.sroa.0.290, null
  br i1 %2, label %"Vector::Vec<int>_push_T.exit74", label %ifcont.i62

ifcont.i62:                                       ; preds = %ifcont5.i.i57, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69", %for.body19
  %fin.sroa.0.5 = phi ptr [ %fin.sroa.0.290, %for.body19 ], [ %builtin_call.i.i55, %ifcont5.i.i57 ], [ %fin.sroa.0.290, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %fin.sroa.11.7 = phi i32 [ %fin.sroa.11.291, %for.body19 ], [ %spec.select86, %ifcont5.i.i57 ], [ %fin.sroa.11.291, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %fin.sroa.24.5 = phi i32 [ %fin.sroa.24.292, %for.body19 ], [ %select_val.i50, %ifcont5.i.i57 ], [ %fin.sroa.24.292, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %3 = sext i32 %fin.sroa.11.7 to i64
  %ptr_arr_asi.i65 = getelementptr [4 x i8], ptr %fin.sroa.0.5, i64 %3
  store i32 %start1.193, ptr %ptr_arr_asi.i65, align 4
  %inc.i67 = add i32 %fin.sroa.11.7, 1
  br label %"Vector::Vec<int>_push_T.exit74"

"Vector::Vec<int>_push_T.exit74":                 ; preds = %then.i.i73, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69", %ifcont.i62
  %fin.sroa.0.6 = phi ptr [ %fin.sroa.0.5, %ifcont.i62 ], [ null, %then.i.i73 ], [ null, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %fin.sroa.11.8 = phi i32 [ %inc.i67, %ifcont.i62 ], [ 0, %then.i.i73 ], [ %fin.sroa.11.291, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %fin.sroa.24.6 = phi i32 [ %fin.sroa.24.5, %ifcont.i62 ], [ 0, %then.i.i73 ], [ %fin.sroa.24.292, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i69" ]
  %add28 = add i32 %start1.193, %step
  %icmpgt24 = icmp sgt i32 %add28, %stop
  br i1 %icmpgt24, label %for.body19, label %common.ret
}

; Function Attrs: noinline optnone
define weak_odr void @"Utils::sleep"(i64 %milliseconds) local_unnamed_addr #17 !qc.return_types !34 {
entry:
  %"Utils::result" = alloca i64, align 8
  %rem = alloca %"Utils::_timespec", align 8
  %req = alloca [2 x i64], align 8
  %sdiv = sdiv i64 %milliseconds, 1000
  %srem = srem i64 %milliseconds, 1000
  %mul = mul nsw i64 %srem, 1000000
  %arr_lit_val.fca.0.insert = insertvalue [2 x i64] poison, i64 %sdiv, 0
  %arr_lit_val.fca.1.insert = insertvalue [2 x i64] %arr_lit_val.fca.0.insert, i64 %mul, 1
  store volatile [2 x i64] %arr_lit_val.fca.1.insert, ptr %req, align 8
  store volatile %"Utils::_timespec" zeroinitializer, ptr %rem, align 8
  store volatile i64 0, ptr %"Utils::result", align 8
  %req.0.req.0.req.0.req.0.arr_elem16 = load volatile i64, ptr %req, align 8
  %req.0.array_data.cast17 = inttoptr i64 %req.0.req.0.req.0.req.0.arr_elem16 to ptr
  %0 = call i64 asm sideeffect inteldialect "\0A                mov rax, 230\0A                mov rdi, 1\0A                mov rsi, 0\0A                mov rdx, $1\0A                mov r10, $2\0A                syscall\0A                mov $0, rax\0A            ", "=r,r,r,~{rax},~{rdi},~{rsi},~{rdx},~{r10},~{rcx},~{r11}"(ptr %req.0.array_data.cast17, ptr nonnull %rem) #26
  store i64 %0, ptr %"Utils::result", align 8
  %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result18" = load volatile i64, ptr %"Utils::result", align 8
  %icmpeq19 = icmp eq i64 %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result18", 0
  br i1 %icmpeq19, label %while.end, label %ifcont.lr.ph

ifcont.lr.ph:                                     ; preds = %entry
  %rem_nsec_ptr = getelementptr inbounds nuw i8, ptr %rem, i64 8
  %req.8.req.8.req.8.req.8.arr_elem_ptr14.sroa_idx = getelementptr inbounds nuw i8, ptr %req, i64 8
  br label %ifcont

while.end:                                        ; preds = %then9, %ifcont, %entry
  ret void

ifcont:                                           ; preds = %ifcont.lr.ph, %then9
  %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result7" = load volatile i64, ptr %"Utils::result", align 8
  %icmpeq8 = icmp eq i64 %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result7", -4
  br i1 %icmpeq8, label %then9, label %while.end

then9:                                            ; preds = %ifcont
  %rem_sec12 = load i64, ptr %rem, align 8
  store volatile i64 %rem_sec12, ptr %req, align 8
  %rem_nsec = load i64, ptr %rem_nsec_ptr, align 8
  store volatile i64 %rem_nsec, ptr %req.8.req.8.req.8.req.8.arr_elem_ptr14.sroa_idx, align 8
  store volatile i64 0, ptr %"Utils::result", align 8
  %req.0.req.0.req.0.req.0.arr_elem = load volatile i64, ptr %req, align 8
  %req.0.array_data.cast = inttoptr i64 %req.0.req.0.req.0.req.0.arr_elem to ptr
  %1 = call i64 asm sideeffect inteldialect "\0A                mov rax, 230\0A                mov rdi, 1\0A                mov rsi, 0\0A                mov rdx, $1\0A                mov r10, $2\0A                syscall\0A                mov $0, rax\0A            ", "=r,r,r,~{rax},~{rdi},~{rsi},~{rdx},~{r10},~{rcx},~{r11}"(ptr %req.0.array_data.cast, ptr nonnull %rem) #26
  store i64 %1, ptr %"Utils::result", align 8
  %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result" = load volatile i64, ptr %"Utils::result", align 8
  %icmpeq = icmp eq i64 %"Utils::result.0.Utils::result.0.Utils::result.0.Utils::result.0.result", 0
  br i1 %icmpeq, label %while.end, label %ifcont
}

define weak_odr double @"Math::e"() local_unnamed_addr !qc.return_types !46 {
entry:
  ret double f0x4005BF0A8B145769
}

define weak_odr double @"Math::pi"() local_unnamed_addr !qc.return_types !46 {
entry:
  ret double f0x400921FB54442D18
}

define weak_odr i32 @"Math::ceil"(%"Math::Floating" %a) local_unnamed_addr !qc.return_types !39 {
entry:
  %0 = extractvalue %"Math::Floating" %a, 1
  %.fca.0.extract = extractvalue [8 x i8] %0, 0
  %.fca.1.extract = extractvalue [8 x i8] %0, 1
  %.fca.2.extract = extractvalue [8 x i8] %0, 2
  %.fca.3.extract = extractvalue [8 x i8] %0, 3
  %.fca.4.extract = extractvalue [8 x i8] %0, 4
  %.fca.5.extract = extractvalue [8 x i8] %0, 5
  %.fca.6.extract = extractvalue [8 x i8] %0, 6
  %.fca.7.extract = extractvalue [8 x i8] %0, 7
  %array_cpy.0.insert.ext = zext i8 %.fca.0.extract to i64
  %array_cpy.1.insert.ext = zext i8 %.fca.1.extract to i64
  %array_cpy.1.insert.shift = shl nuw nsw i64 %array_cpy.1.insert.ext, 8
  %array_cpy.1.insert.insert = or disjoint i64 %array_cpy.1.insert.shift, %array_cpy.0.insert.ext
  %array_cpy.2.insert.ext = zext i8 %.fca.2.extract to i64
  %array_cpy.2.insert.shift = shl nuw nsw i64 %array_cpy.2.insert.ext, 16
  %array_cpy.2.insert.insert = or disjoint i64 %array_cpy.1.insert.insert, %array_cpy.2.insert.shift
  %array_cpy.3.insert.ext = zext i8 %.fca.3.extract to i64
  %array_cpy.3.insert.shift = shl nuw nsw i64 %array_cpy.3.insert.ext, 24
  %array_cpy.3.insert.insert = or disjoint i64 %array_cpy.2.insert.insert, %array_cpy.3.insert.shift
  %array_cpy.4.insert.ext = zext i8 %.fca.4.extract to i64
  %array_cpy.4.insert.shift = shl nuw nsw i64 %array_cpy.4.insert.ext, 32
  %array_cpy.5.insert.ext = zext i8 %.fca.5.extract to i64
  %array_cpy.5.insert.shift = shl nuw nsw i64 %array_cpy.5.insert.ext, 40
  %array_cpy.5.insert.mask = or disjoint i64 %array_cpy.3.insert.insert, %array_cpy.4.insert.shift
  %array_cpy.6.insert.ext = zext i8 %.fca.6.extract to i64
  %array_cpy.6.insert.shift = shl nuw nsw i64 %array_cpy.6.insert.ext, 48
  %array_cpy.6.insert.mask = or disjoint i64 %array_cpy.5.insert.mask, %array_cpy.5.insert.shift
  %array_cpy.7.insert.ext = zext i8 %.fca.7.extract to i64
  %array_cpy.7.insert.shift = shl nuw i64 %array_cpy.7.insert.ext, 56
  %array_cpy.6.insert.insert = or disjoint i64 %array_cpy.7.insert.shift, %array_cpy.6.insert.shift
  %array_cpy.7.insert.insert = or i64 %array_cpy.6.insert.insert, %array_cpy.6.insert.mask
  %1 = bitcast i64 %array_cpy.7.insert.insert to double
  %2 = fptosi double %1 to i32
  %3 = sitofp i32 %2 to double
  %fcmpeq = fcmp une double %1, %3
  %fcmpgt = fcmp ogt double %1, 0.000000e+00
  %or.cond = and i1 %fcmpgt, %fcmpeq
  %add = zext i1 %or.cond to i32
  %spec.select = add i32 %add, %2
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.inline.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #18

define weak_odr i32 @"Math::floor"(%"Math::Floating" %a) local_unnamed_addr !qc.return_types !39 {
entry:
  %0 = extractvalue %"Math::Floating" %a, 1
  %.fca.0.extract = extractvalue [8 x i8] %0, 0
  %.fca.1.extract = extractvalue [8 x i8] %0, 1
  %.fca.2.extract = extractvalue [8 x i8] %0, 2
  %.fca.3.extract = extractvalue [8 x i8] %0, 3
  %.fca.4.extract = extractvalue [8 x i8] %0, 4
  %.fca.5.extract = extractvalue [8 x i8] %0, 5
  %.fca.6.extract = extractvalue [8 x i8] %0, 6
  %.fca.7.extract = extractvalue [8 x i8] %0, 7
  %array_cpy.0.insert.ext = zext i8 %.fca.0.extract to i64
  %array_cpy.1.insert.ext = zext i8 %.fca.1.extract to i64
  %array_cpy.1.insert.shift = shl nuw nsw i64 %array_cpy.1.insert.ext, 8
  %array_cpy.1.insert.insert = or disjoint i64 %array_cpy.1.insert.shift, %array_cpy.0.insert.ext
  %array_cpy.2.insert.ext = zext i8 %.fca.2.extract to i64
  %array_cpy.2.insert.shift = shl nuw nsw i64 %array_cpy.2.insert.ext, 16
  %array_cpy.2.insert.insert = or disjoint i64 %array_cpy.1.insert.insert, %array_cpy.2.insert.shift
  %array_cpy.3.insert.ext = zext i8 %.fca.3.extract to i64
  %array_cpy.3.insert.shift = shl nuw nsw i64 %array_cpy.3.insert.ext, 24
  %array_cpy.3.insert.insert = or disjoint i64 %array_cpy.2.insert.insert, %array_cpy.3.insert.shift
  %array_cpy.4.insert.ext = zext i8 %.fca.4.extract to i64
  %array_cpy.4.insert.shift = shl nuw nsw i64 %array_cpy.4.insert.ext, 32
  %array_cpy.5.insert.ext = zext i8 %.fca.5.extract to i64
  %array_cpy.5.insert.shift = shl nuw nsw i64 %array_cpy.5.insert.ext, 40
  %array_cpy.5.insert.mask = or disjoint i64 %array_cpy.3.insert.insert, %array_cpy.4.insert.shift
  %array_cpy.6.insert.ext = zext i8 %.fca.6.extract to i64
  %array_cpy.6.insert.shift = shl nuw nsw i64 %array_cpy.6.insert.ext, 48
  %array_cpy.6.insert.mask = or disjoint i64 %array_cpy.5.insert.mask, %array_cpy.5.insert.shift
  %array_cpy.7.insert.ext = zext i8 %.fca.7.extract to i64
  %array_cpy.7.insert.shift = shl nuw i64 %array_cpy.7.insert.ext, 56
  %array_cpy.6.insert.insert = or disjoint i64 %array_cpy.7.insert.shift, %array_cpy.6.insert.shift
  %array_cpy.7.insert.insert = or i64 %array_cpy.6.insert.insert, %array_cpy.6.insert.mask
  %1 = bitcast i64 %array_cpy.7.insert.insert to double
  %2 = fptosi double %1 to i32
  %fcmpge = fcmp ult double %1, 0.000000e+00
  %3 = sitofp i32 %2 to double
  %fcmpeq = fcmp une double %1, %3
  %or.cond.not = select i1 %fcmpge, i1 %fcmpeq, i1 false
  %sub = sext i1 %or.cond.not to i32
  %spec.select = add i32 %sub, %2
  ret i32 %spec.select
}

define weak_odr double @"Math::sin"(double %x) local_unnamed_addr !qc.return_types !46 {
entry:
  %fcmpgt30 = fcmp ogt double %x, f0x400921FB54442D18
  br i1 %fcmpgt30, label %while.body, label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body, %entry
  %x1.0.lcssa = phi double [ %x, %entry ], [ %fsub, %while.body ]
  %fcmplt32 = fcmp olt double %x1.0.lcssa, f0xC00921FB54442D18
  br i1 %fcmplt32, label %while.body5, label %for.cond.preheader

while.body:                                       ; preds = %entry, %while.body
  %x1.031 = phi double [ %fsub, %while.body ], [ %x, %entry ]
  %fsub = fadd double %x1.031, f0xC01921FB54442D18
  %fcmpgt = fcmp ogt double %fsub, f0x400921FB54442D18
  br i1 %fcmpgt, label %while.body, label %while.cond4.preheader

for.cond.preheader:                               ; preds = %while.body5, %while.cond4.preheader
  %x1.1.lcssa = phi double [ %x1.0.lcssa, %while.cond4.preheader ], [ %fadd, %while.body5 ]
  %0 = fneg double %x1.1.lcssa
  %1 = fmul double %x1.1.lcssa, %0
  %fadd14 = fadd double %x1.1.lcssa, 0.000000e+00
  %fneg23 = fdiv double %1, 6.000000e+00
  %fmul24 = fmul double %x1.1.lcssa, %fneg23
  %fadd14.1 = fadd double %fmul24, %fadd14
  %fneg23.1 = fdiv double %1, 2.000000e+01
  %fmul24.1 = fmul double %fmul24, %fneg23.1
  %fadd14.2 = fadd double %fmul24.1, %fadd14.1
  %fneg23.2 = fdiv double %1, 4.200000e+01
  %fmul24.2 = fmul double %fmul24.1, %fneg23.2
  %fadd14.3 = fadd double %fmul24.2, %fadd14.2
  %fneg23.3 = fdiv double %1, 7.200000e+01
  %fmul24.3 = fmul double %fmul24.2, %fneg23.3
  %fadd14.4 = fadd double %fmul24.3, %fadd14.3
  %fneg23.4 = fdiv double %1, 1.100000e+02
  %fmul24.4 = fmul double %fmul24.3, %fneg23.4
  %fadd14.5 = fadd double %fmul24.4, %fadd14.4
  %fneg23.5 = fdiv double %1, 1.560000e+02
  %fmul24.5 = fmul double %fmul24.4, %fneg23.5
  %fadd14.6 = fadd double %fmul24.5, %fadd14.5
  %fneg23.6 = fdiv double %1, 2.100000e+02
  %fmul24.6 = fmul double %fmul24.5, %fneg23.6
  %fadd14.7 = fadd double %fmul24.6, %fadd14.6
  %fneg23.7 = fdiv double %1, 2.720000e+02
  %fmul24.7 = fmul double %fmul24.6, %fneg23.7
  %fadd14.8 = fadd double %fmul24.7, %fadd14.7
  %fneg23.8 = fdiv double %1, 3.420000e+02
  %fmul24.8 = fmul double %fmul24.7, %fneg23.8
  %fadd14.9 = fadd double %fmul24.8, %fadd14.8
  ret double %fadd14.9

while.body5:                                      ; preds = %while.cond4.preheader, %while.body5
  %x1.133 = phi double [ %fadd, %while.body5 ], [ %x1.0.lcssa, %while.cond4.preheader ]
  %fadd = fadd double %x1.133, f0x401921FB54442D18
  %fcmplt = fcmp olt double %fadd, f0xC00921FB54442D18
  br i1 %fcmplt, label %while.body5, label %for.cond.preheader
}

define weak_odr double @"Math::cos"(double %x) local_unnamed_addr !qc.return_types !46 {
entry:
  %fcmpgt29 = fcmp ogt double %x, f0x400921FB54442D18
  br i1 %fcmpgt29, label %while.body, label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %while.body, %entry
  %x1.0.lcssa = phi double [ %x, %entry ], [ %fsub, %while.body ]
  %fcmplt31 = fcmp olt double %x1.0.lcssa, f0xC00921FB54442D18
  br i1 %fcmplt31, label %while.body5, label %for.cond.preheader

while.body:                                       ; preds = %entry, %while.body
  %x1.030 = phi double [ %fsub, %while.body ], [ %x, %entry ]
  %fsub = fadd double %x1.030, f0xC01921FB54442D18
  %fcmpgt = fcmp ogt double %fsub, f0x400921FB54442D18
  br i1 %fcmpgt, label %while.body, label %while.cond4.preheader

for.cond.preheader:                               ; preds = %while.body5, %while.cond4.preheader
  %x1.1.lcssa = phi double [ %x1.0.lcssa, %while.cond4.preheader ], [ %fadd, %while.body5 ]
  %0 = fneg double %x1.1.lcssa
  %1 = fmul double %x1.1.lcssa, %0
  %fneg22 = fmul double %1, 5.000000e-01
  %fadd13.1 = fadd double %fneg22, 1.000000e+00
  %fneg22.1 = fdiv double %1, 1.200000e+01
  %fmul23.1 = fmul double %fneg22, %fneg22.1
  %fadd13.2 = fadd double %fmul23.1, %fadd13.1
  %fneg22.2 = fdiv double %1, 3.000000e+01
  %fmul23.2 = fmul double %fmul23.1, %fneg22.2
  %fadd13.3 = fadd double %fmul23.2, %fadd13.2
  %fneg22.3 = fdiv double %1, 5.600000e+01
  %fmul23.3 = fmul double %fmul23.2, %fneg22.3
  %fadd13.4 = fadd double %fmul23.3, %fadd13.3
  %fneg22.4 = fdiv double %1, 9.000000e+01
  %fmul23.4 = fmul double %fmul23.3, %fneg22.4
  %fadd13.5 = fadd double %fmul23.4, %fadd13.4
  %fneg22.5 = fdiv double %1, 1.320000e+02
  %fmul23.5 = fmul double %fmul23.4, %fneg22.5
  %fadd13.6 = fadd double %fmul23.5, %fadd13.5
  %fneg22.6 = fdiv double %1, 1.820000e+02
  %fmul23.6 = fmul double %fmul23.5, %fneg22.6
  %fadd13.7 = fadd double %fmul23.6, %fadd13.6
  %fneg22.7 = fdiv double %1, 2.400000e+02
  %fmul23.7 = fmul double %fmul23.6, %fneg22.7
  %fadd13.8 = fadd double %fmul23.7, %fadd13.7
  %fneg22.8 = fdiv double %1, 3.060000e+02
  %fmul23.8 = fmul double %fmul23.7, %fneg22.8
  %fadd13.9 = fadd double %fmul23.8, %fadd13.8
  ret double %fadd13.9

while.body5:                                      ; preds = %while.cond4.preheader, %while.body5
  %x1.132 = phi double [ %fadd, %while.body5 ], [ %x1.0.lcssa, %while.cond4.preheader ]
  %fadd = fadd double %x1.132, f0x401921FB54442D18
  %fcmplt = fcmp olt double %fadd, f0xC00921FB54442D18
  br i1 %fcmplt, label %while.body5, label %for.cond.preheader
}

define weak_odr double @"Math::tan"(double %x) local_unnamed_addr !qc.return_types !46 {
entry:
  %fcmpgt30.i = fcmp ogt double %x, f0x400921FB54442D18
  br i1 %fcmpgt30.i, label %while.body.i, label %while.cond4.preheader.i

while.cond4.preheader.i:                          ; preds = %while.body.i, %entry
  %x1.0.lcssa.i = phi double [ %x, %entry ], [ %fsub.i, %while.body.i ]
  %fcmplt32.i = fcmp olt double %x1.0.lcssa.i, f0xC00921FB54442D18
  br i1 %fcmplt32.i, label %while.body5.i, label %"Math::sin.exit"

while.body.i:                                     ; preds = %entry, %while.body.i
  %x1.031.i = phi double [ %fsub.i, %while.body.i ], [ %x, %entry ]
  %fsub.i = fadd double %x1.031.i, f0xC01921FB54442D18
  %fcmpgt.i = fcmp ogt double %fsub.i, f0x400921FB54442D18
  br i1 %fcmpgt.i, label %while.body.i, label %while.cond4.preheader.i

while.body5.i:                                    ; preds = %while.cond4.preheader.i, %while.body5.i
  %x1.133.i = phi double [ %fadd.i, %while.body5.i ], [ %x1.0.lcssa.i, %while.cond4.preheader.i ]
  %fadd.i = fadd double %x1.133.i, f0x401921FB54442D18
  %fcmplt.i = fcmp olt double %fadd.i, f0xC00921FB54442D18
  br i1 %fcmplt.i, label %while.body5.i, label %"Math::sin.exit"

"Math::sin.exit":                                 ; preds = %while.body5.i, %while.cond4.preheader.i
  %x1.1.lcssa.i = phi double [ %x1.0.lcssa.i, %while.cond4.preheader.i ], [ %fadd.i, %while.body5.i ]
  %0 = fneg double %x1.1.lcssa.i
  %1 = fmul double %x1.1.lcssa.i, %0
  %fadd14.i = fadd double %x1.1.lcssa.i, 0.000000e+00
  %fneg23.i = fdiv double %1, 6.000000e+00
  %fmul24.i = fmul double %x1.1.lcssa.i, %fneg23.i
  %fadd14.1.i = fadd double %fadd14.i, %fmul24.i
  %fneg23.1.i = fdiv double %1, 2.000000e+01
  %fmul24.1.i = fmul double %fneg23.1.i, %fmul24.i
  %fadd14.2.i = fadd double %fmul24.1.i, %fadd14.1.i
  %fneg23.2.i = fdiv double %1, 4.200000e+01
  %fmul24.2.i = fmul double %fneg23.2.i, %fmul24.1.i
  %fadd14.3.i = fadd double %fmul24.2.i, %fadd14.2.i
  %fneg23.3.i = fdiv double %1, 7.200000e+01
  %fmul24.3.i = fmul double %fneg23.3.i, %fmul24.2.i
  %fadd14.4.i = fadd double %fmul24.3.i, %fadd14.3.i
  %fneg23.4.i = fdiv double %1, 1.100000e+02
  %fmul24.4.i = fmul double %fneg23.4.i, %fmul24.3.i
  %fadd14.5.i = fadd double %fmul24.4.i, %fadd14.4.i
  %fneg23.5.i = fdiv double %1, 1.560000e+02
  %fmul24.5.i = fmul double %fneg23.5.i, %fmul24.4.i
  %fadd14.6.i = fadd double %fmul24.5.i, %fadd14.5.i
  %fneg23.6.i = fdiv double %1, 2.100000e+02
  %fmul24.6.i = fmul double %fneg23.6.i, %fmul24.5.i
  %fadd14.7.i = fadd double %fmul24.6.i, %fadd14.6.i
  %fneg23.7.i = fdiv double %1, 2.720000e+02
  %fmul24.7.i = fmul double %fneg23.7.i, %fmul24.6.i
  %fadd14.8.i = fadd double %fmul24.7.i, %fadd14.7.i
  %fneg23.8.i = fdiv double %1, 3.420000e+02
  %fmul24.8.i = fmul double %fneg23.8.i, %fmul24.7.i
  %fadd14.9.i = fadd double %fmul24.8.i, %fadd14.8.i
  %fcmpeq = fcmp oeq double %fadd14.9.i, 0.000000e+00
  br i1 %fcmpeq, label %or.end, label %or.rhs

or.rhs:                                           ; preds = %"Math::sin.exit"
  br i1 %fcmpgt30.i, label %while.body.i16, label %while.cond4.preheader.i10

while.cond4.preheader.i10:                        ; preds = %while.body.i16, %or.rhs
  %x1.0.lcssa.i11 = phi double [ %x, %or.rhs ], [ %fsub.i17, %while.body.i16 ]
  %fcmplt31.i = fcmp olt double %x1.0.lcssa.i11, f0xC00921FB54442D18
  br i1 %fcmplt31.i, label %while.body5.i13, label %"Math::cos.exit"

while.body.i16:                                   ; preds = %or.rhs, %while.body.i16
  %x1.030.i = phi double [ %fsub.i17, %while.body.i16 ], [ %x, %or.rhs ]
  %fsub.i17 = fadd double %x1.030.i, f0xC01921FB54442D18
  %fcmpgt.i18 = fcmp ogt double %fsub.i17, f0x400921FB54442D18
  br i1 %fcmpgt.i18, label %while.body.i16, label %while.cond4.preheader.i10

while.body5.i13:                                  ; preds = %while.cond4.preheader.i10, %while.body5.i13
  %x1.132.i = phi double [ %fadd.i14, %while.body5.i13 ], [ %x1.0.lcssa.i11, %while.cond4.preheader.i10 ]
  %fadd.i14 = fadd double %x1.132.i, f0x401921FB54442D18
  %fcmplt.i15 = fcmp olt double %fadd.i14, f0xC00921FB54442D18
  br i1 %fcmplt.i15, label %while.body5.i13, label %"Math::cos.exit"

"Math::cos.exit":                                 ; preds = %while.body5.i13, %while.cond4.preheader.i10
  %x1.1.lcssa.i12 = phi double [ %x1.0.lcssa.i11, %while.cond4.preheader.i10 ], [ %fadd.i14, %while.body5.i13 ]
  %2 = fneg double %x1.1.lcssa.i12
  %3 = fmul double %x1.1.lcssa.i12, %2
  %fneg22.i = fmul double %3, 5.000000e-01
  %fadd13.1.i = fadd double %fneg22.i, 1.000000e+00
  %fneg22.1.i = fdiv double %3, 1.200000e+01
  %fmul23.1.i = fmul double %fneg22.i, %fneg22.1.i
  %fadd13.2.i = fadd double %fmul23.1.i, %fadd13.1.i
  %fneg22.2.i = fdiv double %3, 3.000000e+01
  %fmul23.2.i = fmul double %fneg22.2.i, %fmul23.1.i
  %fadd13.3.i = fadd double %fmul23.2.i, %fadd13.2.i
  %fneg22.3.i = fdiv double %3, 5.600000e+01
  %fmul23.3.i = fmul double %fneg22.3.i, %fmul23.2.i
  %fadd13.4.i = fadd double %fmul23.3.i, %fadd13.3.i
  %fneg22.4.i = fdiv double %3, 9.000000e+01
  %fmul23.4.i = fmul double %fneg22.4.i, %fmul23.3.i
  %fadd13.5.i = fadd double %fmul23.4.i, %fadd13.4.i
  %fneg22.5.i = fdiv double %3, 1.320000e+02
  %fmul23.5.i = fmul double %fneg22.5.i, %fmul23.4.i
  %fadd13.6.i = fadd double %fmul23.5.i, %fadd13.5.i
  %fneg22.6.i = fdiv double %3, 1.820000e+02
  %fmul23.6.i = fmul double %fneg22.6.i, %fmul23.5.i
  %fadd13.7.i = fadd double %fmul23.6.i, %fadd13.6.i
  %fneg22.7.i = fdiv double %3, 2.400000e+02
  %fmul23.7.i = fmul double %fneg22.7.i, %fmul23.6.i
  %fadd13.8.i = fadd double %fmul23.7.i, %fadd13.7.i
  %fneg22.8.i = fdiv double %3, 3.060000e+02
  %fmul23.8.i = fmul double %fneg22.8.i, %fmul23.7.i
  %fadd13.9.i = fadd double %fmul23.8.i, %fadd13.8.i
  %fcmpeq5 = fcmp oeq double %fadd13.9.i, 0.000000e+00
  br label %or.end

or.end:                                           ; preds = %"Math::cos.exit", %"Math::sin.exit"
  %or = phi i1 [ true, %"Math::sin.exit" ], [ %fcmpeq5, %"Math::cos.exit" ]
  br i1 %fcmpgt30.i, label %while.body.i56, label %while.cond4.preheader.i20

while.cond4.preheader.i20:                        ; preds = %while.body.i56, %or.end
  %x1.0.lcssa.i21 = phi double [ %x, %or.end ], [ %fsub.i58, %while.body.i56 ]
  %fcmplt32.i22 = fcmp olt double %x1.0.lcssa.i21, f0xC00921FB54442D18
  br i1 %fcmplt32.i22, label %while.body5.i52, label %"Math::sin.exit60"

while.body.i56:                                   ; preds = %or.end, %while.body.i56
  %x1.031.i57 = phi double [ %fsub.i58, %while.body.i56 ], [ %x, %or.end ]
  %fsub.i58 = fadd double %x1.031.i57, f0xC01921FB54442D18
  %fcmpgt.i59 = fcmp ogt double %fsub.i58, f0x400921FB54442D18
  br i1 %fcmpgt.i59, label %while.body.i56, label %while.cond4.preheader.i20

while.body5.i52:                                  ; preds = %while.cond4.preheader.i20, %while.body5.i52
  %x1.133.i53 = phi double [ %fadd.i54, %while.body5.i52 ], [ %x1.0.lcssa.i21, %while.cond4.preheader.i20 ]
  %fadd.i54 = fadd double %x1.133.i53, f0x401921FB54442D18
  %fcmplt.i55 = fcmp olt double %fadd.i54, f0xC00921FB54442D18
  br i1 %fcmplt.i55, label %while.body5.i52, label %"Math::sin.exit60"

"Math::sin.exit60":                               ; preds = %while.body5.i52, %while.cond4.preheader.i20
  %x1.1.lcssa.i23 = phi double [ %x1.0.lcssa.i21, %while.cond4.preheader.i20 ], [ %fadd.i54, %while.body5.i52 ]
  br i1 %fcmpgt30.i, label %while.body.i96, label %while.cond4.preheader.i62

while.cond4.preheader.i62:                        ; preds = %while.body.i96, %"Math::sin.exit60"
  %x1.0.lcssa.i63 = phi double [ %x, %"Math::sin.exit60" ], [ %fsub.i98, %while.body.i96 ]
  %fcmplt31.i64 = fcmp olt double %x1.0.lcssa.i63, f0xC00921FB54442D18
  br i1 %fcmplt31.i64, label %while.body5.i92, label %"Math::cos.exit100"

while.body.i96:                                   ; preds = %"Math::sin.exit60", %while.body.i96
  %x1.030.i97 = phi double [ %fsub.i98, %while.body.i96 ], [ %x, %"Math::sin.exit60" ]
  %fsub.i98 = fadd double %x1.030.i97, f0xC01921FB54442D18
  %fcmpgt.i99 = fcmp ogt double %fsub.i98, f0x400921FB54442D18
  br i1 %fcmpgt.i99, label %while.body.i96, label %while.cond4.preheader.i62

while.body5.i92:                                  ; preds = %while.cond4.preheader.i62, %while.body5.i92
  %x1.132.i93 = phi double [ %fadd.i94, %while.body5.i92 ], [ %x1.0.lcssa.i63, %while.cond4.preheader.i62 ]
  %fadd.i94 = fadd double %x1.132.i93, f0x401921FB54442D18
  %fcmplt.i95 = fcmp olt double %fadd.i94, f0xC00921FB54442D18
  br i1 %fcmplt.i95, label %while.body5.i92, label %"Math::cos.exit100"

"Math::cos.exit100":                              ; preds = %while.body5.i92, %while.cond4.preheader.i62
  %x1.1.lcssa.i65 = phi double [ %x1.0.lcssa.i63, %while.cond4.preheader.i62 ], [ %fadd.i94, %while.body5.i92 ]
  %4 = fneg double %x1.1.lcssa.i23
  %5 = fmul double %x1.1.lcssa.i23, %4
  %fneg23.i25 = fdiv double %5, 6.000000e+00
  %fmul24.i26 = fmul double %x1.1.lcssa.i23, %fneg23.i25
  %fneg23.1.i28 = fdiv double %5, 2.000000e+01
  %fmul24.1.i29 = fmul double %fneg23.1.i28, %fmul24.i26
  %fneg23.2.i31 = fdiv double %5, 4.200000e+01
  %fmul24.2.i32 = fmul double %fneg23.2.i31, %fmul24.1.i29
  %fneg23.3.i34 = fdiv double %5, 7.200000e+01
  %fmul24.3.i35 = fmul double %fneg23.3.i34, %fmul24.2.i32
  %fneg23.4.i37 = fdiv double %5, 1.100000e+02
  %fmul24.4.i38 = fmul double %fneg23.4.i37, %fmul24.3.i35
  %fneg23.5.i40 = fdiv double %5, 1.560000e+02
  %fmul24.5.i41 = fmul double %fneg23.5.i40, %fmul24.4.i38
  %fneg23.6.i43 = fdiv double %5, 2.100000e+02
  %fmul24.6.i44 = fmul double %fneg23.6.i43, %fmul24.5.i41
  %fneg23.7.i46 = fdiv double %5, 2.720000e+02
  %fmul24.7.i47 = fmul double %fneg23.7.i46, %fmul24.6.i44
  %fneg23.8.i49 = fdiv double %5, 3.420000e+02
  %fmul24.8.i50 = fmul double %fneg23.8.i49, %fmul24.7.i47
  %fadd14.i24 = fadd double %x1.1.lcssa.i23, 0.000000e+00
  %fadd14.1.i27 = fadd double %fadd14.i24, %fmul24.i26
  %fadd14.2.i30 = fadd double %fmul24.1.i29, %fadd14.1.i27
  %fadd14.3.i33 = fadd double %fmul24.2.i32, %fadd14.2.i30
  %fadd14.4.i36 = fadd double %fmul24.3.i35, %fadd14.3.i33
  %fadd14.5.i39 = fadd double %fmul24.4.i38, %fadd14.4.i36
  %fadd14.6.i42 = fadd double %fmul24.5.i41, %fadd14.5.i39
  %fadd14.7.i45 = fadd double %fmul24.6.i44, %fadd14.6.i42
  %fadd14.8.i48 = fadd double %fmul24.7.i47, %fadd14.7.i45
  %fadd14.9.i51 = fadd double %fmul24.8.i50, %fadd14.8.i48
  %6 = fneg double %x1.1.lcssa.i65
  %7 = fmul double %x1.1.lcssa.i65, %6
  %fneg22.i66 = fmul double %7, 5.000000e-01
  %fadd13.1.i67 = fadd double %fneg22.i66, 1.000000e+00
  %fneg22.1.i68 = fdiv double %7, 1.200000e+01
  %fmul23.1.i69 = fmul double %fneg22.i66, %fneg22.1.i68
  %fadd13.2.i70 = fadd double %fmul23.1.i69, %fadd13.1.i67
  %fneg22.2.i71 = fdiv double %7, 3.000000e+01
  %fmul23.2.i72 = fmul double %fneg22.2.i71, %fmul23.1.i69
  %fadd13.3.i73 = fadd double %fmul23.2.i72, %fadd13.2.i70
  %fneg22.3.i74 = fdiv double %7, 5.600000e+01
  %fmul23.3.i75 = fmul double %fneg22.3.i74, %fmul23.2.i72
  %fadd13.4.i76 = fadd double %fmul23.3.i75, %fadd13.3.i73
  %fneg22.4.i77 = fdiv double %7, 9.000000e+01
  %fmul23.4.i78 = fmul double %fneg22.4.i77, %fmul23.3.i75
  %fadd13.5.i79 = fadd double %fmul23.4.i78, %fadd13.4.i76
  %fneg22.5.i80 = fdiv double %7, 1.320000e+02
  %fmul23.5.i81 = fmul double %fneg22.5.i80, %fmul23.4.i78
  %fadd13.6.i82 = fadd double %fmul23.5.i81, %fadd13.5.i79
  %fneg22.6.i83 = fdiv double %7, 1.820000e+02
  %fmul23.6.i84 = fmul double %fneg22.6.i83, %fmul23.5.i81
  %fadd13.7.i85 = fadd double %fmul23.6.i84, %fadd13.6.i82
  %fneg22.7.i86 = fdiv double %7, 2.400000e+02
  %fmul23.7.i87 = fmul double %fneg22.7.i86, %fmul23.6.i84
  %fadd13.8.i88 = fadd double %fmul23.7.i87, %fadd13.7.i85
  %fneg22.8.i89 = fdiv double %7, 3.060000e+02
  %fmul23.8.i90 = fmul double %fneg22.8.i89, %fmul23.7.i87
  %fadd13.9.i91 = fadd double %fmul23.8.i90, %fadd13.8.i88
  %fdiv = fdiv double %fadd14.9.i51, %fadd13.9.i91
  %select_val = select i1 %or, double 0.000000e+00, double %fdiv
  ret double %select_val
}

define weak_odr %"Errors::Error<double>" @"Math::log"(double %x) local_unnamed_addr !qc.return_types !47 {
entry:
  %fcmple = fcmp ugt double %x, 0.000000e+00
  br i1 %fcmple, label %while.cond.preheader, label %common.ret

while.cond.preheader:                             ; preds = %entry
  %fcmpgt80 = fcmp ogt double %x, 2.000000e+00
  br i1 %fcmpgt80, label %while.body, label %while.cond5.preheader

common.ret:                                       ; preds = %entry, %while.end7
  %union_payload3.unpack59.pn = phi i8 [ %16, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack61.pn = phi i8 [ %14, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack63.pn = phi i8 [ %12, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack65.pn = phi i8 [ %10, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack67.pn = phi i8 [ %8, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack69.pn = phi i8 [ %6, %while.end7 ], [ 0, %entry ]
  %union_payload3.unpack71.pn = phi i8 [ %4, %while.end7 ], [ 0, %entry ]
  %.pn = phi %"Errors::Error<double>" [ zeroinitializer, %while.end7 ], [ { i32 1, [8 x i8] zeroinitializer }, %entry ]
  %.pn79 = phi [8 x i8] [ %2, %while.end7 ], [ [i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison], %entry ]
  %.pn78 = insertvalue [8 x i8] %.pn79, i8 %union_payload3.unpack59.pn, 1
  %.pn77 = insertvalue [8 x i8] %.pn78, i8 %union_payload3.unpack61.pn, 2
  %.pn76 = insertvalue [8 x i8] %.pn77, i8 %union_payload3.unpack63.pn, 3
  %.pn75 = insertvalue [8 x i8] %.pn76, i8 %union_payload3.unpack65.pn, 4
  %.pn74 = insertvalue [8 x i8] %.pn75, i8 %union_payload3.unpack67.pn, 5
  %.pn73 = insertvalue [8 x i8] %.pn74, i8 %union_payload3.unpack69.pn, 6
  %union_payload372.pn = insertvalue [8 x i8] %.pn73, i8 %union_payload3.unpack71.pn, 7
  %common.ret.op = insertvalue %"Errors::Error<double>" %.pn, [8 x i8] %union_payload372.pn, 1
  ret %"Errors::Error<double>" %common.ret.op

while.cond5.preheader:                            ; preds = %while.body, %while.cond.preheader
  %"Math::n.0.lcssa" = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.body ]
  %x1.0.lcssa = phi double [ %x, %while.cond.preheader ], [ %fdiv, %while.body ]
  %fcmplt84 = fcmp olt double %x1.0.lcssa, 5.000000e-01
  br i1 %fcmplt84, label %while.body6, label %while.end7

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %x1.082 = phi double [ %fdiv, %while.body ], [ %x, %while.cond.preheader ]
  %"Math::n.081" = phi i32 [ %inc, %while.body ], [ 0, %while.cond.preheader ]
  %fdiv = fmul nnan double %x1.082, 5.000000e-01
  %inc = add i32 %"Math::n.081", 1
  %fcmpgt = fcmp ogt double %fdiv, 2.000000e+00
  br i1 %fcmpgt, label %while.body, label %while.cond5.preheader

while.body6:                                      ; preds = %while.cond5.preheader, %while.body6
  %x1.186 = phi double [ %fmul, %while.body6 ], [ %x1.0.lcssa, %while.cond5.preheader ]
  %"Math::n.185" = phi i32 [ %dec, %while.body6 ], [ %"Math::n.0.lcssa", %while.cond5.preheader ]
  %fmul = fmul nnan double %x1.186, 2.000000e+00
  %dec = add i32 %"Math::n.185", -1
  %fcmplt = fcmp olt double %fmul, 5.000000e-01
  br i1 %fcmplt, label %while.body6, label %while.end7

while.end7:                                       ; preds = %while.body6, %while.cond5.preheader
  %"Math::n.1.lcssa" = phi i32 [ %"Math::n.0.lcssa", %while.cond5.preheader ], [ %dec, %while.body6 ]
  %x1.1.lcssa = phi double [ %x1.0.lcssa, %while.cond5.preheader ], [ %fmul, %while.body6 ]
  %fsub = fadd double %x1.1.lcssa, -1.000000e+00
  %fneg = fneg double %fsub
  %fmul17 = fmul double %fsub, %fneg
  %fdiv14.1 = fmul double %fmul17, 5.000000e-01
  %fadd.1 = fadd double %fsub, %fdiv14.1
  %fmul17.1 = fmul double %fmul17, %fneg
  %fdiv14.2 = fdiv double %fmul17.1, 3.000000e+00
  %fadd.2 = fadd double %fadd.1, %fdiv14.2
  %fmul17.2 = fmul double %fmul17.1, %fneg
  %fdiv14.3 = fmul double %fmul17.2, 2.500000e-01
  %fadd.3 = fadd double %fadd.2, %fdiv14.3
  %fmul17.3 = fmul double %fmul17.2, %fneg
  %fdiv14.4 = fdiv double %fmul17.3, 5.000000e+00
  %fadd.4 = fadd double %fadd.3, %fdiv14.4
  %fmul17.4 = fmul double %fmul17.3, %fneg
  %fdiv14.5 = fdiv double %fmul17.4, 6.000000e+00
  %fadd.5 = fadd double %fadd.4, %fdiv14.5
  %fmul17.5 = fmul double %fmul17.4, %fneg
  %fdiv14.6 = fdiv double %fmul17.5, 7.000000e+00
  %fadd.6 = fadd double %fadd.5, %fdiv14.6
  %fmul17.6 = fmul double %fmul17.5, %fneg
  %fdiv14.7 = fmul double %fmul17.6, 1.250000e-01
  %fadd.7 = fadd double %fadd.6, %fdiv14.7
  %fmul17.7 = fmul double %fmul17.6, %fneg
  %fdiv14.8 = fdiv double %fmul17.7, 9.000000e+00
  %fadd.8 = fadd double %fadd.7, %fdiv14.8
  %fmul17.8 = fmul double %fmul17.7, %fneg
  %fdiv14.9 = fdiv double %fmul17.8, 1.000000e+01
  %fadd.9 = fadd double %fadd.8, %fdiv14.9
  %fmul17.9 = fmul double %fmul17.8, %fneg
  %fdiv14.10 = fdiv double %fmul17.9, 1.100000e+01
  %fadd.10 = fadd double %fadd.9, %fdiv14.10
  %fmul17.10 = fmul double %fmul17.9, %fneg
  %fdiv14.11 = fdiv double %fmul17.10, 1.200000e+01
  %fadd.11 = fadd double %fadd.10, %fdiv14.11
  %fmul17.11 = fmul double %fmul17.10, %fneg
  %fdiv14.12 = fdiv double %fmul17.11, 1.300000e+01
  %fadd.12 = fadd double %fadd.11, %fdiv14.12
  %fmul17.12 = fmul double %fmul17.11, %fneg
  %fdiv14.13 = fdiv double %fmul17.12, 1.400000e+01
  %fadd.13 = fadd double %fadd.12, %fdiv14.13
  %fmul17.13 = fmul double %fmul17.12, %fneg
  %fdiv14.14 = fdiv double %fmul17.13, 1.500000e+01
  %fadd.14 = fadd double %fadd.13, %fdiv14.14
  %fmul17.14 = fmul double %fmul17.13, %fneg
  %fdiv14.15 = fmul double %fmul17.14, 6.250000e-02
  %fadd.15 = fadd double %fadd.14, %fdiv14.15
  %fmul17.15 = fmul double %fmul17.14, %fneg
  %fdiv14.16 = fdiv double %fmul17.15, 1.700000e+01
  %fadd.16 = fadd double %fadd.15, %fdiv14.16
  %fmul17.16 = fmul double %fmul17.15, %fneg
  %fdiv14.17 = fdiv double %fmul17.16, 1.800000e+01
  %fadd.17 = fadd double %fadd.16, %fdiv14.17
  %fmul17.17 = fmul double %fmul17.16, %fneg
  %fdiv14.18 = fdiv double %fmul17.17, 1.900000e+01
  %fadd.18 = fadd double %fadd.17, %fdiv14.18
  %fmul17.18 = fmul double %fmul17.17, %fneg
  %fdiv14.19 = fdiv double %fmul17.18, 2.000000e+01
  %fadd.19 = fadd double %fadd.18, %fdiv14.19
  %int_to_float = sitofp i32 %"Math::n.1.lcssa" to double
  %fmul20 = fmul nnan double %int_to_float, f0x3FE62E42FEFA39EF
  %fadd21 = fadd double %fmul20, %fadd.19
  %0 = bitcast double %fadd21 to i64
  %1 = trunc i64 %0 to i8
  %2 = insertvalue [8 x i8] poison, i8 %1, 0
  %3 = lshr i64 %0, 56
  %4 = trunc nuw i64 %3 to i8
  %5 = lshr i64 %0, 48
  %6 = trunc i64 %5 to i8
  %7 = lshr i64 %0, 40
  %8 = trunc i64 %7 to i8
  %9 = lshr i64 %0, 32
  %10 = trunc i64 %9 to i8
  %11 = lshr i64 %0, 24
  %12 = trunc i64 %11 to i8
  %13 = lshr i64 %0, 16
  %14 = trunc i64 %13 to i8
  %15 = lshr i64 %0, 8
  %16 = trunc i64 %15 to i8
  br label %common.ret
}

define weak_odr void @"OSInterop::system"(ptr %command) local_unnamed_addr !qc.return_types !34 {
entry:
  tail call fastcc void @qc_flush()
  tail call void asm sideeffect inteldialect "\0A        mov rdi, $0\0A        call system\0A        ", "r,~{rdi}"(ptr %command) #26
  ret void
}

define weak_odr void @"Vector::Vec<char*>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<char*>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = shl nsw i64 %promote_int, 3
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<char*>_push_T"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<char*>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit.thread"

"Vector::Vec<char*>_reserve_int.exit.thread":     ; preds = %ifcont5.i, %then8.i
  %size511 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<char*>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<char*>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<char*>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size511, %"Vector::Vec<char*>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data6, i64 %5
  store ptr %1, ptr %ptr_arr_asi, align 8
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<char*>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<char*>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<char*>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<char*>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<char*>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit"

"Vector::Vec<char*>_reserve_int.exit":            ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<char*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %mul = ashr exact i64 %sext, 29
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size514 = load i32, ptr %3, align 8
  %icmplt15 = icmp sgt i32 %size514, 0
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<char*>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [8 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<char*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<char*>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.45, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [8 x i8], ptr %data4, i64 %3
  %common.ret.op = load ptr, ptr %ptr_arr_addr5, align 8
  ret ptr %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<char*>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<char*>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.46, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %common.ret.op.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %common.ret.op = load ptr, ptr %common.ret.op.in, align 8
  ret ptr %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [8 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [8 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<char*>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<char*>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<char*>" poison, ptr %data, 0
  %"Vector::Iterator::It<char*>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<char*>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<char*>" @"Vector::Vec<char*>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<char*>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<char*>" poison, ptr %data, 0
  %"Vector::Iterator::It<char*>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<char*>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<char*>" %"Vector::Iterator::It<char*>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<char*>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<char*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<char*>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt12 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr [8 x i8], ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next
  %ptr_arr_val.1 = load ptr, ptr %ptr_arr_addr.1, align 8
  store ptr %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %data.2 = load ptr, ptr %0, align 8
  %ptr_arr_asi.2 = getelementptr [8 x i8], ptr %data.2, i64 %indvars.iv.next.1
  %ptr_arr_addr.2 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.1
  %ptr_arr_val.2 = load ptr, ptr %ptr_arr_addr.2, align 8
  store ptr %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %data.3 = load ptr, ptr %0, align 8
  %ptr_arr_asi.3 = getelementptr [8 x i8], ptr %data.3, i64 %indvars.iv.next.2
  %ptr_arr_addr.3 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.2
  %ptr_arr_val.3 = load ptr, ptr %ptr_arr_addr.3, align 8
  store ptr %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i64 [ 0, %for.body.epil.preheader ], [ %epil.iter.next, %for.body.epil ]
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr [8 x i8], ptr %data.epil, i64 %indvars.iv.epil
  %ptr_arr_addr.epil = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.epil
  %ptr_arr_val.epil = load ptr, ptr %ptr_arr_addr.epil, align 8
  store ptr %ptr_arr_val.epil, ptr %ptr_arr_asi.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !48

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<char*>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = mul nsw i64 %promote_int, 72
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr %0, %"CQB::Build::Command" %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = mul nsw i64 %promote_int.i, 72
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread"

"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread": ; preds = %ifcont5.i, %then8.i
  %size533 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<CQB::Build::Command>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size533, %"Vector::Vec<CQB::Build::Command>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [72 x i8], ptr %data6, i64 %5
  %.elt = extractvalue %"CQB::Build::Command" %1, 0
  store ptr %.elt, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack8 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  %.elt9 = extractvalue %"CQB::Build::Command" %1, 1
  store ptr %.elt9, ptr %ptr_arr_asi.repack8, align 8
  %ptr_arr_asi.repack10 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  %.elt11 = extractvalue %"CQB::Build::Command" %1, 2
  %.elt11.elt = extractvalue %"Vector::Vec<char*>" %.elt11, 0
  store ptr %.elt11.elt, ptr %ptr_arr_asi.repack10, align 8
  %ptr_arr_asi.repack10.repack18 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 24
  %.elt11.elt19 = extractvalue %"Vector::Vec<char*>" %.elt11, 1
  store i32 %.elt11.elt19, ptr %ptr_arr_asi.repack10.repack18, align 8
  %ptr_arr_asi.repack10.repack20 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 28
  %.elt11.elt21 = extractvalue %"Vector::Vec<char*>" %.elt11, 2
  store i32 %.elt11.elt21, ptr %ptr_arr_asi.repack10.repack20, align 4
  %ptr_arr_asi.repack12 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 32
  %.elt13 = extractvalue %"CQB::Build::Command" %1, 3
  store ptr %.elt13, ptr %ptr_arr_asi.repack12, align 8
  %ptr_arr_asi.repack14 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 40
  %.elt15 = extractvalue %"CQB::Build::Command" %1, 4
  %.elt15.elt = extractvalue %"Vector::Vec<char*>" %.elt15, 0
  store ptr %.elt15.elt, ptr %ptr_arr_asi.repack14, align 8
  %ptr_arr_asi.repack14.repack22 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 48
  %.elt15.elt23 = extractvalue %"Vector::Vec<char*>" %.elt15, 1
  store i32 %.elt15.elt23, ptr %ptr_arr_asi.repack14.repack22, align 8
  %ptr_arr_asi.repack14.repack24 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 52
  %.elt15.elt25 = extractvalue %"Vector::Vec<char*>" %.elt15, 2
  store i32 %.elt15.elt25, ptr %ptr_arr_asi.repack14.repack24, align 4
  %ptr_arr_asi.repack16 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 56
  %.elt17 = extractvalue %"CQB::Build::Command" %1, 5
  %.elt17.elt = extractvalue %"Vector::Vec<char*>" %.elt17, 0
  store ptr %.elt17.elt, ptr %ptr_arr_asi.repack16, align 8
  %ptr_arr_asi.repack16.repack26 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 64
  %.elt17.elt27 = extractvalue %"Vector::Vec<char*>" %.elt17, 1
  store i32 %.elt17.elt27, ptr %ptr_arr_asi.repack16.repack26, align 8
  %ptr_arr_asi.repack16.repack28 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 68
  %.elt17.elt29 = extractvalue %"Vector::Vec<char*>" %.elt17, 2
  store i32 %.elt17.elt29, ptr %ptr_arr_asi.repack16.repack28, align 4
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<CQB::Build::Command>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::Build::Command>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = mul nsw i64 %promote_int.i, 72
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::Build::Command>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<CQB::Build::Command>_reserve_int.exit"

"Vector::Vec<CQB::Build::Command>_reserve_int.exit": ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %promote_int = ashr exact i64 %sext, 32
  %mul = mul nsw i64 %promote_int, 72
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size562 = load i32, ptr %3, align 8
  %icmplt63 = icmp sgt i32 %size562, 0
  br i1 %icmplt63, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [72 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [72 x i8], ptr %1, i64 %indvars.iv
  %ptr_arr_val.unpack = load ptr, ptr %ptr_arr_addr, align 8
  %ptr_arr_val.elt14 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 8
  %ptr_arr_val.unpack15 = load ptr, ptr %ptr_arr_val.elt14, align 8
  %ptr_arr_val.elt16 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 16
  %ptr_arr_val.unpack17.unpack = load ptr, ptr %ptr_arr_val.elt16, align 8
  %ptr_arr_val.unpack17.elt25 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 24
  %ptr_arr_val.unpack17.unpack26 = load i32, ptr %ptr_arr_val.unpack17.elt25, align 8
  %ptr_arr_val.unpack17.elt27 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 28
  %ptr_arr_val.unpack17.unpack28 = load i32, ptr %ptr_arr_val.unpack17.elt27, align 4
  %ptr_arr_val.elt18 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 32
  %ptr_arr_val.unpack19 = load ptr, ptr %ptr_arr_val.elt18, align 8
  %ptr_arr_val.elt20 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 40
  %ptr_arr_val.unpack21.unpack = load ptr, ptr %ptr_arr_val.elt20, align 8
  %ptr_arr_val.unpack21.elt30 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 48
  %ptr_arr_val.unpack21.unpack31 = load i32, ptr %ptr_arr_val.unpack21.elt30, align 8
  %ptr_arr_val.unpack21.elt32 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 52
  %ptr_arr_val.unpack21.unpack33 = load i32, ptr %ptr_arr_val.unpack21.elt32, align 4
  %ptr_arr_val.elt22 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 56
  %ptr_arr_val.unpack23.unpack = load ptr, ptr %ptr_arr_val.elt22, align 8
  %ptr_arr_val.unpack23.elt35 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 64
  %ptr_arr_val.unpack23.unpack36 = load i32, ptr %ptr_arr_val.unpack23.elt35, align 8
  %ptr_arr_val.unpack23.elt37 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 68
  %ptr_arr_val.unpack23.unpack38 = load i32, ptr %ptr_arr_val.unpack23.elt37, align 4
  store ptr %ptr_arr_val.unpack, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack40 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  store ptr %ptr_arr_val.unpack15, ptr %ptr_arr_asi.repack40, align 8
  %ptr_arr_asi.repack42 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  store ptr %ptr_arr_val.unpack17.unpack, ptr %ptr_arr_asi.repack42, align 8
  %ptr_arr_asi.repack42.repack50 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 24
  store i32 %ptr_arr_val.unpack17.unpack26, ptr %ptr_arr_asi.repack42.repack50, align 8
  %ptr_arr_asi.repack42.repack52 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 28
  store i32 %ptr_arr_val.unpack17.unpack28, ptr %ptr_arr_asi.repack42.repack52, align 4
  %ptr_arr_asi.repack44 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 32
  store ptr %ptr_arr_val.unpack19, ptr %ptr_arr_asi.repack44, align 8
  %ptr_arr_asi.repack46 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 40
  store ptr %ptr_arr_val.unpack21.unpack, ptr %ptr_arr_asi.repack46, align 8
  %ptr_arr_asi.repack46.repack54 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 48
  store i32 %ptr_arr_val.unpack21.unpack31, ptr %ptr_arr_asi.repack46.repack54, align 8
  %ptr_arr_asi.repack46.repack56 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 52
  store i32 %ptr_arr_val.unpack21.unpack33, ptr %ptr_arr_asi.repack46.repack56, align 4
  %ptr_arr_asi.repack48 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 56
  store ptr %ptr_arr_val.unpack23.unpack, ptr %ptr_arr_asi.repack48, align 8
  %ptr_arr_asi.repack48.repack58 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 64
  store i32 %ptr_arr_val.unpack23.unpack36, ptr %ptr_arr_asi.repack48.repack58, align 8
  %ptr_arr_asi.repack48.repack60 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 68
  store i32 %ptr_arr_val.unpack23.unpack38, ptr %ptr_arr_asi.repack48.repack60, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [72 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.49, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [72 x i8], ptr %data4, i64 %3
  %ptr_arr_val.unpack42.unpack57.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 68
  %ptr_arr_val.unpack42.unpack57.pn = load i32, ptr %ptr_arr_val.unpack42.unpack57.pn.in, align 4
  %ptr_arr_val.unpack42.unpack55.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 64
  %ptr_arr_val.unpack42.unpack55.pn = load i32, ptr %ptr_arr_val.unpack42.unpack55.pn.in, align 8
  %ptr_arr_val.unpack42.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 56
  %ptr_arr_val.unpack42.unpack.pn = load ptr, ptr %ptr_arr_val.unpack42.unpack.pn.in, align 8
  %.pn71 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack42.unpack.pn, 0
  %.pn70 = insertvalue %"Vector::Vec<char*>" %.pn71, i32 %ptr_arr_val.unpack42.unpack55.pn, 1
  %ptr_arr_val.unpack4258.pn = insertvalue %"Vector::Vec<char*>" %.pn70, i32 %ptr_arr_val.unpack42.unpack57.pn, 2
  %ptr_arr_val.unpack40.unpack52.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 52
  %ptr_arr_val.unpack40.unpack52.pn = load i32, ptr %ptr_arr_val.unpack40.unpack52.pn.in, align 4
  %ptr_arr_val.unpack40.unpack50.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 48
  %ptr_arr_val.unpack40.unpack50.pn = load i32, ptr %ptr_arr_val.unpack40.unpack50.pn.in, align 8
  %ptr_arr_val.unpack40.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 40
  %ptr_arr_val.unpack40.unpack.pn = load ptr, ptr %ptr_arr_val.unpack40.unpack.pn.in, align 8
  %.pn68 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack40.unpack.pn, 0
  %.pn67 = insertvalue %"Vector::Vec<char*>" %.pn68, i32 %ptr_arr_val.unpack40.unpack50.pn, 1
  %ptr_arr_val.unpack4053.pn = insertvalue %"Vector::Vec<char*>" %.pn67, i32 %ptr_arr_val.unpack40.unpack52.pn, 2
  %ptr_arr_val.unpack38.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 32
  %ptr_arr_val.unpack38.pn = load ptr, ptr %ptr_arr_val.unpack38.pn.in, align 8
  %ptr_arr_val.unpack36.unpack47.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 28
  %ptr_arr_val.unpack36.unpack47.pn = load i32, ptr %ptr_arr_val.unpack36.unpack47.pn.in, align 4
  %ptr_arr_val.unpack36.unpack45.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 24
  %ptr_arr_val.unpack36.unpack45.pn = load i32, ptr %ptr_arr_val.unpack36.unpack45.pn.in, align 8
  %ptr_arr_val.unpack36.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 16
  %ptr_arr_val.unpack36.unpack.pn = load ptr, ptr %ptr_arr_val.unpack36.unpack.pn.in, align 8
  %.pn65 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack36.unpack.pn, 0
  %.pn64 = insertvalue %"Vector::Vec<char*>" %.pn65, i32 %ptr_arr_val.unpack36.unpack45.pn, 1
  %ptr_arr_val.unpack3648.pn = insertvalue %"Vector::Vec<char*>" %.pn64, i32 %ptr_arr_val.unpack36.unpack47.pn, 2
  %ptr_arr_val.unpack34.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 8
  %ptr_arr_val.unpack34.pn = load ptr, ptr %ptr_arr_val.unpack34.pn.in, align 8
  %ptr_arr_val.unpack.pn = load ptr, ptr %ptr_arr_addr5, align 8
  %.pn62 = insertvalue %"CQB::Build::Command" poison, ptr %ptr_arr_val.unpack.pn, 0
  %.pn61 = insertvalue %"CQB::Build::Command" %.pn62, ptr %ptr_arr_val.unpack34.pn, 1
  %.pn60 = insertvalue %"CQB::Build::Command" %.pn61, %"Vector::Vec<char*>" %ptr_arr_val.unpack3648.pn, 2
  %.pn59 = insertvalue %"CQB::Build::Command" %.pn60, ptr %ptr_arr_val.unpack38.pn, 3
  %.pn = insertvalue %"CQB::Build::Command" %.pn59, %"Vector::Vec<char*>" %ptr_arr_val.unpack4053.pn, 4
  %common.ret.op = insertvalue %"CQB::Build::Command" %.pn, %"Vector::Vec<char*>" %ptr_arr_val.unpack4258.pn, 5
  ret %"CQB::Build::Command" %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Build::Command>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr %"CQB::Build::Command" @"Vector::Iterator::It<CQB::Build::Command>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.50, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %ptr_arr_val.unpack.pn.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %ptr_arr_val.unpack41.unpack56.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 68
  %ptr_arr_val.unpack41.unpack56.pn = load i32, ptr %ptr_arr_val.unpack41.unpack56.pn.in, align 4
  %ptr_arr_val.unpack41.unpack54.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 64
  %ptr_arr_val.unpack41.unpack54.pn = load i32, ptr %ptr_arr_val.unpack41.unpack54.pn.in, align 8
  %ptr_arr_val.unpack41.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 56
  %ptr_arr_val.unpack41.unpack.pn = load ptr, ptr %ptr_arr_val.unpack41.unpack.pn.in, align 8
  %.pn70 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack41.unpack.pn, 0
  %.pn69 = insertvalue %"Vector::Vec<char*>" %.pn70, i32 %ptr_arr_val.unpack41.unpack54.pn, 1
  %ptr_arr_val.unpack4157.pn = insertvalue %"Vector::Vec<char*>" %.pn69, i32 %ptr_arr_val.unpack41.unpack56.pn, 2
  %ptr_arr_val.unpack39.unpack51.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 52
  %ptr_arr_val.unpack39.unpack51.pn = load i32, ptr %ptr_arr_val.unpack39.unpack51.pn.in, align 4
  %ptr_arr_val.unpack39.unpack49.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 48
  %ptr_arr_val.unpack39.unpack49.pn = load i32, ptr %ptr_arr_val.unpack39.unpack49.pn.in, align 8
  %ptr_arr_val.unpack39.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 40
  %ptr_arr_val.unpack39.unpack.pn = load ptr, ptr %ptr_arr_val.unpack39.unpack.pn.in, align 8
  %.pn67 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack39.unpack.pn, 0
  %.pn66 = insertvalue %"Vector::Vec<char*>" %.pn67, i32 %ptr_arr_val.unpack39.unpack49.pn, 1
  %ptr_arr_val.unpack3952.pn = insertvalue %"Vector::Vec<char*>" %.pn66, i32 %ptr_arr_val.unpack39.unpack51.pn, 2
  %ptr_arr_val.unpack37.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 32
  %ptr_arr_val.unpack37.pn = load ptr, ptr %ptr_arr_val.unpack37.pn.in, align 8
  %ptr_arr_val.unpack35.unpack46.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 28
  %ptr_arr_val.unpack35.unpack46.pn = load i32, ptr %ptr_arr_val.unpack35.unpack46.pn.in, align 4
  %ptr_arr_val.unpack35.unpack44.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 24
  %ptr_arr_val.unpack35.unpack44.pn = load i32, ptr %ptr_arr_val.unpack35.unpack44.pn.in, align 8
  %ptr_arr_val.unpack35.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 16
  %ptr_arr_val.unpack35.unpack.pn = load ptr, ptr %ptr_arr_val.unpack35.unpack.pn.in, align 8
  %.pn64 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack35.unpack.pn, 0
  %.pn63 = insertvalue %"Vector::Vec<char*>" %.pn64, i32 %ptr_arr_val.unpack35.unpack44.pn, 1
  %ptr_arr_val.unpack3547.pn = insertvalue %"Vector::Vec<char*>" %.pn63, i32 %ptr_arr_val.unpack35.unpack46.pn, 2
  %ptr_arr_val.unpack33.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 8
  %ptr_arr_val.unpack33.pn = load ptr, ptr %ptr_arr_val.unpack33.pn.in, align 8
  %ptr_arr_val.unpack.pn = load ptr, ptr %ptr_arr_val.unpack.pn.in, align 8
  %.pn61 = insertvalue %"CQB::Build::Command" poison, ptr %ptr_arr_val.unpack.pn, 0
  %.pn60 = insertvalue %"CQB::Build::Command" %.pn61, ptr %ptr_arr_val.unpack33.pn, 1
  %.pn59 = insertvalue %"CQB::Build::Command" %.pn60, %"Vector::Vec<char*>" %ptr_arr_val.unpack3547.pn, 2
  %.pn58 = insertvalue %"CQB::Build::Command" %.pn59, ptr %ptr_arr_val.unpack37.pn, 3
  %.pn = insertvalue %"CQB::Build::Command" %.pn58, %"Vector::Vec<char*>" %ptr_arr_val.unpack3952.pn, 4
  %common.ret.op = insertvalue %"CQB::Build::Command" %.pn, %"Vector::Vec<char*>" %ptr_arr_val.unpack4157.pn, 5
  ret %"CQB::Build::Command" %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [72 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [72 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<CQB::Build::Command>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<CQB::Build::Command>" @"Vector::Vec<CQB::Build::Command>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<CQB::Build::Command>" %"Vector::Iterator::It<CQB::Build::Command>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<CQB::Build::Command>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Build::Command>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = mul nsw i64 %promote_int.i, 72
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt60 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt60, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [72 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [72 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val.unpack = load ptr, ptr %ptr_arr_addr, align 8
  %ptr_arr_val.elt12 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 8
  %ptr_arr_val.unpack13 = load ptr, ptr %ptr_arr_val.elt12, align 8
  %ptr_arr_val.elt14 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 16
  %ptr_arr_val.unpack15.unpack = load ptr, ptr %ptr_arr_val.elt14, align 8
  %ptr_arr_val.unpack15.elt23 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 24
  %ptr_arr_val.unpack15.unpack24 = load i32, ptr %ptr_arr_val.unpack15.elt23, align 8
  %ptr_arr_val.unpack15.elt25 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 28
  %ptr_arr_val.unpack15.unpack26 = load i32, ptr %ptr_arr_val.unpack15.elt25, align 4
  %ptr_arr_val.elt16 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 32
  %ptr_arr_val.unpack17 = load ptr, ptr %ptr_arr_val.elt16, align 8
  %ptr_arr_val.elt18 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 40
  %ptr_arr_val.unpack19.unpack = load ptr, ptr %ptr_arr_val.elt18, align 8
  %ptr_arr_val.unpack19.elt28 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 48
  %ptr_arr_val.unpack19.unpack29 = load i32, ptr %ptr_arr_val.unpack19.elt28, align 8
  %ptr_arr_val.unpack19.elt30 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 52
  %ptr_arr_val.unpack19.unpack31 = load i32, ptr %ptr_arr_val.unpack19.elt30, align 4
  %ptr_arr_val.elt20 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 56
  %ptr_arr_val.unpack21.unpack = load ptr, ptr %ptr_arr_val.elt20, align 8
  %ptr_arr_val.unpack21.elt33 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 64
  %ptr_arr_val.unpack21.unpack34 = load i32, ptr %ptr_arr_val.unpack21.elt33, align 8
  %ptr_arr_val.unpack21.elt35 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 68
  %ptr_arr_val.unpack21.unpack36 = load i32, ptr %ptr_arr_val.unpack21.elt35, align 4
  store ptr %ptr_arr_val.unpack, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack38 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  store ptr %ptr_arr_val.unpack13, ptr %ptr_arr_asi.repack38, align 8
  %ptr_arr_asi.repack40 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  store ptr %ptr_arr_val.unpack15.unpack, ptr %ptr_arr_asi.repack40, align 8
  %ptr_arr_asi.repack40.repack48 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 24
  store i32 %ptr_arr_val.unpack15.unpack24, ptr %ptr_arr_asi.repack40.repack48, align 8
  %ptr_arr_asi.repack40.repack50 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 28
  store i32 %ptr_arr_val.unpack15.unpack26, ptr %ptr_arr_asi.repack40.repack50, align 4
  %ptr_arr_asi.repack42 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 32
  store ptr %ptr_arr_val.unpack17, ptr %ptr_arr_asi.repack42, align 8
  %ptr_arr_asi.repack44 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 40
  store ptr %ptr_arr_val.unpack19.unpack, ptr %ptr_arr_asi.repack44, align 8
  %ptr_arr_asi.repack44.repack52 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 48
  store i32 %ptr_arr_val.unpack19.unpack29, ptr %ptr_arr_asi.repack44.repack52, align 8
  %ptr_arr_asi.repack44.repack54 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 52
  store i32 %ptr_arr_val.unpack19.unpack31, ptr %ptr_arr_asi.repack44.repack54, align 4
  %ptr_arr_asi.repack46 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 56
  store ptr %ptr_arr_val.unpack21.unpack, ptr %ptr_arr_asi.repack46, align 8
  %ptr_arr_asi.repack46.repack56 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 64
  store i32 %ptr_arr_val.unpack21.unpack34, ptr %ptr_arr_asi.repack46.repack56, align 8
  %ptr_arr_asi.repack46.repack58 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 68
  store i32 %ptr_arr_val.unpack21.unpack36, ptr %ptr_arr_asi.repack46.repack58, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::Build::Command>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr ptr @"CQB::Build::Builder_current_command"(ptr %0) local_unnamed_addr !qc.return_types !49 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %size.i = load i32, ptr %2, align 4
  %icmpeq = icmp eq i32 %size.i, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %1, %"CQB::Build::Command" zeroinitializer)
  %size.i2.pre = load i32, ptr %2, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %size.i2 = phi i32 [ %size.i2.pre, %then ], [ %size.i, %entry ]
  %sub = add i32 %size.i2, -1
  %3 = sext i32 %sub to i64
  %data.i = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i = getelementptr [72 x i8], ptr %data.i, i64 %3
  ret ptr %lval_ptr_arr_addr.i
}

define weak_odr void @"CQB::Build::Builder_Builder"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  %commands_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %commands_ptr, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr ptr @"CQB::Build::Builder_project_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  store ptr %1, ptr %0, align 8
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_alias_char*_char*"(ptr %0, ptr %1, ptr %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.53)
  %flag_result2 = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %1)
  %flag_result4 = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %2)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_aliasDir_char*_char*"(ptr %0, ptr %1, ptr %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.54)
  %flag_result2 = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %1)
  %flag_result4 = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %2)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_define_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.55, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_linkDir_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.56, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_link_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.57, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_include_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.58, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_linkerFlag_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.59, i64 5, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 5
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 4
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_warn_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.60, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_noWarn_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 6)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.61, i64 6, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 6
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 5
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_error_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 3)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i, ptr nonnull align 1 @.str.62, i64 3, i1 false)
  %strlen.i3 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %add.i5 = add i64 %strlen.i3, 1
  %builtin_call.i6 = tail call fastcc ptr @qc_malloc(i64 %add.i5)
  tail call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i6, ptr nonnull align 1 %1, i64 %add.i5, i1 false)
  %add2.i = add i64 %strlen.i3, 3
  %builtin_call.i9 = tail call fastcc ptr @qc_realloc(ptr %builtin_call.i, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i3, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i.preheader:                             ; preds = %entry
  %2 = getelementptr i8, ptr %builtin_call.i9, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %builtin_call.i6, i64 %strlen.i3, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i.preheader, %entry
  %3 = getelementptr i8, ptr %builtin_call.i9, i64 %strlen.i3
  %ptr_arr_asi15.i = getelementptr i8, ptr %3, i64 2
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i9)
  tail call fastcc void @qc_free(ptr %builtin_call.i6)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_cArgs"(ptr %0) local_unnamed_addr !qc.return_types !50 {
entry:
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.63)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addExecutable_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %2, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %2, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %2, 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr @.str.64, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr %.fca.0.extract, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 %.fca.1.extract, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 %.fca.2.extract, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %1, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %3, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addObject_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %2, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %2, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %2, 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr @.str.65, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr %.fca.0.extract, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 %.fca.1.extract, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 %.fca.2.extract, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %1, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %3, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.66)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addStaticLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %2, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %2, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %2, 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr @.str.67, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr %.fca.0.extract, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 %.fca.1.extract, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 %.fca.2.extract, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %1, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %3, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.68)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addDynamicLibrary_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %2, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %2, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %2, 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr @.str.69, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr %.fca.0.extract, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 %.fca.1.extract, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 %.fca.2.extract, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %1, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %3, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  %flag_result = tail call ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr nonnull @.str.70)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_targetFlags_Vector::Vec<char*>"(ptr %0, %"Vector::Vec<char*>" %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %1, 1
  %promote_int = sext i32 %.fca.1.extract to i64
  %icmplt8 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %"Vector::Vec<char*>_push_T.exit"
  %"CQB::Build::i.09" = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %"Vector::Vec<char*>_push_T.exit" ]
  %size.i.i = load i32, ptr %3, align 4
  %icmpeq.i = icmp eq i32 %size.i.i, 0
  br i1 %icmpeq.i, label %then.i, label %"CQB::Build::Builder_current_command.exit"

then.i:                                           ; preds = %for.body
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %2, %"CQB::Build::Command" zeroinitializer)
  %size.i2.pre.i = load i32, ptr %3, align 4
  br label %"CQB::Build::Builder_current_command.exit"

"CQB::Build::Builder_current_command.exit":       ; preds = %for.body, %then.i
  %size.i2.i = phi i32 [ %size.i2.pre.i, %then.i ], [ %size.i.i, %for.body ]
  %sub.i = add i32 %size.i2.i, -1
  %4 = sext i32 %sub.i to i64
  %data.i.i = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i.i = getelementptr [72 x i8], ptr %data.i.i, i64 %4
  %5 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 40
  %lval_ptr_arr_addr.i = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %"CQB::Build::i.09"
  %6 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 52
  %capacity.i = load i32, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 48
  %size.i4 = load i32, ptr %7, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i4
  %data6.pre.i = load ptr, ptr %5, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i5

then.i5:                                          ; preds = %"CQB::Build::Builder_current_command.exit"
  %icmpeq.i6 = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i6, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i5
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i5
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %6, align 4
  %size.i.i7 = load i32, ptr %7, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i7, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

"Vector::Vec<char*>_reserve_int.exit.thread.i":   ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i7, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %5, align 8
  br label %ifcont.i

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %data.pr.i, null
  br i1 %8, label %"Vector::Vec<char*>_push_T.exit", label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %7, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<char*>_reserve_int.exit.thread.i", %"CQB::Build::Builder_current_command.exit"
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %"CQB::Build::Builder_current_command.exit" ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %size.i4, %"CQB::Build::Builder_current_command.exit" ]
  %9 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %9
  store ptr %lval_ptr_arr_addr.i, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %7, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %inc = add nuw nsw i64 %"CQB::Build::i.09", 1
  %exitcond.not = icmp eq i64 %inc, %promote_int
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %"Vector::Vec<char*>_push_T.exit", %entry
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addCustomCommand_char*_char*_char*"(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr !qc.return_types !50 {
entry:
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr %2, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr null, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 0, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 0, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %3, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %4, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_flag_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %size.i.i = load i32, ptr %3, align 4
  %icmpeq.i = icmp eq i32 %size.i.i, 0
  br i1 %icmpeq.i, label %then.i, label %"CQB::Build::Builder_current_command.exit"

then.i:                                           ; preds = %entry
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %2, %"CQB::Build::Command" zeroinitializer)
  %size.i2.pre.i = load i32, ptr %3, align 4
  br label %"CQB::Build::Builder_current_command.exit"

"CQB::Build::Builder_current_command.exit":       ; preds = %entry, %then.i
  %size.i2.i = phi i32 [ %size.i2.pre.i, %then.i ], [ %size.i.i, %entry ]
  %sub.i = add i32 %size.i2.i, -1
  %4 = sext i32 %sub.i to i64
  %data.i.i = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i.i = getelementptr [72 x i8], ptr %data.i.i, i64 %4
  %5 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 52
  %capacity.i = load i32, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 48
  %size.i = load i32, ptr %7, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i
  %data6.pre.i = load ptr, ptr %5, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i2

then.i2:                                          ; preds = %"CQB::Build::Builder_current_command.exit"
  %icmpeq.i3 = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i3, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i2
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i2
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %6, align 4
  %size.i.i4 = load i32, ptr %7, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i4, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

"Vector::Vec<char*>_reserve_int.exit.thread.i":   ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i4, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %5, align 8
  br label %ifcont.i

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %data.pr.i, null
  br i1 %8, label %"Vector::Vec<char*>_push_T.exit", label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %7, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<char*>_reserve_int.exit.thread.i", %"CQB::Build::Builder_current_command.exit"
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %"CQB::Build::Builder_current_command.exit" ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %size.i, %"CQB::Build::Builder_current_command.exit" ]
  %9 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %9
  store ptr %1, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %7, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_addCDependency_char*_Vector::Vec<char*>"(ptr %0, ptr %1, %"Vector::Vec<char*>" %2) local_unnamed_addr !qc.return_types !50 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<char*>" %2, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<char*>" %2, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<char*>" %2, 2
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %cmd4.fca.0.insert = insertvalue %"CQB::Build::Command" poison, ptr %1, 0
  %cmd4.fca.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.0.insert, ptr @.str.71, 1
  %cmd4.fca.2.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.1.insert, ptr %.fca.0.extract, 2, 0
  %cmd4.fca.2.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.0.insert, i32 %.fca.1.extract, 2, 1
  %cmd4.fca.2.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.1.insert, i32 %.fca.2.extract, 2, 2
  %cmd4.fca.3.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.2.2.insert, ptr %1, 3
  %cmd4.fca.4.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.3.insert, ptr null, 4, 0
  %cmd4.fca.4.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.0.insert, i32 0, 4, 1
  %cmd4.fca.4.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.1.insert, i32 0, 4, 2
  %cmd4.fca.5.0.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.4.2.insert, ptr null, 5, 0
  %cmd4.fca.5.1.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.0.insert, i32 0, 5, 1
  %cmd4.fca.5.2.insert = insertvalue %"CQB::Build::Command" %cmd4.fca.5.1.insert, i32 0, 5, 2
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %3, %"CQB::Build::Command" %cmd4.fca.5.2.insert)
  ret ptr %0
}

define weak_odr ptr @"CQB::Build::Builder_dependsOn_char*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !50 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %size.i.i = load i32, ptr %3, align 4
  %icmpeq.i = icmp eq i32 %size.i.i, 0
  br i1 %icmpeq.i, label %then.i, label %"CQB::Build::Builder_current_command.exit"

then.i:                                           ; preds = %entry
  tail call void @"Vector::Vec<CQB::Build::Command>_push_T"(ptr nonnull %2, %"CQB::Build::Command" zeroinitializer)
  %size.i2.pre.i = load i32, ptr %3, align 4
  br label %"CQB::Build::Builder_current_command.exit"

"CQB::Build::Builder_current_command.exit":       ; preds = %entry, %then.i
  %size.i2.i = phi i32 [ %size.i2.pre.i, %then.i ], [ %size.i.i, %entry ]
  %sub.i = add i32 %size.i2.i, -1
  %4 = sext i32 %sub.i to i64
  %data.i.i = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i.i = getelementptr [72 x i8], ptr %data.i.i, i64 %4
  %5 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 56
  %6 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 68
  %capacity.i = load i32, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i.i, i64 64
  %size.i = load i32, ptr %7, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i
  %data6.pre.i = load ptr, ptr %5, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i2

then.i2:                                          ; preds = %"CQB::Build::Builder_current_command.exit"
  %icmpeq.i3 = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i3, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i2
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i2
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %6, align 4
  %size.i.i4 = load i32, ptr %7, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i4, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

"Vector::Vec<char*>_reserve_int.exit.thread.i":   ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i4, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %5, align 8
  br label %ifcont.i

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %5, align 8
  %8 = icmp eq ptr %data.pr.i, null
  br i1 %8, label %"Vector::Vec<char*>_push_T.exit", label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %7, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<char*>_reserve_int.exit.thread.i", %"CQB::Build::Builder_current_command.exit"
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %"CQB::Build::Builder_current_command.exit" ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %size.i, %"CQB::Build::Builder_current_command.exit" ]
  %9 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %9
  store ptr %1, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %7, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %7, align 8
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  ret ptr %0
}

define weak_odr %"Vector::Vec<CQB::Build::Command>" @"CQB::Build::Builder_extractGraph"(ptr %0) local_unnamed_addr !qc.return_types !51 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %commands.unpack = load ptr, ptr %1, align 8
  %2 = insertvalue %"Vector::Vec<CQB::Build::Command>" poison, ptr %commands.unpack, 0
  %commands.elt1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %commands.unpack2 = load i32, ptr %commands.elt1, align 8
  %3 = insertvalue %"Vector::Vec<CQB::Build::Command>" %2, i32 %commands.unpack2, 1
  %commands.elt3 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %commands.unpack4 = load i32, ptr %commands.elt3, align 4
  %commands5 = insertvalue %"Vector::Vec<CQB::Build::Command>" %3, i32 %commands.unpack4, 2
  ret %"Vector::Vec<CQB::Build::Command>" %commands5
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = shl nsw i64 %promote_int, 3
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_push_T"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread": ; preds = %ifcont5.i, %then8.i
  %size511 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size511, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data6, i64 %5
  store ptr %1, ptr %ptr_arr_asi, align 8
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Task*>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit":   ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %mul = ashr exact i64 %sext, 29
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size514 = load i32, ptr %3, align 8
  %icmplt15 = icmp sgt i32 %size514, 0
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [8 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.72, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [8 x i8], ptr %data4, i64 %3
  %common.ret.op = load ptr, ptr %ptr_arr_addr5, align 8
  ret ptr %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Task*>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr ptr @"Vector::Iterator::It<CQB::CI::Task*>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.73, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %common.ret.op.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %common.ret.op = load ptr, ptr %common.ret.op.in, align 8
  ret ptr %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [8 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [8 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Task*>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Task*>" @"Vector::Vec<CQB::CI::Task*>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<CQB::CI::Task*>" %"Vector::Iterator::It<CQB::CI::Task*>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<CQB::CI::Task*>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Task*>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Task*>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<CQB::CI::Task*>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<CQB::CI::Task*>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<CQB::CI::Task*>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = shl nsw i64 %promote_int.i, 3
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt12 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [8 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val = load ptr, ptr %ptr_arr_addr, align 8
  store ptr %ptr_arr_val, ptr %ptr_arr_asi, align 8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr [8 x i8], ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next
  %ptr_arr_val.1 = load ptr, ptr %ptr_arr_addr.1, align 8
  store ptr %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 8
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %data.2 = load ptr, ptr %0, align 8
  %ptr_arr_asi.2 = getelementptr [8 x i8], ptr %data.2, i64 %indvars.iv.next.1
  %ptr_arr_addr.2 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.1
  %ptr_arr_val.2 = load ptr, ptr %ptr_arr_addr.2, align 8
  store ptr %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 8
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %data.3 = load ptr, ptr %0, align 8
  %ptr_arr_asi.3 = getelementptr [8 x i8], ptr %data.3, i64 %indvars.iv.next.2
  %ptr_arr_addr.3 = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.2
  %ptr_arr_val.3 = load ptr, ptr %ptr_arr_addr.3, align 8
  store ptr %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i64 [ 0, %for.body.epil.preheader ], [ %epil.iter.next, %for.body.epil ]
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr [8 x i8], ptr %data.epil, i64 %indvars.iv.epil
  %ptr_arr_addr.epil = getelementptr [8 x i8], ptr %.fca.0.extract, i64 %indvars.iv.epil
  %ptr_arr_val.epil = load ptr, ptr %ptr_arr_addr.epil, align 8
  store ptr %ptr_arr_val.epil, ptr %ptr_arr_asi.epil, align 8
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !52

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Task*>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = mul nsw i64 %promote_int, 24
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_push_T"(ptr %0, %"CQB::CI::Step" %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = mul nsw i64 %promote_int.i, 24
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread"

"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread": ; preds = %ifcont5.i, %then8.i
  %size517 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<CQB::CI::Step>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size517, %"Vector::Vec<CQB::CI::Step>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [24 x i8], ptr %data6, i64 %5
  %.elt = extractvalue %"CQB::CI::Step" %1, 0
  store ptr %.elt, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack8 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  %.elt9 = extractvalue %"CQB::CI::Step" %1, 1
  %.elt9.elt = extractvalue %"Vector::Vec<char*>" %.elt9, 0
  store ptr %.elt9.elt, ptr %ptr_arr_asi.repack8, align 8
  %ptr_arr_asi.repack8.repack10 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  %.elt9.elt11 = extractvalue %"Vector::Vec<char*>" %.elt9, 1
  store i32 %.elt9.elt11, ptr %ptr_arr_asi.repack8.repack10, align 8
  %ptr_arr_asi.repack8.repack12 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 20
  %.elt9.elt13 = extractvalue %"Vector::Vec<char*>" %.elt9, 2
  store i32 %.elt9.elt13, ptr %ptr_arr_asi.repack8.repack12, align 4
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<CQB::CI::Step>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Step>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = mul nsw i64 %promote_int.i, 24
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::CI::Step>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<CQB::CI::Step>_reserve_int.exit"

"Vector::Vec<CQB::CI::Step>_reserve_int.exit":    ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %promote_int = ashr exact i64 %sext, 32
  %mul = mul nsw i64 %promote_int, 24
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size528 = load i32, ptr %3, align 8
  %icmplt29 = icmp sgt i32 %size528, 0
  br i1 %icmplt29, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [24 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [24 x i8], ptr %1, i64 %indvars.iv
  %ptr_arr_val.unpack = load ptr, ptr %ptr_arr_addr, align 8
  %ptr_arr_val.elt14 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 8
  %ptr_arr_val.unpack15.unpack = load ptr, ptr %ptr_arr_val.elt14, align 8
  %ptr_arr_val.unpack15.elt17 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 16
  %ptr_arr_val.unpack15.unpack18 = load i32, ptr %ptr_arr_val.unpack15.elt17, align 8
  %ptr_arr_val.unpack15.elt19 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 20
  %ptr_arr_val.unpack15.unpack20 = load i32, ptr %ptr_arr_val.unpack15.elt19, align 4
  store ptr %ptr_arr_val.unpack, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack22 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  store ptr %ptr_arr_val.unpack15.unpack, ptr %ptr_arr_asi.repack22, align 8
  %ptr_arr_asi.repack22.repack24 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  store i32 %ptr_arr_val.unpack15.unpack18, ptr %ptr_arr_asi.repack22.repack24, align 8
  %ptr_arr_asi.repack22.repack26 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 20
  store i32 %ptr_arr_val.unpack15.unpack20, ptr %ptr_arr_asi.repack22.repack26, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [24 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.76, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [24 x i8], ptr %data4, i64 %3
  %ptr_arr_val.unpack16.unpack21.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 20
  %ptr_arr_val.unpack16.unpack21.pn = load i32, ptr %ptr_arr_val.unpack16.unpack21.pn.in, align 4
  %ptr_arr_val.unpack16.unpack19.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 16
  %ptr_arr_val.unpack16.unpack19.pn = load i32, ptr %ptr_arr_val.unpack16.unpack19.pn.in, align 8
  %ptr_arr_val.unpack16.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_addr5, i64 8
  %ptr_arr_val.unpack16.unpack.pn = load ptr, ptr %ptr_arr_val.unpack16.unpack.pn.in, align 8
  %.pn25 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack16.unpack.pn, 0
  %.pn24 = insertvalue %"Vector::Vec<char*>" %.pn25, i32 %ptr_arr_val.unpack16.unpack19.pn, 1
  %ptr_arr_val.unpack1622.pn = insertvalue %"Vector::Vec<char*>" %.pn24, i32 %ptr_arr_val.unpack16.unpack21.pn, 2
  %ptr_arr_val.unpack.pn = load ptr, ptr %ptr_arr_addr5, align 8
  %.pn = insertvalue %"CQB::CI::Step" poison, ptr %ptr_arr_val.unpack.pn, 0
  %common.ret.op = insertvalue %"CQB::CI::Step" %.pn, %"Vector::Vec<char*>" %ptr_arr_val.unpack1622.pn, 1
  ret %"CQB::CI::Step" %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<CQB::CI::Step>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr %"CQB::CI::Step" @"Vector::Iterator::It<CQB::CI::Step>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.77, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %ptr_arr_val.unpack.pn.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %ptr_arr_val.unpack15.unpack20.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 20
  %ptr_arr_val.unpack15.unpack20.pn = load i32, ptr %ptr_arr_val.unpack15.unpack20.pn.in, align 4
  %ptr_arr_val.unpack15.unpack18.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 16
  %ptr_arr_val.unpack15.unpack18.pn = load i32, ptr %ptr_arr_val.unpack15.unpack18.pn.in, align 8
  %ptr_arr_val.unpack15.unpack.pn.in = getelementptr inbounds nuw i8, ptr %ptr_arr_val.unpack.pn.in, i64 8
  %ptr_arr_val.unpack15.unpack.pn = load ptr, ptr %ptr_arr_val.unpack15.unpack.pn.in, align 8
  %.pn24 = insertvalue %"Vector::Vec<char*>" poison, ptr %ptr_arr_val.unpack15.unpack.pn, 0
  %.pn23 = insertvalue %"Vector::Vec<char*>" %.pn24, i32 %ptr_arr_val.unpack15.unpack18.pn, 1
  %ptr_arr_val.unpack1521.pn = insertvalue %"Vector::Vec<char*>" %.pn23, i32 %ptr_arr_val.unpack15.unpack20.pn, 2
  %ptr_arr_val.unpack.pn = load ptr, ptr %ptr_arr_val.unpack.pn.in, align 8
  %.pn = insertvalue %"CQB::CI::Step" poison, ptr %ptr_arr_val.unpack.pn, 0
  %common.ret.op = insertvalue %"CQB::CI::Step" %.pn, %"Vector::Vec<char*>" %ptr_arr_val.unpack1521.pn, 1
  ret %"CQB::CI::Step" %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [24 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [24 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<CQB::CI::Step>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<CQB::CI::Step>" @"Vector::Vec<CQB::CI::Step>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<CQB::CI::Step>" %"Vector::Iterator::It<CQB::CI::Step>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<CQB::CI::Step>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::CI::Step>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::CI::Step>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<CQB::CI::Step>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<CQB::CI::Step>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<CQB::CI::Step>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = mul nsw i64 %promote_int.i, 24
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt26 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt26, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp eq i32 %.fca.1.extract, 1
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.1, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [24 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [24 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val.unpack = load ptr, ptr %ptr_arr_addr, align 8
  %ptr_arr_val.elt12 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 8
  %ptr_arr_val.unpack13.unpack = load ptr, ptr %ptr_arr_val.elt12, align 8
  %ptr_arr_val.unpack13.elt15 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 16
  %ptr_arr_val.unpack13.unpack16 = load i32, ptr %ptr_arr_val.unpack13.elt15, align 8
  %ptr_arr_val.unpack13.elt17 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr, i64 20
  %ptr_arr_val.unpack13.unpack18 = load i32, ptr %ptr_arr_val.unpack13.elt17, align 4
  store ptr %ptr_arr_val.unpack, ptr %ptr_arr_asi, align 8
  %ptr_arr_asi.repack20 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 8
  store ptr %ptr_arr_val.unpack13.unpack, ptr %ptr_arr_asi.repack20, align 8
  %ptr_arr_asi.repack20.repack22 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 16
  store i32 %ptr_arr_val.unpack13.unpack16, ptr %ptr_arr_asi.repack20.repack22, align 8
  %ptr_arr_asi.repack20.repack24 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi, i64 20
  store i32 %ptr_arr_val.unpack13.unpack18, ptr %ptr_arr_asi.repack20.repack24, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr [24 x i8], ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr [24 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next
  %ptr_arr_val.unpack.1 = load ptr, ptr %ptr_arr_addr.1, align 8
  %ptr_arr_val.elt12.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.1, i64 8
  %ptr_arr_val.unpack13.unpack.1 = load ptr, ptr %ptr_arr_val.elt12.1, align 8
  %ptr_arr_val.unpack13.elt15.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.1, i64 16
  %ptr_arr_val.unpack13.unpack16.1 = load i32, ptr %ptr_arr_val.unpack13.elt15.1, align 8
  %ptr_arr_val.unpack13.elt17.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.1, i64 20
  %ptr_arr_val.unpack13.unpack18.1 = load i32, ptr %ptr_arr_val.unpack13.elt17.1, align 4
  store ptr %ptr_arr_val.unpack.1, ptr %ptr_arr_asi.1, align 8
  %ptr_arr_asi.repack20.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.1, i64 8
  store ptr %ptr_arr_val.unpack13.unpack.1, ptr %ptr_arr_asi.repack20.1, align 8
  %ptr_arr_asi.repack20.repack22.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.1, i64 16
  store i32 %ptr_arr_val.unpack13.unpack16.1, ptr %ptr_arr_asi.repack20.repack22.1, align 8
  %ptr_arr_asi.repack20.repack24.1 = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.1, i64 20
  store i32 %ptr_arr_val.unpack13.unpack18.1, ptr %ptr_arr_asi.repack20.repack24.1, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i32 %.fca.1.extract to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr [24 x i8], ptr %data.epil, i64 %indvars.iv.epil.init
  %ptr_arr_addr.epil = getelementptr [24 x i8], ptr %.fca.0.extract, i64 %indvars.iv.epil.init
  %ptr_arr_val.unpack.epil = load ptr, ptr %ptr_arr_addr.epil, align 8
  %ptr_arr_val.elt12.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.epil, i64 8
  %ptr_arr_val.unpack13.unpack.epil = load ptr, ptr %ptr_arr_val.elt12.epil, align 8
  %ptr_arr_val.unpack13.elt15.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.epil, i64 16
  %ptr_arr_val.unpack13.unpack16.epil = load i32, ptr %ptr_arr_val.unpack13.elt15.epil, align 8
  %ptr_arr_val.unpack13.elt17.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_addr.epil, i64 20
  %ptr_arr_val.unpack13.unpack18.epil = load i32, ptr %ptr_arr_val.unpack13.elt17.epil, align 4
  store ptr %ptr_arr_val.unpack.epil, ptr %ptr_arr_asi.epil, align 8
  %ptr_arr_asi.repack20.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.epil, i64 8
  store ptr %ptr_arr_val.unpack13.unpack.epil, ptr %ptr_arr_asi.repack20.epil, align 8
  %ptr_arr_asi.repack20.repack22.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.epil, i64 16
  store i32 %ptr_arr_val.unpack13.unpack16.epil, ptr %ptr_arr_asi.repack20.repack22.epil, align 8
  %ptr_arr_asi.repack20.repack24.epil = getelementptr inbounds nuw i8, ptr %ptr_arr_asi.epil, i64 20
  store i32 %ptr_arr_val.unpack13.unpack18.epil, ptr %ptr_arr_asi.repack20.repack24.epil, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.epil.preheader, %for.end.loopexit.unr-lcssa, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::CI::Step>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr void @"CQB::CI::Job_Job_char*_Vector::Vec<Step>"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2) local_unnamed_addr !qc.return_types !15 {
entry:
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 48)
  %3 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %1, 0
  %4 = insertvalue %"CQB::CI::Task" %3, %"Vector::Vec<CQB::CI::Step>" %2, 1
  store %"CQB::CI::Task" %4, ptr %builtin_call, align 8
  %next_ptr = getelementptr inbounds nuw i8, ptr %builtin_call, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %next_ptr, i8 0, i64 16, i1 false)
  %capacity.i = load i32, ptr %5, align 4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size.i = load i32, ptr %6, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i
  %data6.pre.i = load ptr, ptr %0, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %entry
  %icmpeq.i = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %5, align 4
  %size.i.i = load i32, ptr %6, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %6, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i": ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %0, align 8
  br label %ifcont.i

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %0, align 8
  %7 = icmp eq ptr %data.pr.i, null
  br i1 %7, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit", label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %6, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i", %entry
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %entry ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %size.i, %entry ]
  %8 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %8
  store ptr %builtin_call, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %6, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %6, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

"Vector::Vec<CQB::CI::Task*>_push_T.exit":        ; preds = %then.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %entry_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %builtin_call, ptr %entry_ptr, align 8
  %current_ptr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %builtin_call, ptr %current_ptr, align 8
  ret void
}

define weak_odr ptr @"CQB::CI::Job_addTask_char*_Vector::Vec<Step>_bool"(ptr %0, ptr %1, %"Vector::Vec<CQB::CI::Step>" %2, i1 %3) local_unnamed_addr !qc.return_types !53 {
entry:
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 48)
  %4 = insertvalue %"CQB::CI::Task" zeroinitializer, ptr %1, 0
  %5 = insertvalue %"CQB::CI::Task" %4, %"Vector::Vec<CQB::CI::Step>" %2, 1
  store %"CQB::CI::Task" %5, ptr %builtin_call, align 8
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity.i = load i32, ptr %6, align 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size.i = load i32, ptr %7, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i
  %data6.pre.i = load ptr, ptr %0, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %entry
  %icmpeq.i = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %6, align 4
  %size.i.i = load i32, ptr %7, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %7, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i": ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %0, align 8
  br label %ifcont.i

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %0, align 8
  %8 = icmp eq ptr %data.pr.i, null
  br i1 %8, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit", label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %7, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i", %entry
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %entry ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %size.i, %entry ]
  %9 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %9
  store ptr %builtin_call, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %7, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %7, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

"Vector::Vec<CQB::CI::Task*>_push_T.exit":        ; preds = %then.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %current = load ptr, ptr %10, align 8
  %11 = getelementptr inbounds nuw i8, ptr %current, i64 24
  %12 = getelementptr inbounds nuw i8, ptr %current, i64 36
  %capacity.i8 = load i32, ptr %12, align 4
  %13 = getelementptr inbounds nuw i8, ptr %current, i64 32
  %size.i9 = load i32, ptr %13, align 4
  %icmple.not.i10 = icmp sgt i32 %capacity.i8, %size.i9
  %data6.pre.i11 = load ptr, ptr %11, align 8
  br i1 %icmple.not.i10, label %ifcont.i27, label %then.i12

then.i12:                                         ; preds = %"Vector::Vec<CQB::CI::Task*>_push_T.exit"
  %icmpeq.i13 = icmp eq i32 %capacity.i8, 0
  %mul.i14 = shl i32 %capacity.i8, 1
  %select_val.i15 = select i1 %icmpeq.i13, i32 1, i32 %mul.i14
  %icmpeq.i.i16 = icmp eq i32 %select_val.i15, 0
  br i1 %icmpeq.i.i16, label %then.i.i38, label %ifcont.i.i17

then.i.i38:                                       ; preds = %then.i12
  tail call fastcc void @qc_free(ptr %data6.pre.i11)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit39"

ifcont.i.i17:                                     ; preds = %then.i12
  %promote_int.i.i18 = sext i32 %select_val.i15 to i64
  %mul.i.i19 = shl nsw i64 %promote_int.i.i18, 3
  %builtin_call.i.i20 = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i11, i64 %mul.i.i19)
  %ptr_eq.i.i21 = icmp eq ptr %builtin_call.i.i20, null
  br i1 %ptr_eq.i.i21, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i34", label %ifcont5.i.i22

ifcont5.i.i22:                                    ; preds = %ifcont.i.i17
  store i32 %select_val.i15, ptr %12, align 4
  %size.i.i23 = load i32, ptr %13, align 8
  %icmpgt.i.i24 = icmp sgt i32 %size.i.i23, %select_val.i15
  br i1 %icmpgt.i.i24, label %then8.i.i33, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25"

then8.i.i33:                                      ; preds = %ifcont5.i.i22
  store i32 %select_val.i15, ptr %13, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25": ; preds = %then8.i.i33, %ifcont5.i.i22
  %size511.i26 = phi i32 [ %size.i.i23, %ifcont5.i.i22 ], [ %select_val.i15, %then8.i.i33 ]
  store ptr %builtin_call.i.i20, ptr %11, align 8
  br label %ifcont.i27

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i34": ; preds = %ifcont.i.i17
  %data.pr.i35 = load ptr, ptr %11, align 8
  %14 = icmp eq ptr %data.pr.i35, null
  br i1 %14, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit39", label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i36"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i36": ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i34"
  %size5.pre.i37 = load i32, ptr %13, align 8
  br label %ifcont.i27

ifcont.i27:                                       ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i36", %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25", %"Vector::Vec<CQB::CI::Task*>_push_T.exit"
  %data6.i28 = phi ptr [ %data.pr.i35, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i36" ], [ %builtin_call.i.i20, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25" ], [ %data6.pre.i11, %"Vector::Vec<CQB::CI::Task*>_push_T.exit" ]
  %size5.i29 = phi i32 [ %size5.pre.i37, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i36" ], [ %size511.i26, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i25" ], [ %size.i9, %"Vector::Vec<CQB::CI::Task*>_push_T.exit" ]
  %15 = sext i32 %size5.i29 to i64
  %ptr_arr_asi.i30 = getelementptr [8 x i8], ptr %data6.i28, i64 %15
  store ptr %builtin_call, ptr %ptr_arr_asi.i30, align 8
  %inc_deref.i31 = load i32, ptr %13, align 8
  %inc.i32 = add i32 %inc_deref.i31, 1
  store i32 %inc.i32, ptr %13, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit39"

"Vector::Vec<CQB::CI::Task*>_push_T.exit39":      ; preds = %then.i.i38, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i34", %ifcont.i27
  br i1 %3, label %then, label %ifcont

then:                                             ; preds = %"Vector::Vec<CQB::CI::Task*>_push_T.exit39"
  store ptr %builtin_call, ptr %10, align 8
  br label %ifcont

ifcont:                                           ; preds = %then, %"Vector::Vec<CQB::CI::Task*>_push_T.exit39"
  ret ptr %builtin_call
}

define weak_odr ptr @"CQB::CI::Job_focus_Task*"(ptr %0, ptr %1) local_unnamed_addr !qc.return_types !54 {
entry:
  %current_ptr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %current_ptr, align 8
  ret ptr %0
}

define weak_odr ptr @"CQB::CI::Job_link_Task*_Task*"(ptr %0, ptr %1, ptr %2) local_unnamed_addr !qc.return_types !54 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %capacity.i = load i32, ptr %4, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %size.i = load i32, ptr %5, align 4
  %icmple.not.i = icmp sgt i32 %capacity.i, %size.i
  %data6.pre.i = load ptr, ptr %3, align 8
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %entry
  %icmpeq.i = icmp eq i32 %capacity.i, 0
  %mul.i = shl i32 %capacity.i, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  tail call fastcc void @qc_free(ptr %data6.pre.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  store i32 %select_val.i, ptr %4, align 4
  %size.i.i = load i32, ptr %5, align 8
  %icmpgt.i.i = icmp sgt i32 %size.i.i, %select_val.i
  br i1 %icmpgt.i.i, label %then8.i.i, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

then8.i.i:                                        ; preds = %ifcont5.i.i
  store i32 %select_val.i, ptr %5, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i": ; preds = %then8.i.i, %ifcont5.i.i
  %size511.i = phi i32 [ %size.i.i, %ifcont5.i.i ], [ %select_val.i, %then8.i.i ]
  store ptr %builtin_call.i.i, ptr %3, align 8
  br label %ifcont.i

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %data.pr.i = load ptr, ptr %3, align 8
  %6 = icmp eq ptr %data.pr.i, null
  br i1 %6, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit", label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i = load i32, ptr %5, align 8
  br label %ifcont.i

ifcont.i:                                         ; preds = %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i", %entry
  %data6.i = phi ptr [ %data.pr.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %data6.pre.i, %entry ]
  %size5.i = phi i32 [ %size5.pre.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exit.thread.i" ], [ %size.i, %entry ]
  %7 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %data6.i, i64 %7
  store ptr %2, ptr %ptr_arr_asi.i, align 8
  %inc_deref.i = load i32, ptr %5, align 8
  %inc.i = add i32 %inc_deref.i, 1
  store i32 %inc.i, ptr %5, align 8
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit"

"Vector::Vec<CQB::CI::Task*>_push_T.exit":        ; preds = %then.i.i, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  ret ptr %0
}

define weak_odr ptr @"CQB::CI::Job_getGraphRoot"(ptr %0) local_unnamed_addr !qc.return_types !53 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %entry1 = load ptr, ptr %1, align 8
  ret ptr %entry1
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %mul = shl nsw i64 %promote_int, 6
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %mul)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_push_T"(ptr %0, %"CQB::Engine::TaskState" %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %mul.i = shl nsw i64 %promote_int.i, 6
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread"

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread": ; preds = %ifcont5.i, %then8.i
  %size512 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size512, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr [64 x i8], ptr %data6, i64 %5
  store %"CQB::Engine::TaskState" %1, ptr %ptr_arr_asi, align 8
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<CQB::Engine::TaskState>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %mul.i = shl nsw i64 %promote_int.i, 6
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit"

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit": ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %mul = ashr exact i64 %sext, 26
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %mul)
  store ptr %builtin_call, ptr %0, align 8
  %size514 = load i32, ptr %3, align 8
  %icmplt15 = icmp sgt i32 %size514, 0
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [64 x i8], ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [64 x i8], ptr %1, i64 %indvars.iv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr, i64 64, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr [64 x i8], ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.82, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr [64 x i8], ptr %data4, i64 %3
  %common.ret.op = load %"CQB::Engine::TaskState", ptr %ptr_arr_addr5, align 8
  ret %"CQB::Engine::TaskState" %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<CQB::Engine::TaskState>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr %"CQB::Engine::TaskState" @"Vector::Iterator::It<CQB::Engine::TaskState>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.83, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %common.ret.op.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %common.ret.op = load %"CQB::Engine::TaskState", ptr %common.ret.op.in, align 8
  ret %"CQB::Engine::TaskState" %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr [64 x i8], ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr [64 x i8], ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<CQB::Engine::TaskState>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<CQB::Engine::TaskState>" @"Vector::Vec<CQB::Engine::TaskState>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" poison, ptr %data, 0
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<CQB::Engine::TaskState>" %"Vector::Iterator::It<CQB::Engine::TaskState>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<CQB::Engine::TaskState>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<CQB::Engine::TaskState>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<CQB::Engine::TaskState>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<CQB::Engine::TaskState>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<CQB::Engine::TaskState>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<CQB::Engine::TaskState>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %mul.i = shl nsw i64 %promote_int.i, 6
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %mul.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt12 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr [64 x i8], ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr [64 x i8], ptr %.fca.0.extract, i64 %indvars.iv
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr, i64 64, i1 false)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr [64 x i8], ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr [64 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi.1, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr.1, i64 64, i1 false)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %data.2 = load ptr, ptr %0, align 8
  %ptr_arr_asi.2 = getelementptr [64 x i8], ptr %data.2, i64 %indvars.iv.next.1
  %ptr_arr_addr.2 = getelementptr [64 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi.2, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr.2, i64 64, i1 false)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %data.3 = load ptr, ptr %0, align 8
  %ptr_arr_asi.3 = getelementptr [64 x i8], ptr %data.3, i64 %indvars.iv.next.2
  %ptr_arr_addr.3 = getelementptr [64 x i8], ptr %.fca.0.extract, i64 %indvars.iv.next.2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi.3, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr.3, i64 64, i1 false)
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i64 [ 0, %for.body.epil.preheader ], [ %epil.iter.next, %for.body.epil ]
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr [64 x i8], ptr %data.epil, i64 %indvars.iv.epil
  %ptr_arr_addr.epil = getelementptr [64 x i8], ptr %.fca.0.extract, i64 %indvars.iv.epil
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_asi.epil, ptr noundef nonnull align 8 dereferenceable(64) %ptr_arr_addr.epil, i64 64, i1 false)
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !55

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<CQB::Engine::TaskState>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr i32 @"CQB::Engine::Runner_indexOf_Vector::Vec<Build::Command>&_char*"(ptr %0, ptr %1, ptr %2) local_unnamed_addr !qc.return_types !39 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %size.i = load i32, ptr %3, align 4
  %icmplt9 = icmp sgt i32 %size.i, 0
  br i1 %icmplt9, label %for.body.lr.ph, label %common.ret

for.body.lr.ph:                                   ; preds = %entry
  %data.i = load ptr, ptr %1, align 8
  %wide.trip.count = zext nneg i32 %size.i to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %ifcont
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %ifcont ]
  %lval_ptr_arr_addr.i = getelementptr [72 x i8], ptr %data.i, i64 %indvars.iv
  %targetName = load ptr, ptr %lval_ptr_arr_addr.i, align 8
  %ptr_eq = icmp eq ptr %targetName, %2
  br i1 %ptr_eq, label %common.ret.loopexit.split.loop.exit, label %ifcont

common.ret.loopexit.split.loop.exit:              ; preds = %for.body
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  br label %common.ret

common.ret:                                       ; preds = %ifcont, %common.ret.loopexit.split.loop.exit, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %4, %common.ret.loopexit.split.loop.exit ], [ -1, %ifcont ]
  ret i32 %common.ret.op

ifcont:                                           ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %common.ret, label %for.body
}

define weak_odr i32 @"CQB::Engine::Runner_runBuildPipeline"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %ts.i570 = alloca %timespec, align 8
  %ts.i561 = alloca %timespec, align 8
  %ts.i = alloca %timespec, align 8
  %"CQB::Engine::tty.sroa.0" = alloca i8, align 1
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %size.i = load i32, ptr %2, align 4
  %icmplt1048 = icmp sgt i32 %size.i, 0
  br i1 %icmplt1048, label %for.body.preheader, label %while.cond.preheader.split

for.body.preheader:                               ; preds = %entry
  %wide.trip.count1128 = zext nneg i32 %size.i to i64
  %data.i.pre = load ptr, ptr %1, align 8
  br label %for.body

while.cond.preheader.split:                       ; preds = %foreach.end, %entry
  %done.sroa.0.0.lcssa = phi ptr [ null, %entry ], [ %done.sroa.0.2, %foreach.end ]
  %remaining.sroa.0.0.lcssa = phi ptr [ null, %entry ], [ %remaining.sroa.0.2, %foreach.end ]
  %wide.trip.count1143 = zext nneg i32 %size.i to i64
  br label %while.cond

for.body:                                         ; preds = %for.body.preheader, %foreach.end
  %data.i = phi ptr [ %data.i.pre, %for.body.preheader ], [ %data.i330, %foreach.end ]
  %indvars.iv1125 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next1126, %foreach.end ]
  %remaining.sroa.26.01054 = phi i32 [ 0, %for.body.preheader ], [ %remaining.sroa.26.2, %foreach.end ]
  %remaining.sroa.16.01053 = phi i32 [ 0, %for.body.preheader ], [ %remaining.sroa.16.3, %foreach.end ]
  %remaining.sroa.0.01052 = phi ptr [ null, %for.body.preheader ], [ %remaining.sroa.0.2, %foreach.end ]
  %done.sroa.26.01051 = phi i32 [ 0, %for.body.preheader ], [ %done.sroa.26.2, %foreach.end ]
  %done.sroa.16.01050 = phi i32 [ 0, %for.body.preheader ], [ %done.sroa.16.3, %foreach.end ]
  %done.sroa.0.01049 = phi ptr [ null, %for.body.preheader ], [ %done.sroa.0.2, %foreach.end ]
  %lval_ptr_arr_addr.i = getelementptr [72 x i8], ptr %data.i, i64 %indvars.iv1125
  %3 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i, i64 64
  %size.i301 = load i32, ptr %3, align 4
  %icmple.not.i = icmp sgt i32 %remaining.sroa.26.01054, %remaining.sroa.16.01053
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %for.body
  %icmpeq.i = icmp eq i32 %remaining.sroa.26.01054, 0
  %mul.i = shl i32 %remaining.sroa.26.01054, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  tail call fastcc void @qc_free(ptr %remaining.sroa.0.01052)
  br label %"Vector::Vec<int>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 2
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr %remaining.sroa.0.01052, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %remaining.sroa.16.01053, i32 %select_val.i)
  br label %ifcont.i

"Vector::Vec<int>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %4 = icmp eq ptr %remaining.sroa.0.01052, null
  br i1 %4, label %"Vector::Vec<int>_push_T.exit", label %ifcont.i

ifcont.i:                                         ; preds = %ifcont5.i.i, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", %for.body
  %remaining.sroa.0.1 = phi ptr [ %remaining.sroa.0.01052, %for.body ], [ %builtin_call.i.i, %ifcont5.i.i ], [ %remaining.sroa.0.01052, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %remaining.sroa.16.2 = phi i32 [ %remaining.sroa.16.01053, %for.body ], [ %spec.select, %ifcont5.i.i ], [ %remaining.sroa.16.01053, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %remaining.sroa.26.1 = phi i32 [ %remaining.sroa.26.01054, %for.body ], [ %select_val.i, %ifcont5.i.i ], [ %remaining.sroa.26.01054, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %5 = sext i32 %remaining.sroa.16.2 to i64
  %ptr_arr_asi.i = getelementptr [4 x i8], ptr %remaining.sroa.0.1, i64 %5
  store i32 %size.i301, ptr %ptr_arr_asi.i, align 4
  %inc.i = add i32 %remaining.sroa.16.2, 1
  br label %"Vector::Vec<int>_push_T.exit"

"Vector::Vec<int>_push_T.exit":                   ; preds = %then.i.i, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %remaining.sroa.0.2 = phi ptr [ %remaining.sroa.0.1, %ifcont.i ], [ null, %then.i.i ], [ null, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %remaining.sroa.16.3 = phi i32 [ %inc.i, %ifcont.i ], [ 0, %then.i.i ], [ %remaining.sroa.16.01053, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %remaining.sroa.26.2 = phi i32 [ %remaining.sroa.26.1, %ifcont.i ], [ 0, %then.i.i ], [ %remaining.sroa.26.01054, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i" ]
  %icmple.not.i305 = icmp sgt i32 %done.sroa.26.01051, %done.sroa.16.01050
  br i1 %icmple.not.i305, label %ifcont.i320, label %then.i307

then.i307:                                        ; preds = %"Vector::Vec<int>_push_T.exit"
  %icmpeq.i308 = icmp eq i32 %done.sroa.26.01051, 0
  %mul.i309 = shl i32 %done.sroa.26.01051, 1
  %select_val.i310 = select i1 %icmpeq.i308, i32 1, i32 %mul.i309
  %icmpeq.i.i311 = icmp eq i32 %select_val.i310, 0
  br i1 %icmpeq.i.i311, label %then.i.i329, label %ifcont.i.i312

then.i.i329:                                      ; preds = %then.i307
  tail call fastcc void @qc_free(ptr %done.sroa.0.01049)
  br label %"Vector::Vec<bool>_push_T.exit"

ifcont.i.i312:                                    ; preds = %then.i307
  %promote_int.i.i313 = sext i32 %select_val.i310 to i64
  %builtin_call.i.i314 = tail call fastcc ptr @qc_realloc(ptr %done.sroa.0.01049, i64 %promote_int.i.i313)
  %ptr_eq.i.i315 = icmp eq ptr %builtin_call.i.i314, null
  br i1 %ptr_eq.i.i315, label %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i316

ifcont5.i.i316:                                   ; preds = %ifcont.i.i312
  %spec.select992 = tail call i32 @llvm.smin.i32(i32 %done.sroa.16.01050, i32 %select_val.i310)
  br label %ifcont.i320

"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i312
  %6 = icmp eq ptr %done.sroa.0.01049, null
  br i1 %6, label %"Vector::Vec<bool>_push_T.exit", label %ifcont.i320

ifcont.i320:                                      ; preds = %ifcont5.i.i316, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i", %"Vector::Vec<int>_push_T.exit"
  %done.sroa.0.1 = phi ptr [ %done.sroa.0.01049, %"Vector::Vec<int>_push_T.exit" ], [ %builtin_call.i.i314, %ifcont5.i.i316 ], [ %done.sroa.0.01049, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %done.sroa.16.2 = phi i32 [ %done.sroa.16.01050, %"Vector::Vec<int>_push_T.exit" ], [ %spec.select992, %ifcont5.i.i316 ], [ %done.sroa.16.01050, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %done.sroa.26.1 = phi i32 [ %done.sroa.26.01051, %"Vector::Vec<int>_push_T.exit" ], [ %select_val.i310, %ifcont5.i.i316 ], [ %done.sroa.26.01051, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %7 = sext i32 %done.sroa.16.2 to i64
  %ptr_arr_asi.i323 = getelementptr i8, ptr %done.sroa.0.1, i64 %7
  store i1 false, ptr %ptr_arr_asi.i323, align 1
  %inc.i325 = add i32 %done.sroa.16.2, 1
  br label %"Vector::Vec<bool>_push_T.exit"

"Vector::Vec<bool>_push_T.exit":                  ; preds = %then.i.i329, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i", %ifcont.i320
  %done.sroa.0.2 = phi ptr [ %done.sroa.0.1, %ifcont.i320 ], [ null, %then.i.i329 ], [ null, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %done.sroa.16.3 = phi i32 [ %inc.i325, %ifcont.i320 ], [ 0, %then.i.i329 ], [ %done.sroa.16.01050, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %done.sroa.26.2 = phi i32 [ %done.sroa.26.1, %ifcont.i320 ], [ 0, %then.i.i329 ], [ %done.sroa.26.01051, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.i" ]
  %data.i330 = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i331 = getelementptr [72 x i8], ptr %data.i330, i64 %indvars.iv1125
  %dependencies_ptr = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i331, i64 56
  %data.i332 = load ptr, ptr %dependencies_ptr, align 8
  %8 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i331, i64 64
  %size.i333 = load i32, ptr %8, align 8
  %icmple.i.not1046 = icmp sgt i32 %size.i333, 0
  br i1 %icmple.i.not1046, label %foreach.body.lr.ph, label %foreach.end

foreach.body.lr.ph:                               ; preds = %"Vector::Vec<bool>_push_T.exit"
  %size.i.i340 = load i32, ptr %2, align 8
  %icmplt9.i = icmp sgt i32 %size.i.i340, 0
  %wide.trip.count.i = zext nneg i32 %size.i.i340 to i64
  %wide.trip.count = zext nneg i32 %size.i333 to i64
  br label %foreach.body

foreach.cond.loopexit:                            ; preds = %for.body.i
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %foreach.end, label %foreach.body

foreach.body:                                     ; preds = %foreach.body.lr.ph, %foreach.cond.loopexit
  %indvars.iv = phi i64 [ 0, %foreach.body.lr.ph ], [ %indvars.iv.next, %foreach.cond.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %ptr_arr_addr5.i = getelementptr [8 x i8], ptr %data.i332, i64 %indvars.iv
  %common.ret.op.i = load ptr, ptr %ptr_arr_addr5.i, align 8
  br i1 %icmplt9.i, label %for.body.i, label %then

for.body.i:                                       ; preds = %foreach.body, %ifcont.i342
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %ifcont.i342 ], [ 0, %foreach.body ]
  %lval_ptr_arr_addr.i.i = getelementptr [72 x i8], ptr %data.i330, i64 %indvars.iv.i
  %targetName.i = load ptr, ptr %lval_ptr_arr_addr.i.i, align 8
  %ptr_eq.i = icmp eq ptr %targetName.i, %common.ret.op.i
  br i1 %ptr_eq.i, label %foreach.cond.loopexit, label %ifcont.i342

ifcont.i342:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %then, label %for.body.i

foreach.end:                                      ; preds = %foreach.cond.loopexit, %"Vector::Vec<bool>_push_T.exit"
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %exitcond1129.not = icmp eq i64 %indvars.iv.next1126, %wide.trip.count1128
  br i1 %exitcond1129.not, label %while.cond.preheader.split, label %for.body

common.ret:                                       ; preds = %else149, %for.end74, %then67, %then
  %common.ret.op = phi i32 [ 1, %then ], [ 2, %then67 ], [ 0, %for.end74 ], [ %calltmp141.fca.0.extract, %else149 ]
  ret i32 %common.ret.op

then:                                             ; preds = %foreach.body, %ifcont.i342
  %targetName = load ptr, ptr %lval_ptr_arr_addr.i331, align 8
  tail call fastcc void @qc_print_string(ptr nonnull @7)
  tail call fastcc void @qc_fmt_string(ptr %targetName)
  tail call fastcc void @qc_print_string(ptr nonnull @8)
  tail call fastcc void @qc_fmt_string(ptr %common.ret.op.i)
  tail call fastcc void @qc_print_string(ptr nonnull @9)
  tail call fastcc void @qc_free(ptr null)
  tail call fastcc void @qc_free(ptr %done.sroa.0.2)
  tail call fastcc void @qc_free(ptr %remaining.sroa.0.2)
  br label %common.ret

while.cond:                                       ; preds = %while.cond.preheader.split, %for.end20
  %order.sroa.0.0 = phi ptr [ %order.sroa.0.2, %for.end20 ], [ null, %while.cond.preheader.split ]
  %order.sroa.15.0 = phi i32 [ %order.sroa.15.2, %for.end20 ], [ 0, %while.cond.preheader.split ]
  %order.sroa.32.0 = phi i32 [ %order.sroa.32.2, %for.end20 ], [ 0, %while.cond.preheader.split ]
  %icmplt15 = icmp slt i32 %order.sroa.15.0, %size.i
  br i1 %icmplt15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br i1 %icmplt1048, label %for.body18, label %then67

while.end:                                        ; preds = %while.cond
  %calltmp = tail call i32 @isatty(i32 1)
  %icmpne69 = icmp ne i32 %calltmp, 0
  store i1 %icmpne69, ptr %"CQB::Engine::tty.sroa.0", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i)
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %ts.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i, i8 0, i64 16, i1 false)
  %calltmp.i = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i)
  %tv_sec.i = load i64, ptr %ts.i, align 8
  %mul.i353.neg = mul i64 %tv_sec.i, -1000
  %tv_nsec.i = load i64, ptr %.fca.1.gep.i, align 8
  %sdiv.i.neg = sdiv i64 %tv_nsec.i, -1000000
  %add.i.neg = add i64 %sdiv.i.neg, %mul.i353.neg
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i)
  %icmplt761097 = icmp sgt i32 %order.sroa.15.0, 0
  br i1 %icmplt761097, label %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit.lr.ph", label %for.end74

"Vector::Vec<char*>_operator[]=_T*_addr_t.exit.lr.ph": ; preds = %while.end
  %.fca.1.gep.i562 = getelementptr inbounds nuw i8, ptr %ts.i561, i64 8
  %.fca.1.gep.i571 = getelementptr inbounds nuw i8, ptr %ts.i570, i64 8
  %9 = zext nneg i32 %order.sroa.15.0 to i64
  br label %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit"

for.body18:                                       ; preds = %while.body, %for.inc19
  %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1174" = phi i1 [ %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1173", %for.inc19 ], [ false, %while.body ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %for.inc19 ], [ 0, %while.body ]
  %order.sroa.32.11064 = phi i32 [ %order.sroa.32.2, %for.inc19 ], [ %order.sroa.32.0, %while.body ]
  %order.sroa.15.11063 = phi i32 [ %order.sroa.15.2, %for.inc19 ], [ %order.sroa.15.0, %while.body ]
  %order.sroa.0.11062 = phi ptr [ %order.sroa.0.2, %for.inc19 ], [ %order.sroa.0.0, %while.body ]
  %lval_ptr_arr_addr.i355 = getelementptr i8, ptr %done.sroa.0.0.lcssa, i64 %indvars.iv1140
  %10 = load i1, ptr %lval_ptr_arr_addr.i355, align 1
  br i1 %10, label %for.inc19, label %or.rhs

for.inc19:                                        ; preds = %foreach.end49, %for.body18, %or.rhs
  %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1173" = phi i1 [ %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1174", %for.body18 ], [ %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1174", %or.rhs ], [ true, %foreach.end49 ]
  %order.sroa.0.2 = phi ptr [ %order.sroa.0.11062, %for.body18 ], [ %order.sroa.0.11062, %or.rhs ], [ %order.sroa.0.4, %foreach.end49 ]
  %order.sroa.15.2 = phi i32 [ %order.sroa.15.11063, %for.body18 ], [ %order.sroa.15.11063, %or.rhs ], [ %order.sroa.15.5, %foreach.end49 ]
  %order.sroa.32.2 = phi i32 [ %order.sroa.32.11064, %for.body18 ], [ %order.sroa.32.11064, %or.rhs ], [ %order.sroa.32.4, %foreach.end49 ]
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 1
  %exitcond1144.not = icmp eq i64 %indvars.iv.next1141, %wide.trip.count1143
  br i1 %exitcond1144.not, label %for.end20, label %for.body18

for.end20:                                        ; preds = %for.inc19
  br i1 %"CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.sroa.0.0.CQB::Engine::progressed.0.progressed1173", label %while.cond, label %then67

or.rhs:                                           ; preds = %for.body18
  %lval_ptr_arr_addr.i357 = getelementptr [4 x i8], ptr %remaining.sroa.0.0.lcssa, i64 %indvars.iv1140
  %11 = load i32, ptr %lval_ptr_arr_addr.i357, align 4
  %icmpne.not = icmp eq i32 %11, 0
  br i1 %icmpne.not, label %ifcont29, label %for.inc19

ifcont29:                                         ; preds = %or.rhs
  store i1 true, ptr %lval_ptr_arr_addr.i355, align 1
  %icmple.not.i362 = icmp sgt i32 %order.sroa.32.11064, %order.sroa.15.11063
  br i1 %icmple.not.i362, label %ifcont.i379, label %then.i364

then.i364:                                        ; preds = %ifcont29
  %icmpeq.i365 = icmp eq i32 %order.sroa.32.11064, 0
  %mul.i366 = shl i32 %order.sroa.32.11064, 1
  %select_val.i367 = select i1 %icmpeq.i365, i32 1, i32 %mul.i366
  %icmpeq.i.i368 = icmp eq i32 %select_val.i367, 0
  br i1 %icmpeq.i.i368, label %then.i.i390, label %ifcont.i.i369

then.i.i390:                                      ; preds = %then.i364
  tail call fastcc void @qc_free(ptr %order.sroa.0.11062)
  br label %"Vector::Vec<int>_push_T.exit391"

ifcont.i.i369:                                    ; preds = %then.i364
  %promote_int.i.i370 = sext i32 %select_val.i367 to i64
  %mul.i.i371 = shl nsw i64 %promote_int.i.i370, 2
  %builtin_call.i.i372 = tail call fastcc ptr @qc_realloc(ptr %order.sroa.0.11062, i64 %mul.i.i371)
  %ptr_eq.i.i373 = icmp eq ptr %builtin_call.i.i372, null
  br i1 %ptr_eq.i.i373, label %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386", label %ifcont5.i.i374

ifcont5.i.i374:                                   ; preds = %ifcont.i.i369
  %spec.select994 = tail call i32 @llvm.smin.i32(i32 %order.sroa.15.11063, i32 %select_val.i367)
  br label %ifcont.i379

"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386": ; preds = %ifcont.i.i369
  %12 = icmp eq ptr %order.sroa.0.11062, null
  br i1 %12, label %"Vector::Vec<int>_push_T.exit391", label %ifcont.i379

ifcont.i379:                                      ; preds = %ifcont5.i.i374, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386", %ifcont29
  %order.sroa.0.3 = phi ptr [ %order.sroa.0.11062, %ifcont29 ], [ %builtin_call.i.i372, %ifcont5.i.i374 ], [ %order.sroa.0.11062, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  %order.sroa.15.4 = phi i32 [ %order.sroa.15.11063, %ifcont29 ], [ %spec.select994, %ifcont5.i.i374 ], [ %order.sroa.15.11063, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  %order.sroa.32.3 = phi i32 [ %order.sroa.32.11064, %ifcont29 ], [ %select_val.i367, %ifcont5.i.i374 ], [ %order.sroa.32.11064, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  %13 = sext i32 %order.sroa.15.4 to i64
  %ptr_arr_asi.i382 = getelementptr [4 x i8], ptr %order.sroa.0.3, i64 %13
  %14 = trunc nuw nsw i64 %indvars.iv1140 to i32
  store i32 %14, ptr %ptr_arr_asi.i382, align 4
  %inc.i384 = add i32 %order.sroa.15.4, 1
  br label %"Vector::Vec<int>_push_T.exit391"

"Vector::Vec<int>_push_T.exit391":                ; preds = %then.i.i390, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386", %ifcont.i379
  %order.sroa.0.4 = phi ptr [ %order.sroa.0.3, %ifcont.i379 ], [ null, %then.i.i390 ], [ null, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  %order.sroa.15.5 = phi i32 [ %inc.i384, %ifcont.i379 ], [ 0, %then.i.i390 ], [ %order.sroa.15.11063, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  %order.sroa.32.4 = phi i32 [ %order.sroa.32.3, %ifcont.i379 ], [ 0, %then.i.i390 ], [ %order.sroa.32.11064, %"Vector::Vec<int>_reserve_int.exitthread-pre-split.i386" ]
  br label %for.body34

for.body34:                                       ; preds = %"Vector::Vec<int>_push_T.exit391", %foreach.end49
  %indvars.iv1135 = phi i64 [ 0, %"Vector::Vec<int>_push_T.exit391" ], [ %indvars.iv.next1136, %foreach.end49 ]
  %data.i392 = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i393 = getelementptr [72 x i8], ptr %data.i392, i64 %indvars.iv1135
  %dependencies_ptr42 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i393, i64 56
  %data.i394 = load ptr, ptr %dependencies_ptr42, align 8
  %15 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i393, i64 64
  %size.i395 = load i32, ptr %15, align 8
  %icmple.i401.not1057 = icmp sgt i32 %size.i395, 0
  br i1 %icmple.i401.not1057, label %foreach.body48.lr.ph, label %foreach.end49

foreach.body48.lr.ph:                             ; preds = %for.body34
  %lval_ptr_arr_addr.i420 = getelementptr [4 x i8], ptr %remaining.sroa.0.0.lcssa, i64 %indvars.iv1135
  %wide.trip.count1133 = zext nneg i32 %size.i395 to i64
  %xtraiter = and i64 %wide.trip.count1133, 1
  %16 = icmp eq i32 %size.i395, 1
  br i1 %16, label %foreach.body48.epil.preheader, label %foreach.body48.lr.ph.new

foreach.body48.lr.ph.new:                         ; preds = %foreach.body48.lr.ph
  %unroll_iter = and i64 %wide.trip.count1133, 2147483646
  br label %foreach.body48

foreach.body48:                                   ; preds = %ifcont59.1, %foreach.body48.lr.ph.new
  %indvars.iv1130 = phi i64 [ 0, %foreach.body48.lr.ph.new ], [ %indvars.iv.next1131.1, %ifcont59.1 ]
  %niter = phi i64 [ 0, %foreach.body48.lr.ph.new ], [ %niter.next.1, %ifcont59.1 ]
  %ptr_arr_addr5.i411 = getelementptr [8 x i8], ptr %data.i394, i64 %indvars.iv1130
  %common.ret.op.i412 = load ptr, ptr %ptr_arr_addr5.i411, align 8
  %data.i417 = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i418 = getelementptr [72 x i8], ptr %data.i417, i64 %indvars.iv1140
  %targetName57 = load ptr, ptr %lval_ptr_arr_addr.i418, align 8
  %ptr_eq = icmp eq ptr %common.ret.op.i412, %targetName57
  br i1 %ptr_eq, label %then58, label %ifcont59

foreach.end49.loopexit.unr-lcssa:                 ; preds = %ifcont59.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %foreach.end49, label %foreach.body48.epil.preheader

foreach.body48.epil.preheader:                    ; preds = %foreach.end49.loopexit.unr-lcssa, %foreach.body48.lr.ph
  %indvars.iv1130.epil.init = phi i64 [ 0, %foreach.body48.lr.ph ], [ %indvars.iv.next1131.1, %foreach.end49.loopexit.unr-lcssa ]
  %lcmp.mod1260 = trunc i32 %size.i395 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1260)
  %ptr_arr_addr5.i411.epil = getelementptr [8 x i8], ptr %data.i394, i64 %indvars.iv1130.epil.init
  %common.ret.op.i412.epil = load ptr, ptr %ptr_arr_addr5.i411.epil, align 8
  %data.i417.epil = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i418.epil = getelementptr [72 x i8], ptr %data.i417.epil, i64 %indvars.iv1140
  %targetName57.epil = load ptr, ptr %lval_ptr_arr_addr.i418.epil, align 8
  %ptr_eq.epil = icmp eq ptr %common.ret.op.i412.epil, %targetName57.epil
  br i1 %ptr_eq.epil, label %then58.epil, label %foreach.end49

then58.epil:                                      ; preds = %foreach.body48.epil.preheader
  %inc_deref62.epil = load i32, ptr %lval_ptr_arr_addr.i420, align 4
  %dec.epil = add i32 %inc_deref62.epil, -1
  store i32 %dec.epil, ptr %lval_ptr_arr_addr.i420, align 4
  br label %foreach.end49

foreach.end49:                                    ; preds = %foreach.end49.loopexit.unr-lcssa, %then58.epil, %foreach.body48.epil.preheader, %for.body34
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 1
  %exitcond1139.not = icmp eq i64 %indvars.iv.next1136, %wide.trip.count1143
  br i1 %exitcond1139.not, label %for.inc19, label %for.body34

then58:                                           ; preds = %foreach.body48
  %inc_deref62 = load i32, ptr %lval_ptr_arr_addr.i420, align 4
  %dec = add i32 %inc_deref62, -1
  store i32 %dec, ptr %lval_ptr_arr_addr.i420, align 4
  br label %ifcont59

ifcont59:                                         ; preds = %then58, %foreach.body48
  %indvars.iv.next1131.1 = add nuw nsw i64 %indvars.iv1130, 2
  %17 = getelementptr [8 x i8], ptr %data.i394, i64 %indvars.iv1130
  %ptr_arr_addr5.i411.1 = getelementptr i8, ptr %17, i64 8
  %common.ret.op.i412.1 = load ptr, ptr %ptr_arr_addr5.i411.1, align 8
  %data.i417.1 = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i418.1 = getelementptr [72 x i8], ptr %data.i417.1, i64 %indvars.iv1140
  %targetName57.1 = load ptr, ptr %lval_ptr_arr_addr.i418.1, align 8
  %ptr_eq.1 = icmp eq ptr %common.ret.op.i412.1, %targetName57.1
  br i1 %ptr_eq.1, label %then58.1, label %ifcont59.1

then58.1:                                         ; preds = %ifcont59
  %inc_deref62.1 = load i32, ptr %lval_ptr_arr_addr.i420, align 4
  %dec.1 = add i32 %inc_deref62.1, -1
  store i32 %dec.1, ptr %lval_ptr_arr_addr.i420, align 4
  br label %ifcont59.1

ifcont59.1:                                       ; preds = %then58.1, %ifcont59
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %foreach.end49.loopexit.unr-lcssa, label %foreach.body48

then67:                                           ; preds = %while.body, %for.end20
  %order.sroa.0.1.lcssa1179 = phi ptr [ %order.sroa.0.2, %for.end20 ], [ %order.sroa.0.0, %while.body ]
  tail call fastcc void @qc_print_string(ptr nonnull @10)
  tail call fastcc void @qc_free(ptr %order.sroa.0.1.lcssa1179)
  tail call fastcc void @qc_free(ptr %done.sroa.0.0.lcssa)
  tail call fastcc void @qc_free(ptr %remaining.sroa.0.0.lcssa)
  br label %common.ret

"Vector::Vec<char*>_operator[]=_T*_addr_t.exit":  ; preds = %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit.lr.ph", %ifcont152
  %indvars.iv1164 = phi i64 [ 0, %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit.lr.ph" ], [ %indvars.iv.next1165, %ifcont152 ]
  %lval_ptr_arr_addr.i432 = getelementptr [4 x i8], ptr %order.sroa.0.0, i64 %indvars.iv1164
  %18 = load i64, ptr %lval_ptr_arr_addr.i432, align 8
  %data.i433 = load ptr, ptr %1, align 8
  %lval_ptr_arr_addr.i434 = getelementptr [72 x i8], ptr %data.i433, i64 %18
  %strip_ref.unpack = load ptr, ptr %lval_ptr_arr_addr.i434, align 8
  %strip_ref.elt275 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 8
  %strip_ref.unpack276 = load ptr, ptr %strip_ref.elt275, align 8
  %strip_ref.elt277 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 16
  %strip_ref.unpack278.unpack = load ptr, ptr %strip_ref.elt277, align 8
  %strip_ref.unpack278.elt286 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 24
  %strip_ref.unpack278.unpack287 = load i32, ptr %strip_ref.unpack278.elt286, align 8
  %strip_ref.elt279 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 32
  %strip_ref.unpack280 = load ptr, ptr %strip_ref.elt279, align 8
  %strip_ref.elt281 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 40
  %strip_ref.unpack282.unpack = load ptr, ptr %strip_ref.elt281, align 8
  %strip_ref.unpack282.elt291 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i434, i64 48
  %strip_ref.unpack282.unpack292 = load i32, ptr %strip_ref.unpack282.elt291, align 8
  %builtin_call.i = call fastcc ptr @qc_malloc(i64 8)
  store ptr %strip_ref.unpack276, ptr %builtin_call.i, align 8
  %ptr_eq82 = icmp eq ptr %strip_ref.unpack276, @.str.99
  br i1 %ptr_eq82, label %foreach.cond86.preheader.split, label %foreach.cond121.preheader.split

foreach.cond121.preheader.split:                  ; preds = %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit"
  %icmple.i808.not1070 = icmp sgt i32 %strip_ref.unpack282.unpack292, 0
  br i1 %icmple.i808.not1070, label %foreach.body122.preheader, label %ifcont84

foreach.body122.preheader:                        ; preds = %foreach.cond121.preheader.split
  %wide.trip.count1148 = zext nneg i32 %strip_ref.unpack282.unpack292 to i64
  br label %foreach.body122

foreach.cond86.preheader.split:                   ; preds = %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit"
  %icmple.i588.not1078 = icmp sgt i32 %strip_ref.unpack278.unpack287, 0
  br i1 %icmple.i588.not1078, label %foreach.body87.preheader, label %foreach.cond93.preheader.split

foreach.body87.preheader:                         ; preds = %foreach.cond86.preheader.split
  %wide.trip.count1153 = zext nneg i32 %strip_ref.unpack278.unpack287 to i64
  br label %foreach.body87

for.end74:                                        ; preds = %ifcont152, %while.end
  %calltmp185 = call i64 @"CQB::Engine::nowMs"()
  %sub186 = add i64 %add.i.neg, %calltmp185
  %19 = sext i32 %order.sroa.15.0 to i64
  call fastcc void @qc_print_string(ptr nonnull @19)
  call fastcc void @qc_fmt_int(i64 %19, i32 -1, i1 false)
  %sdiv188 = sdiv i64 %sub186, 1000
  call fastcc void @qc_print_string(ptr nonnull @20)
  call fastcc void @qc_fmt_int(i64 %sdiv188, i32 -1, i1 false)
  %srem190 = srem i64 %sub186, 1000
  call fastcc void @qc_print_string(ptr nonnull @21)
  call fastcc void @qc_fmt_int(i64 %srem190, i32 3, i1 true)
  call fastcc void @qc_print_string(ptr nonnull @22)
  %buildDone_ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i1 true, ptr %buildDone_ptr, align 1
  call fastcc void @qc_free(ptr %order.sroa.0.0)
  call fastcc void @qc_free(ptr %done.sroa.0.0.lcssa)
  call fastcc void @qc_free(ptr %remaining.sroa.0.0.lcssa)
  br label %common.ret

ifcont84:                                         ; preds = %"Vector::Vec<char*>_push_T.exit855", %foreach.cond121.preheader.split, %ifcont.i793, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800", %then.i.i804, %foreach.end106
  %comm.sroa.0.0 = phi ptr [ %comm.sroa.0.11, %foreach.end106 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ], [ %comm.sroa.0.12, %ifcont.i793 ], [ null, %then.i.i804 ], [ %builtin_call.i, %foreach.cond121.preheader.split ], [ %comm.sroa.0.15, %"Vector::Vec<char*>_push_T.exit855" ]
  %comm.sroa.32.0 = phi i32 [ %comm.sroa.32.15, %foreach.end106 ], [ %comm.sroa.32.15, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ], [ %inc.i798, %ifcont.i793 ], [ 0, %then.i.i804 ], [ 1, %foreach.cond121.preheader.split ], [ %comm.sroa.32.21, %"Vector::Vec<char*>_push_T.exit855" ]
  %comm.sroa.74.0 = phi i32 [ %comm.sroa.74.11, %foreach.end106 ], [ %comm.sroa.74.11, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ], [ %comm.sroa.74.12, %ifcont.i793 ], [ 0, %then.i.i804 ], [ 1, %foreach.cond121.preheader.split ], [ %comm.sroa.74.15, %"Vector::Vec<char*>_push_T.exit855" ]
  %builtin_call.i462 = call fastcc ptr @qc_malloc(i64 2)
  store i16 91, ptr %builtin_call.i462, align 1
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1
  %20 = trunc nuw nsw i64 %indvars.iv.next1165 to i32
  %21 = call %"String::Str" @"String::toStr<int>"(i32 %20)
  %.fca.0.extract = extractvalue %"String::Str" %21, 0
  %.fca.1.extract = extractvalue %"String::Str" %21, 1
  %22 = call %"String::Str" @"String::toStr<int>"(i32 %order.sroa.15.0)
  %.fca.0.extract261 = extractvalue %"String::Str" %22, 0
  %.fca.1.extract263 = extractvalue %"String::Str" %22, 1
  %add.i465 = add i64 %.fca.1.extract, 1
  %add2.i = add i64 %.fca.1.extract, 2
  %builtin_call.i467 = call fastcc ptr @qc_realloc(ptr nonnull %builtin_call.i462, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %.fca.1.extract, 0
  br i1 %icmplt27.i, label %for.body.i469.preheader, label %"String::Str_operator+=_Str.exit"

for.body.i469.preheader:                          ; preds = %ifcont84
  %23 = getelementptr i8, ptr %builtin_call.i467, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %.fca.0.extract, i64 %.fca.1.extract, i1 false)
  br label %"String::Str_operator+=_Str.exit"

"String::Str_operator+=_Str.exit":                ; preds = %for.body.i469.preheader, %ifcont84
  %ptr_arr_asi15.i = getelementptr i8, ptr %builtin_call.i467, i64 %add.i465
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  %builtin_call.i479 = call fastcc ptr @qc_malloc(i64 2)
  store i16 47, ptr %builtin_call.i479, align 1
  %add2.i484 = add i64 %.fca.1.extract, 3
  %builtin_call.i485 = call fastcc ptr @qc_realloc(ptr %builtin_call.i467, i64 %add2.i484)
  %24 = getelementptr i8, ptr %builtin_call.i485, i64 %add.i465
  store i8 47, ptr %24, align 1
  %ptr_arr_asi15.i489 = getelementptr i8, ptr %builtin_call.i485, i64 %add2.i
  store i8 0, ptr %ptr_arr_asi15.i489, align 1
  %add.i507 = add i64 %add2.i, %.fca.1.extract263
  %add2.i509 = add i64 %add.i507, 1
  %builtin_call.i510 = call fastcc ptr @qc_realloc(ptr %builtin_call.i485, i64 %add2.i509)
  %icmplt27.i511 = icmp sgt i64 %.fca.1.extract263, 0
  br i1 %icmplt27.i511, label %for.body.i519.preheader, label %"String::Str_operator+=_Str.exit530"

for.body.i519.preheader:                          ; preds = %"String::Str_operator+=_Str.exit"
  %25 = getelementptr i8, ptr %builtin_call.i510, i64 %add2.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %.fca.0.extract261, i64 %.fca.1.extract263, i1 false)
  br label %"String::Str_operator+=_Str.exit530"

"String::Str_operator+=_Str.exit530":             ; preds = %for.body.i519.preheader, %"String::Str_operator+=_Str.exit"
  %ptr_arr_asi15.i514 = getelementptr i8, ptr %builtin_call.i510, i64 %add.i507
  store i8 0, ptr %ptr_arr_asi15.i514, align 1
  %builtin_call.i534 = call fastcc ptr @qc_malloc(i64 2)
  store i16 93, ptr %builtin_call.i534, align 1
  %add2.i539 = add i64 %add.i507, 2
  %builtin_call.i540 = call fastcc ptr @qc_realloc(ptr %builtin_call.i510, i64 %add2.i539)
  %26 = getelementptr i8, ptr %builtin_call.i540, i64 %add.i507
  store i8 93, ptr %26, align 1
  %ptr_arr_asi15.i544 = getelementptr i8, ptr %26, i64 1
  store i8 0, ptr %ptr_arr_asi15.i544, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i561)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i561, i8 0, i64 16, i1 false)
  %calltmp.i563 = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i561)
  %tv_sec.i564 = load i64, ptr %ts.i561, align 8
  %tv_nsec.i566 = load i64, ptr %.fca.1.gep.i562, align 8
  %sdiv.i567.neg = sdiv i64 %tv_nsec.i566, -1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i561)
  %comm140.fca.0.insert = insertvalue %"Vector::Vec<char*>" poison, ptr %comm.sroa.0.0, 0
  %comm140.fca.1.insert = insertvalue %"Vector::Vec<char*>" %comm140.fca.0.insert, i32 %comm.sroa.32.0, 1
  %comm140.fca.2.insert = insertvalue %"Vector::Vec<char*>" %comm140.fca.1.insert, i32 %comm.sroa.74.0, 2
  %"CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.0.tty" = load i1, ptr %"CQB::Engine::tty.sroa.0", align 1
  %calltmp141 = call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %comm140.fca.2.insert, ptr %builtin_call.i540, i1 %"CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.0.tty")
  %calltmp141.fca.0.extract = extractvalue %"CQB::Engine::RunResult" %calltmp141, 0
  %calltmp141.fca.1.extract = extractvalue %"CQB::Engine::RunResult" %calltmp141, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i570)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i570, i8 0, i64 16, i1 false)
  %calltmp.i572 = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i570)
  %tv_sec.i573 = load i64, ptr %ts.i570, align 8
  %tv_nsec.i575 = load i64, ptr %.fca.1.gep.i571, align 8
  %sdiv.i576 = sdiv i64 %tv_nsec.i575, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i570)
  %reass.add = sub i64 %tv_sec.i573, %tv_sec.i564
  %reass.mul = mul i64 %reass.add, 1000
  %add.i568.neg = add nsw i64 %sdiv.i576, %sdiv.i567.neg
  %sub = add i64 %add.i568.neg, %reass.mul
  call fastcc void @qc_free(ptr %comm.sroa.0.0)
  %"CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.0.tty143" = load i1, ptr %"CQB::Engine::tty.sroa.0", align 1
  br i1 %"CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.sroa.0.0.CQB::Engine::tty.0.tty143", label %then144, label %ifcont145

foreach.cond93.preheader.split:                   ; preds = %"Vector::Vec<char*>_push_T.exit", %foreach.cond86.preheader.split
  %comm.sroa.0.1.lcssa = phi ptr [ %builtin_call.i, %foreach.cond86.preheader.split ], [ %comm.sroa.0.5, %"Vector::Vec<char*>_push_T.exit" ]
  %comm.sroa.32.1.lcssa = phi i32 [ 1, %foreach.cond86.preheader.split ], [ %comm.sroa.32.6, %"Vector::Vec<char*>_push_T.exit" ]
  %comm.sroa.74.1.lcssa = phi i32 [ 1, %foreach.cond86.preheader.split ], [ %comm.sroa.74.5, %"Vector::Vec<char*>_push_T.exit" ]
  %icmple.i639.not1086 = icmp sgt i32 %strip_ref.unpack282.unpack292, 0
  br i1 %icmple.i639.not1086, label %foreach.body94.preheader, label %foreach.end95

foreach.body94.preheader:                         ; preds = %foreach.cond93.preheader.split
  %wide.trip.count1158 = zext nneg i32 %strip_ref.unpack282.unpack292 to i64
  br label %foreach.body94

foreach.body87:                                   ; preds = %foreach.body87.preheader, %"Vector::Vec<char*>_push_T.exit"
  %indvars.iv1150 = phi i64 [ 0, %foreach.body87.preheader ], [ %indvars.iv.next1151, %"Vector::Vec<char*>_push_T.exit" ]
  %comm.sroa.74.11082 = phi i32 [ 1, %foreach.body87.preheader ], [ %comm.sroa.74.5, %"Vector::Vec<char*>_push_T.exit" ]
  %comm.sroa.32.11081 = phi i32 [ 1, %foreach.body87.preheader ], [ %comm.sroa.32.6, %"Vector::Vec<char*>_push_T.exit" ]
  %comm.sroa.0.11080 = phi ptr [ %builtin_call.i, %foreach.body87.preheader ], [ %comm.sroa.0.5, %"Vector::Vec<char*>_push_T.exit" ]
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 1
  %ptr_arr_addr5.i598 = getelementptr [8 x i8], ptr %strip_ref.unpack278.unpack, i64 %indvars.iv1150
  %common.ret.op.i599 = load ptr, ptr %ptr_arr_addr5.i598, align 8
  %icmple.not.i606 = icmp sgt i32 %comm.sroa.74.11082, %comm.sroa.32.11081
  br i1 %icmple.not.i606, label %ifcont.i622, label %then.i608

then.i608:                                        ; preds = %foreach.body87
  %icmpeq.i609 = icmp eq i32 %comm.sroa.74.11082, 0
  %mul.i610 = shl i32 %comm.sroa.74.11082, 1
  %select_val.i611 = select i1 %icmpeq.i609, i32 1, i32 %mul.i610
  %icmpeq.i.i612 = icmp eq i32 %select_val.i611, 0
  br i1 %icmpeq.i.i612, label %then.i.i631, label %ifcont.i.i613

then.i.i631:                                      ; preds = %then.i608
  call fastcc void @qc_free(ptr %comm.sroa.0.11080)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i613:                                    ; preds = %then.i608
  %promote_int.i.i614 = sext i32 %select_val.i611 to i64
  %mul.i.i615 = shl nsw i64 %promote_int.i.i614, 3
  %builtin_call.i.i616 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.11080, i64 %mul.i.i615)
  %ptr_eq.i.i617 = icmp eq ptr %builtin_call.i.i616, null
  br i1 %ptr_eq.i.i617, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i618

ifcont5.i.i618:                                   ; preds = %ifcont.i.i613
  %spec.select996 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.11081, i32 %select_val.i611)
  br label %ifcont.i622

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i613
  %27 = icmp eq ptr %comm.sroa.0.11080, null
  br i1 %27, label %"Vector::Vec<char*>_push_T.exit", label %ifcont.i622

ifcont.i622:                                      ; preds = %ifcont5.i.i618, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %foreach.body87
  %comm.sroa.0.4 = phi ptr [ %comm.sroa.0.11080, %foreach.body87 ], [ %builtin_call.i.i616, %ifcont5.i.i618 ], [ %comm.sroa.0.11080, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %comm.sroa.32.5 = phi i32 [ %comm.sroa.32.11081, %foreach.body87 ], [ %spec.select996, %ifcont5.i.i618 ], [ %comm.sroa.32.11081, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %comm.sroa.74.4 = phi i32 [ %comm.sroa.74.11082, %foreach.body87 ], [ %select_val.i611, %ifcont5.i.i618 ], [ %comm.sroa.74.11082, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %28 = sext i32 %comm.sroa.32.5 to i64
  %ptr_arr_asi.i625 = getelementptr [8 x i8], ptr %comm.sroa.0.4, i64 %28
  store ptr %common.ret.op.i599, ptr %ptr_arr_asi.i625, align 8
  %inc.i627 = add i32 %comm.sroa.32.5, 1
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i631, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i622
  %comm.sroa.0.5 = phi ptr [ %comm.sroa.0.4, %ifcont.i622 ], [ null, %then.i.i631 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %comm.sroa.32.6 = phi i32 [ %inc.i627, %ifcont.i622 ], [ 0, %then.i.i631 ], [ %comm.sroa.32.11081, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %comm.sroa.74.5 = phi i32 [ %comm.sroa.74.4, %ifcont.i622 ], [ 0, %then.i.i631 ], [ %comm.sroa.74.11082, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %exitcond1154.not = icmp eq i64 %indvars.iv.next1151, %wide.trip.count1153
  br i1 %exitcond1154.not, label %foreach.cond93.preheader.split, label %foreach.body87

foreach.body94:                                   ; preds = %foreach.body94.preheader, %"Vector::Vec<char*>_push_T.exit686"
  %indvars.iv1155 = phi i64 [ 0, %foreach.body94.preheader ], [ %indvars.iv.next1156, %"Vector::Vec<char*>_push_T.exit686" ]
  %comm.sroa.74.21090 = phi i32 [ %comm.sroa.74.1.lcssa, %foreach.body94.preheader ], [ %comm.sroa.74.7, %"Vector::Vec<char*>_push_T.exit686" ]
  %comm.sroa.32.21089 = phi i32 [ %comm.sroa.32.1.lcssa, %foreach.body94.preheader ], [ %comm.sroa.32.9, %"Vector::Vec<char*>_push_T.exit686" ]
  %comm.sroa.0.21088 = phi ptr [ %comm.sroa.0.1.lcssa, %foreach.body94.preheader ], [ %comm.sroa.0.7, %"Vector::Vec<char*>_push_T.exit686" ]
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 1
  %ptr_arr_addr5.i649 = getelementptr [8 x i8], ptr %strip_ref.unpack282.unpack, i64 %indvars.iv1155
  %common.ret.op.i650 = load ptr, ptr %ptr_arr_addr5.i649, align 8
  %icmple.not.i657 = icmp sgt i32 %comm.sroa.74.21090, %comm.sroa.32.21089
  br i1 %icmple.not.i657, label %ifcont.i674, label %then.i659

then.i659:                                        ; preds = %foreach.body94
  %icmpeq.i660 = icmp eq i32 %comm.sroa.74.21090, 0
  %mul.i661 = shl i32 %comm.sroa.74.21090, 1
  %select_val.i662 = select i1 %icmpeq.i660, i32 1, i32 %mul.i661
  %icmpeq.i.i663 = icmp eq i32 %select_val.i662, 0
  br i1 %icmpeq.i.i663, label %then.i.i685, label %ifcont.i.i664

then.i.i685:                                      ; preds = %then.i659
  call fastcc void @qc_free(ptr %comm.sroa.0.21088)
  br label %"Vector::Vec<char*>_push_T.exit686"

ifcont.i.i664:                                    ; preds = %then.i659
  %promote_int.i.i665 = sext i32 %select_val.i662 to i64
  %mul.i.i666 = shl nsw i64 %promote_int.i.i665, 3
  %builtin_call.i.i667 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.21088, i64 %mul.i.i666)
  %ptr_eq.i.i668 = icmp eq ptr %builtin_call.i.i667, null
  br i1 %ptr_eq.i.i668, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681", label %ifcont5.i.i669

ifcont5.i.i669:                                   ; preds = %ifcont.i.i664
  %spec.select998 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.21089, i32 %select_val.i662)
  br label %ifcont.i674

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681": ; preds = %ifcont.i.i664
  %29 = icmp eq ptr %comm.sroa.0.21088, null
  br i1 %29, label %"Vector::Vec<char*>_push_T.exit686", label %ifcont.i674

ifcont.i674:                                      ; preds = %ifcont5.i.i669, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681", %foreach.body94
  %comm.sroa.0.6 = phi ptr [ %comm.sroa.0.21088, %foreach.body94 ], [ %builtin_call.i.i667, %ifcont5.i.i669 ], [ %comm.sroa.0.21088, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %comm.sroa.32.8 = phi i32 [ %comm.sroa.32.21089, %foreach.body94 ], [ %spec.select998, %ifcont5.i.i669 ], [ %comm.sroa.32.21089, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %comm.sroa.74.6 = phi i32 [ %comm.sroa.74.21090, %foreach.body94 ], [ %select_val.i662, %ifcont5.i.i669 ], [ %comm.sroa.74.21090, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %30 = sext i32 %comm.sroa.32.8 to i64
  %ptr_arr_asi.i677 = getelementptr [8 x i8], ptr %comm.sroa.0.6, i64 %30
  store ptr %common.ret.op.i650, ptr %ptr_arr_asi.i677, align 8
  %inc.i679 = add i32 %comm.sroa.32.8, 1
  br label %"Vector::Vec<char*>_push_T.exit686"

"Vector::Vec<char*>_push_T.exit686":              ; preds = %then.i.i685, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681", %ifcont.i674
  %comm.sroa.0.7 = phi ptr [ %comm.sroa.0.6, %ifcont.i674 ], [ null, %then.i.i685 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %comm.sroa.32.9 = phi i32 [ %inc.i679, %ifcont.i674 ], [ 0, %then.i.i685 ], [ %comm.sroa.32.21089, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %comm.sroa.74.7 = phi i32 [ %comm.sroa.74.6, %ifcont.i674 ], [ 0, %then.i.i685 ], [ %comm.sroa.74.21090, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i681" ]
  %exitcond1159.not = icmp eq i64 %indvars.iv.next1156, %wide.trip.count1158
  br i1 %exitcond1159.not, label %foreach.end95, label %foreach.body94

foreach.end95:                                    ; preds = %"Vector::Vec<char*>_push_T.exit686", %foreach.cond93.preheader.split
  %comm.sroa.0.2.lcssa = phi ptr [ %comm.sroa.0.1.lcssa, %foreach.cond93.preheader.split ], [ %comm.sroa.0.7, %"Vector::Vec<char*>_push_T.exit686" ]
  %comm.sroa.32.2.lcssa = phi i32 [ %comm.sroa.32.1.lcssa, %foreach.cond93.preheader.split ], [ %comm.sroa.32.9, %"Vector::Vec<char*>_push_T.exit686" ]
  %comm.sroa.74.2.lcssa = phi i32 [ %comm.sroa.74.1.lcssa, %foreach.cond93.preheader.split ], [ %comm.sroa.74.7, %"Vector::Vec<char*>_push_T.exit686" ]
  %icmple.not.i689 = icmp sgt i32 %comm.sroa.74.2.lcssa, %comm.sroa.32.2.lcssa
  br i1 %icmple.not.i689, label %ifcont.i706, label %then.i691

then.i691:                                        ; preds = %foreach.end95
  %icmpeq.i692 = icmp eq i32 %comm.sroa.74.2.lcssa, 0
  %mul.i693 = shl i32 %comm.sroa.74.2.lcssa, 1
  %select_val.i694 = select i1 %icmpeq.i692, i32 1, i32 %mul.i693
  %icmpeq.i.i695 = icmp eq i32 %select_val.i694, 0
  br i1 %icmpeq.i.i695, label %then.i723.thread, label %ifcont.i.i696

then.i723.thread:                                 ; preds = %then.i691
  call fastcc void @qc_free(ptr %comm.sroa.0.2.lcssa)
  br label %ifcont.i.i728

ifcont.i.i696:                                    ; preds = %then.i691
  %promote_int.i.i697 = sext i32 %select_val.i694 to i64
  %mul.i.i698 = shl nsw i64 %promote_int.i.i697, 3
  %builtin_call.i.i699 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.2.lcssa, i64 %mul.i.i698)
  %ptr_eq.i.i700 = icmp eq ptr %builtin_call.i.i699, null
  br i1 %ptr_eq.i.i700, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713", label %ifcont5.i.i701

ifcont5.i.i701:                                   ; preds = %ifcont.i.i696
  %spec.select1000 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.2.lcssa, i32 %select_val.i694)
  br label %ifcont.i706

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713": ; preds = %ifcont.i.i696
  %31 = icmp eq ptr %comm.sroa.0.2.lcssa, null
  br i1 %31, label %"Vector::Vec<char*>_push_T.exit718", label %ifcont.i706

ifcont.i706:                                      ; preds = %ifcont5.i.i701, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713", %foreach.end95
  %comm.sroa.0.8 = phi ptr [ %comm.sroa.0.2.lcssa, %foreach.end95 ], [ %builtin_call.i.i699, %ifcont5.i.i701 ], [ %comm.sroa.0.2.lcssa, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %comm.sroa.32.11 = phi i32 [ %comm.sroa.32.2.lcssa, %foreach.end95 ], [ %spec.select1000, %ifcont5.i.i701 ], [ %comm.sroa.32.2.lcssa, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %comm.sroa.74.8 = phi i32 [ %comm.sroa.74.2.lcssa, %foreach.end95 ], [ %select_val.i694, %ifcont5.i.i701 ], [ %comm.sroa.74.2.lcssa, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %32 = sext i32 %comm.sroa.32.11 to i64
  %ptr_arr_asi.i709 = getelementptr [8 x i8], ptr %comm.sroa.0.8, i64 %32
  store ptr @.str.100, ptr %ptr_arr_asi.i709, align 8
  %inc.i711 = add i32 %comm.sroa.32.11, 1
  br label %"Vector::Vec<char*>_push_T.exit718"

"Vector::Vec<char*>_push_T.exit718":              ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713", %ifcont.i706
  %comm.sroa.0.9 = phi ptr [ %comm.sroa.0.8, %ifcont.i706 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %comm.sroa.32.12 = phi i32 [ %inc.i711, %ifcont.i706 ], [ %comm.sroa.32.2.lcssa, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %comm.sroa.74.9 = phi i32 [ %comm.sroa.74.8, %ifcont.i706 ], [ %comm.sroa.74.2.lcssa, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i713" ]
  %comm.sroa.74.9.fr = freeze i32 %comm.sroa.74.9
  %icmple.not.i721 = icmp sgt i32 %comm.sroa.74.9.fr, %comm.sroa.32.12
  br i1 %icmple.not.i721, label %ifcont.i738, label %then.i723

then.i723:                                        ; preds = %"Vector::Vec<char*>_push_T.exit718"
  %icmpeq.i724 = icmp eq i32 %comm.sroa.74.9.fr, 0
  br i1 %icmpeq.i724, label %ifcont.i.i728, label %33

33:                                               ; preds = %then.i723
  %mul.i725 = shl i32 %comm.sroa.74.9.fr, 1
  %icmpeq.i.i727 = icmp eq i32 %mul.i725, 0
  br i1 %icmpeq.i.i727, label %then.i.i749, label %ifcont.i.i728

then.i.i749:                                      ; preds = %33
  call fastcc void @qc_free(ptr %comm.sroa.0.9)
  br label %"Vector::Vec<char*>_push_T.exit750"

ifcont.i.i728:                                    ; preds = %then.i723, %then.i723.thread, %33
  %34 = phi i32 [ %mul.i725, %33 ], [ 1, %then.i723.thread ], [ 1, %then.i723 ]
  %comm.sroa.74.9969976988 = phi i32 [ %comm.sroa.74.9.fr, %33 ], [ 0, %then.i723.thread ], [ 0, %then.i723 ]
  %comm.sroa.32.12968978987 = phi i32 [ %comm.sroa.32.12, %33 ], [ 0, %then.i723.thread ], [ %comm.sroa.32.12, %then.i723 ]
  %comm.sroa.0.9967980986 = phi ptr [ %comm.sroa.0.9, %33 ], [ null, %then.i723.thread ], [ %comm.sroa.0.9, %then.i723 ]
  %promote_int.i.i729 = sext i32 %34 to i64
  %mul.i.i730 = shl nsw i64 %promote_int.i.i729, 3
  %builtin_call.i.i731 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.9967980986, i64 %mul.i.i730)
  %ptr_eq.i.i732 = icmp eq ptr %builtin_call.i.i731, null
  br i1 %ptr_eq.i.i732, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745", label %ifcont5.i.i733

ifcont5.i.i733:                                   ; preds = %ifcont.i.i728
  %spec.select1002 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.12968978987, i32 %34)
  br label %ifcont.i738

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745": ; preds = %ifcont.i.i728
  %35 = icmp eq ptr %comm.sroa.0.9967980986, null
  br i1 %35, label %"Vector::Vec<char*>_push_T.exit750", label %ifcont.i738

ifcont.i738:                                      ; preds = %ifcont5.i.i733, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745", %"Vector::Vec<char*>_push_T.exit718"
  %comm.sroa.0.10 = phi ptr [ %comm.sroa.0.9, %"Vector::Vec<char*>_push_T.exit718" ], [ %builtin_call.i.i731, %ifcont5.i.i733 ], [ %comm.sroa.0.9967980986, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  %comm.sroa.32.14 = phi i32 [ %comm.sroa.32.12, %"Vector::Vec<char*>_push_T.exit718" ], [ %spec.select1002, %ifcont5.i.i733 ], [ %comm.sroa.32.12968978987, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  %comm.sroa.74.10 = phi i32 [ %comm.sroa.74.9.fr, %"Vector::Vec<char*>_push_T.exit718" ], [ %34, %ifcont5.i.i733 ], [ %comm.sroa.74.9969976988, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  %36 = sext i32 %comm.sroa.32.14 to i64
  %ptr_arr_asi.i741 = getelementptr [8 x i8], ptr %comm.sroa.0.10, i64 %36
  store ptr %strip_ref.unpack280, ptr %ptr_arr_asi.i741, align 8
  %inc.i743 = add i32 %comm.sroa.32.14, 1
  br label %"Vector::Vec<char*>_push_T.exit750"

"Vector::Vec<char*>_push_T.exit750":              ; preds = %then.i.i749, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745", %ifcont.i738
  %comm.sroa.0.11 = phi ptr [ %comm.sroa.0.10, %ifcont.i738 ], [ null, %then.i.i749 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  %comm.sroa.32.15 = phi i32 [ %inc.i743, %ifcont.i738 ], [ 0, %then.i.i749 ], [ %comm.sroa.32.12968978987, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  %comm.sroa.74.11 = phi i32 [ %comm.sroa.74.10, %ifcont.i738 ], [ 0, %then.i.i749 ], [ %comm.sroa.74.9969976988, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i745" ]
  br i1 %icmple.i639.not1086, label %foreach.body105.preheader, label %then114

foreach.body105.preheader:                        ; preds = %"Vector::Vec<char*>_push_T.exit750"
  %wide.trip.count1162 = zext nneg i32 %strip_ref.unpack282.unpack292 to i64
  %min.iters.check = icmp ult i32 %strip_ref.unpack282.unpack292, 4
  br i1 %min.iters.check, label %foreach.body105.preheader1233, label %vector.ph

vector.ph:                                        ; preds = %foreach.body105.preheader
  %n.vec = and i64 %wide.trip.count1162, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %41, %vector.body ]
  %vec.phi1231 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %42, %vector.body ]
  %37 = getelementptr [8 x i8], ptr %strip_ref.unpack282.unpack, i64 %index
  %38 = getelementptr i8, ptr %37, i64 16
  %wide.load = load <2 x ptr>, ptr %37, align 8
  %wide.load1232 = load <2 x ptr>, ptr %38, align 8
  %39 = icmp eq <2 x ptr> %wide.load, <ptr @.str.101, ptr @.str.101>
  %40 = icmp eq <2 x ptr> %wide.load1232, <ptr @.str.101, ptr @.str.101>
  %41 = or <2 x i1> %vec.phi, %39
  %42 = or <2 x i1> %vec.phi1231, %40
  %index.next = add nuw i64 %index, 4
  %43 = icmp eq i64 %index.next, %n.vec
  br i1 %43, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %42, %41
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %44 = bitcast <2 x i1> %bin.rdx.fr to i2
  %45 = icmp ne i2 %44, 0
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1162
  br i1 %cmp.n, label %foreach.end106, label %foreach.body105.preheader1233

foreach.body105.preheader1233:                    ; preds = %foreach.body105.preheader, %middle.block
  %indvars.iv1160.ph = phi i64 [ 0, %foreach.body105.preheader ], [ %n.vec, %middle.block ]
  %.ph = phi i1 [ false, %foreach.body105.preheader ], [ %45, %middle.block ]
  br label %foreach.body105

foreach.body105:                                  ; preds = %foreach.body105.preheader1233, %foreach.body105
  %indvars.iv1160 = phi i64 [ %indvars.iv.next1161, %foreach.body105 ], [ %indvars.iv1160.ph, %foreach.body105.preheader1233 ]
  %46 = phi i1 [ %spec.select1099, %foreach.body105 ], [ %.ph, %foreach.body105.preheader1233 ]
  %indvars.iv.next1161 = add nuw nsw i64 %indvars.iv1160, 1
  %ptr_arr_addr5.i768 = getelementptr [8 x i8], ptr %strip_ref.unpack282.unpack, i64 %indvars.iv1160
  %common.ret.op.i769 = load ptr, ptr %ptr_arr_addr5.i768, align 8
  %ptr_eq110 = icmp eq ptr %common.ret.op.i769, @.str.101
  %spec.select1099 = select i1 %ptr_eq110, i1 true, i1 %46
  %exitcond1163.not = icmp eq i64 %indvars.iv.next1161, %wide.trip.count1162
  br i1 %exitcond1163.not, label %foreach.end106, label %foreach.body105, !llvm.loop !57

foreach.end106:                                   ; preds = %foreach.body105, %middle.block
  %spec.select1099.lcssa = phi i1 [ %45, %middle.block ], [ %spec.select1099, %foreach.body105 ]
  br i1 %spec.select1099.lcssa, label %ifcont84, label %then114

then114:                                          ; preds = %"Vector::Vec<char*>_push_T.exit750", %foreach.end106
  %icmple.not.i776 = icmp sgt i32 %comm.sroa.74.11, %comm.sroa.32.15
  br i1 %icmple.not.i776, label %ifcont.i793, label %then.i778

then.i778:                                        ; preds = %then114
  %icmpeq.i779 = icmp eq i32 %comm.sroa.74.11, 0
  %mul.i780 = shl i32 %comm.sroa.74.11, 1
  %select_val.i781 = select i1 %icmpeq.i779, i32 1, i32 %mul.i780
  %icmpeq.i.i782 = icmp eq i32 %select_val.i781, 0
  br i1 %icmpeq.i.i782, label %then.i.i804, label %ifcont.i.i783

then.i.i804:                                      ; preds = %then.i778
  call fastcc void @qc_free(ptr %comm.sroa.0.11)
  br label %ifcont84

ifcont.i.i783:                                    ; preds = %then.i778
  %promote_int.i.i784 = sext i32 %select_val.i781 to i64
  %mul.i.i785 = shl nsw i64 %promote_int.i.i784, 3
  %builtin_call.i.i786 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.11, i64 %mul.i.i785)
  %ptr_eq.i.i787 = icmp eq ptr %builtin_call.i.i786, null
  br i1 %ptr_eq.i.i787, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800", label %ifcont5.i.i788

ifcont5.i.i788:                                   ; preds = %ifcont.i.i783
  %spec.select1004 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.15, i32 %select_val.i781)
  br label %ifcont.i793

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800": ; preds = %ifcont.i.i783
  %47 = icmp eq ptr %comm.sroa.0.11, null
  br i1 %47, label %ifcont84, label %ifcont.i793

ifcont.i793:                                      ; preds = %ifcont5.i.i788, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800", %then114
  %comm.sroa.0.12 = phi ptr [ %comm.sroa.0.11, %then114 ], [ %builtin_call.i.i786, %ifcont5.i.i788 ], [ %comm.sroa.0.11, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ]
  %comm.sroa.32.17 = phi i32 [ %comm.sroa.32.15, %then114 ], [ %spec.select1004, %ifcont5.i.i788 ], [ %comm.sroa.32.15, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ]
  %comm.sroa.74.12 = phi i32 [ %comm.sroa.74.11, %then114 ], [ %select_val.i781, %ifcont5.i.i788 ], [ %comm.sroa.74.11, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i800" ]
  %48 = sext i32 %comm.sroa.32.17 to i64
  %ptr_arr_asi.i796 = getelementptr [8 x i8], ptr %comm.sroa.0.12, i64 %48
  store ptr @.str.102, ptr %ptr_arr_asi.i796, align 8
  %inc.i798 = add i32 %comm.sroa.32.17, 1
  br label %ifcont84

foreach.body122:                                  ; preds = %foreach.body122.preheader, %"Vector::Vec<char*>_push_T.exit855"
  %indvars.iv1145 = phi i64 [ 0, %foreach.body122.preheader ], [ %indvars.iv.next1146, %"Vector::Vec<char*>_push_T.exit855" ]
  %comm.sroa.74.31074 = phi i32 [ 1, %foreach.body122.preheader ], [ %comm.sroa.74.15, %"Vector::Vec<char*>_push_T.exit855" ]
  %comm.sroa.32.31073 = phi i32 [ 1, %foreach.body122.preheader ], [ %comm.sroa.32.21, %"Vector::Vec<char*>_push_T.exit855" ]
  %comm.sroa.0.31072 = phi ptr [ %builtin_call.i, %foreach.body122.preheader ], [ %comm.sroa.0.15, %"Vector::Vec<char*>_push_T.exit855" ]
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 1
  %ptr_arr_addr5.i818 = getelementptr [8 x i8], ptr %strip_ref.unpack282.unpack, i64 %indvars.iv1145
  %common.ret.op.i819 = load ptr, ptr %ptr_arr_addr5.i818, align 8
  %icmple.not.i826 = icmp sgt i32 %comm.sroa.74.31074, %comm.sroa.32.31073
  br i1 %icmple.not.i826, label %ifcont.i843, label %then.i828

then.i828:                                        ; preds = %foreach.body122
  %icmpeq.i829 = icmp eq i32 %comm.sroa.74.31074, 0
  %mul.i830 = shl i32 %comm.sroa.74.31074, 1
  %select_val.i831 = select i1 %icmpeq.i829, i32 1, i32 %mul.i830
  %icmpeq.i.i832 = icmp eq i32 %select_val.i831, 0
  br i1 %icmpeq.i.i832, label %then.i.i854, label %ifcont.i.i833

then.i.i854:                                      ; preds = %then.i828
  call fastcc void @qc_free(ptr %comm.sroa.0.31072)
  br label %"Vector::Vec<char*>_push_T.exit855"

ifcont.i.i833:                                    ; preds = %then.i828
  %promote_int.i.i834 = sext i32 %select_val.i831 to i64
  %mul.i.i835 = shl nsw i64 %promote_int.i.i834, 3
  %builtin_call.i.i836 = call fastcc ptr @qc_realloc(ptr %comm.sroa.0.31072, i64 %mul.i.i835)
  %ptr_eq.i.i837 = icmp eq ptr %builtin_call.i.i836, null
  br i1 %ptr_eq.i.i837, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850", label %ifcont5.i.i838

ifcont5.i.i838:                                   ; preds = %ifcont.i.i833
  %spec.select1006 = call i32 @llvm.smin.i32(i32 %comm.sroa.32.31073, i32 %select_val.i831)
  br label %ifcont.i843

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850": ; preds = %ifcont.i.i833
  %49 = icmp eq ptr %comm.sroa.0.31072, null
  br i1 %49, label %"Vector::Vec<char*>_push_T.exit855", label %ifcont.i843

ifcont.i843:                                      ; preds = %ifcont5.i.i838, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850", %foreach.body122
  %comm.sroa.0.14 = phi ptr [ %comm.sroa.0.31072, %foreach.body122 ], [ %builtin_call.i.i836, %ifcont5.i.i838 ], [ %comm.sroa.0.31072, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %comm.sroa.32.20 = phi i32 [ %comm.sroa.32.31073, %foreach.body122 ], [ %spec.select1006, %ifcont5.i.i838 ], [ %comm.sroa.32.31073, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %comm.sroa.74.14 = phi i32 [ %comm.sroa.74.31074, %foreach.body122 ], [ %select_val.i831, %ifcont5.i.i838 ], [ %comm.sroa.74.31074, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %50 = sext i32 %comm.sroa.32.20 to i64
  %ptr_arr_asi.i846 = getelementptr [8 x i8], ptr %comm.sroa.0.14, i64 %50
  store ptr %common.ret.op.i819, ptr %ptr_arr_asi.i846, align 8
  %inc.i848 = add i32 %comm.sroa.32.20, 1
  br label %"Vector::Vec<char*>_push_T.exit855"

"Vector::Vec<char*>_push_T.exit855":              ; preds = %then.i.i854, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850", %ifcont.i843
  %comm.sroa.0.15 = phi ptr [ %comm.sroa.0.14, %ifcont.i843 ], [ null, %then.i.i854 ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %comm.sroa.32.21 = phi i32 [ %inc.i848, %ifcont.i843 ], [ 0, %then.i.i854 ], [ %comm.sroa.32.31073, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %comm.sroa.74.15 = phi i32 [ %comm.sroa.74.14, %ifcont.i843 ], [ 0, %then.i.i854 ], [ %comm.sroa.74.31074, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i850" ]
  %exitcond1149.not = icmp eq i64 %indvars.iv.next1146, %wide.trip.count1148
  br i1 %exitcond1149.not, label %ifcont84, label %foreach.body122

then144:                                          ; preds = %"String::Str_operator+=_Str.exit530"
  call fastcc void @qc_print_string(ptr nonnull @11)
  %calltmp146 = call i32 @fflush(ptr null)
  br label %ifcont145

ifcont145:                                        ; preds = %then144, %"String::Str_operator+=_Str.exit530"
  %icmpeq = icmp eq i32 %calltmp141.fca.0.extract, 0
  br i1 %icmpeq, label %then147, label %else149

then147:                                          ; preds = %ifcont145
  %ptr_arr_val42.i = load i8, ptr %calltmp141.fca.1.extract, align 1
  %icmpne.not43.i = icmp eq i8 %ptr_arr_val42.i, 0
  br i1 %icmpne.not43.i, label %else153, label %while.body.i

while.body.i:                                     ; preds = %then147, %while.end11.i
  %ptr_arr_addr46.i = phi ptr [ %ptr_arr_addr.i859, %while.end11.i ], [ %calltmp141.fca.1.extract, %then147 ]
  %"CQB::Engine::n.045.i" = phi i32 [ %spec.select.i, %while.end11.i ], [ 0, %then147 ]
  %"CQB::Engine::i.044.i" = phi i32 [ %spec.select41.i, %while.end11.i ], [ 0, %then147 ]
  %calltmp.i856 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %ptr_arr_addr46.i, ptr noundef nonnull dereferenceable(7) @.str.86, i64 6)
  %icmpeq.i857 = icmp eq i32 %calltmp.i856, 0
  %inc.i858 = zext i1 %icmpeq.i857 to i32
  %spec.select.i = add i32 %"CQB::Engine::n.045.i", %inc.i858
  br label %while.cond9.i

while.cond9.i:                                    ; preds = %while.body10.i, %while.body.i
  %"CQB::Engine::i.1.i" = phi i32 [ %"CQB::Engine::i.044.i", %while.body.i ], [ %inc23.i, %while.body10.i ]
  %51 = sext i32 %"CQB::Engine::i.1.i" to i64
  %ptr_arr_addr14.i = getelementptr i8, ptr %calltmp141.fca.1.extract, i64 %51
  %ptr_arr_val15.i = load i8, ptr %ptr_arr_addr14.i, align 1
  switch i8 %ptr_arr_val15.i, label %while.body10.i [
    i8 10, label %while.end11.i
    i8 0, label %while.end11.i
  ]

while.body10.i:                                   ; preds = %while.cond9.i
  %inc23.i = add i32 %"CQB::Engine::i.1.i", 1
  br label %while.cond9.i

while.end11.i:                                    ; preds = %while.cond9.i, %while.cond9.i
  %icmpeq28.i = icmp eq i8 %ptr_arr_val15.i, 10
  %inc32.i = zext i1 %icmpeq28.i to i32
  %spec.select41.i = add i32 %"CQB::Engine::i.1.i", %inc32.i
  %52 = sext i32 %spec.select41.i to i64
  %ptr_arr_addr.i859 = getelementptr i8, ptr %calltmp141.fca.1.extract, i64 %52
  %ptr_arr_val.i860 = load i8, ptr %ptr_arr_addr.i859, align 1
  %icmpne.not.i861 = icmp eq i8 %ptr_arr_val.i860, 0
  br i1 %icmpne.not.i861, label %"CQB::Engine::countDone.exit", label %while.body.i

"CQB::Engine::countDone.exit":                    ; preds = %while.end11.i
  %icmpgt = icmp sgt i32 %spec.select.i, 0
  br i1 %icmpgt, label %then151, label %else153

else149:                                          ; preds = %ifcont145
  call fastcc void @qc_print_string(ptr nonnull @15)
  call fastcc void @qc_fmt_int(i64 %indvars.iv.next1165, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @16)
  call fastcc void @qc_fmt_int(i64 %9, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @25)
  call fastcc void @qc_fmt_string(ptr %strip_ref.unpack)
  %53 = sext i32 %calltmp141.fca.0.extract to i64
  call fastcc void @qc_print_string(ptr nonnull @17)
  call fastcc void @qc_fmt_int(i64 %53, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @18)
  call void @"CQB::Engine::printWithoutProgress"(ptr %calltmp141.fca.1.extract)
  call fastcc void @qc_free(ptr nonnull %builtin_call.i534)
  call fastcc void @qc_free(ptr nonnull %builtin_call.i479)
  call fastcc void @qc_free(ptr %.fca.0.extract261)
  call fastcc void @qc_free(ptr %.fca.0.extract)
  call fastcc void @qc_free(ptr nonnull %builtin_call.i540)
  call fastcc void @qc_free(ptr %order.sroa.0.0)
  call fastcc void @qc_free(ptr %done.sroa.0.0.lcssa)
  call fastcc void @qc_free(ptr %remaining.sroa.0.0.lcssa)
  br label %common.ret

then151:                                          ; preds = %"CQB::Engine::countDone.exit"
  call fastcc void @qc_print_string(ptr nonnull @15)
  call fastcc void @qc_fmt_int(i64 %indvars.iv.next1165, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @16)
  call fastcc void @qc_fmt_int(i64 %9, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @25)
  call fastcc void @qc_fmt_string(ptr %strip_ref.unpack)
  %54 = zext nneg i32 %spec.select.i to i64
  call fastcc void @qc_print_string(ptr nonnull @13)
  call fastcc void @qc_fmt_int(i64 %54, i32 -1, i1 false)
  br label %ifcont152

ifcont152:                                        ; preds = %else153, %then151
  %.sink1206 = phi ptr [ @13, %else153 ], [ @12, %then151 ]
  %.sink1205 = phi ptr [ @21, %else153 ], [ @21, %then151 ]
  %.sink = phi ptr [ @14, %else153 ], [ @14, %then151 ]
  %sdiv167 = sdiv i64 %sub, 1000
  call fastcc void @qc_print_string(ptr nonnull %.sink1206)
  call fastcc void @qc_fmt_int(i64 %sdiv167, i32 -1, i1 false)
  %srem169 = srem i64 %sub, 1000
  call fastcc void @qc_print_string(ptr nonnull %.sink1205)
  call fastcc void @qc_fmt_int(i64 %srem169, i32 3, i1 true)
  call fastcc void @qc_print_string(ptr nonnull %.sink)
  call fastcc void @qc_free(ptr nonnull %calltmp141.fca.1.extract)
  call fastcc void @qc_free(ptr nonnull %builtin_call.i534)
  call fastcc void @qc_free(ptr nonnull %builtin_call.i479)
  call fastcc void @qc_free(ptr %.fca.0.extract261)
  call fastcc void @qc_free(ptr %.fca.0.extract)
  call fastcc void @qc_free(ptr %builtin_call.i540)
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1165, %9
  br i1 %exitcond1170.not, label %for.end74, label %"Vector::Vec<char*>_operator[]=_T*_addr_t.exit"

else153:                                          ; preds = %then147, %"CQB::Engine::countDone.exit"
  call fastcc void @qc_print_string(ptr nonnull @15)
  call fastcc void @qc_fmt_int(i64 %indvars.iv.next1165, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @16)
  call fastcc void @qc_fmt_int(i64 %9, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @25)
  call fastcc void @qc_fmt_string(ptr %strip_ref.unpack)
  br label %ifcont152
}

define weak_odr i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %ciRoot = load ptr, ptr %1, align 8
  %ptr_eq = icmp eq ptr %ciRoot, null
  br i1 %ptr_eq, label %then, label %ifcont.i.i

common.ret:                                       ; preds = %then98, %while.end, %then
  %common.ret.op = phi i32 [ 1, %then ], [ 0, %while.end ], [ 1, %then98 ]
  ret i32 %common.ret.op

then:                                             ; preds = %entry
  tail call fastcc void @qc_print_string(ptr nonnull @23)
  br label %common.ret

ifcont.i.i:                                       ; preds = %entry
  %builtin_call.i.i = tail call fastcc ptr @qc_realloc(ptr null, i64 8)
  %ptr_eq.i.i.not = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %ifcont.i.i
  store ptr %ciRoot, ptr %builtin_call.i.i, align 8
  %activeTask_ptr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %indvars.iv434 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next435, %while.cond.backedge ]
  %pending.sroa.34.0414 = phi i32 [ 1, %while.body.lr.ph ], [ %pending.sroa.34.0.be, %while.cond.backedge ]
  %pending.sroa.17.0413 = phi i32 [ 1, %while.body.lr.ph ], [ %pending.sroa.17.0.be, %while.cond.backedge ]
  %pending.sroa.0.0412 = phi ptr [ %builtin_call.i.i, %while.body.lr.ph ], [ %pending.sroa.0.0.be, %while.cond.backedge ]
  %visited.sroa.24.0411 = phi i32 [ 0, %while.body.lr.ph ], [ %visited.sroa.24.0.be, %while.cond.backedge ]
  %visited.sroa.13.0410 = phi i32 [ 0, %while.body.lr.ph ], [ %visited.sroa.13.0.be, %while.cond.backedge ]
  %visited.sroa.0.0409 = phi ptr [ null, %while.body.lr.ph ], [ %visited.sroa.0.0.be, %while.cond.backedge ]
  %lval_ptr_arr_addr.i = getelementptr [8 x i8], ptr %pending.sroa.0.0412, i64 %indvars.iv434
  %deref_ref = load ptr, ptr %lval_ptr_arr_addr.i, align 8
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %visited.sroa.13.0410, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not445 = icmp slt i32 %visited.sroa.13.0410, 1
  br i1 %exitcond.not445, label %ifcont10, label %foreach.body

while.end:                                        ; preds = %while.cond.backedge, %ifcont.i.i
  %visited.sroa.0.0.lcssa = phi ptr [ null, %ifcont.i.i ], [ %visited.sroa.0.0.be, %while.cond.backedge ]
  %pending.sroa.0.0.lcssa = phi ptr [ null, %ifcont.i.i ], [ %pending.sroa.0.0.be, %while.cond.backedge ]
  %activeTask_ptr113 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %activeTask_ptr113, align 8
  store i1 true, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %pending.sroa.0.0.lcssa)
  tail call fastcc void @qc_free(ptr %visited.sroa.0.0.lcssa)
  br label %common.ret

foreach.cond:                                     ; preds = %foreach.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv446, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ifcont10, label %foreach.body

foreach.body:                                     ; preds = %while.body, %foreach.cond
  %indvars.iv446 = phi i64 [ %indvars.iv.next, %foreach.cond ], [ 0, %while.body ]
  %ptr_arr_addr5.i = getelementptr [8 x i8], ptr %visited.sroa.0.0409, i64 %indvars.iv446
  %common.ret.op.i = load ptr, ptr %ptr_arr_addr5.i, align 8
  %ptr_eq6 = icmp eq ptr %common.ret.op.i, %deref_ref
  br i1 %ptr_eq6, label %then9, label %foreach.cond

then9:                                            ; preds = %foreach.body
  tail call fastcc void @qc_free(ptr %pending.sroa.0.0412)
  tail call fastcc void @qc_free(ptr nonnull %visited.sroa.0.0409)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %"Vector::Vec<CQB::CI::Task*>_push_T.exit341", %ifcont99, %then9
  %visited.sroa.0.0.be = phi ptr [ null, %then9 ], [ %visited.sroa.0.2, %ifcont99 ], [ %visited.sroa.0.2, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %visited.sroa.13.0.be = phi i32 [ -1, %then9 ], [ %visited.sroa.13.3, %ifcont99 ], [ %visited.sroa.13.3, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %visited.sroa.24.0.be = phi i32 [ -1, %then9 ], [ %visited.sroa.24.2, %ifcont99 ], [ %visited.sroa.24.2, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.0.0.be = phi ptr [ null, %then9 ], [ %pending.sroa.0.0412, %ifcont99 ], [ %pending.sroa.0.5, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.17.0.be = phi i32 [ -1, %then9 ], [ %pending.sroa.17.0413, %ifcont99 ], [ %pending.sroa.17.7, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.34.0.be = phi i32 [ -1, %then9 ], [ %pending.sroa.34.0414, %ifcont99 ], [ %pending.sroa.34.5, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %5 = sext i32 %pending.sroa.17.0.be to i64
  %icmplt = icmp slt i64 %indvars.iv.next435, %5
  br i1 %icmplt, label %while.body, label %while.end

ifcont10:                                         ; preds = %foreach.cond, %while.body
  %icmple.not.i177 = icmp sgt i32 %visited.sroa.24.0411, %visited.sroa.13.0410
  br i1 %icmple.not.i177, label %ifcont.i194, label %then.i179

then.i179:                                        ; preds = %ifcont10
  %icmpeq.i180 = icmp eq i32 %visited.sroa.24.0411, 0
  %mul.i181 = shl i32 %visited.sroa.24.0411, 1
  %select_val.i182 = select i1 %icmpeq.i180, i32 1, i32 %mul.i181
  %icmpeq.i.i183 = icmp eq i32 %select_val.i182, 0
  br i1 %icmpeq.i.i183, label %then.i.i205, label %ifcont.i.i184

then.i.i205:                                      ; preds = %then.i179
  tail call fastcc void @qc_free(ptr %visited.sroa.0.0409)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit206"

ifcont.i.i184:                                    ; preds = %then.i179
  %promote_int.i.i185 = sext i32 %select_val.i182 to i64
  %mul.i.i186 = shl nsw i64 %promote_int.i.i185, 3
  %builtin_call.i.i187 = tail call fastcc ptr @qc_realloc(ptr %visited.sroa.0.0409, i64 %mul.i.i186)
  %ptr_eq.i.i188 = icmp eq ptr %builtin_call.i.i187, null
  br i1 %ptr_eq.i.i188, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201", label %ifcont5.i.i189

ifcont5.i.i189:                                   ; preds = %ifcont.i.i184
  %spec.select = tail call i32 @llvm.smin.i32(i32 %visited.sroa.13.0410, i32 %select_val.i182)
  br label %ifcont.i194

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201": ; preds = %ifcont.i.i184
  %6 = icmp eq ptr %visited.sroa.0.0409, null
  br i1 %6, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit206", label %ifcont.i194

ifcont.i194:                                      ; preds = %ifcont5.i.i189, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201", %ifcont10
  %visited.sroa.0.1 = phi ptr [ %visited.sroa.0.0409, %ifcont10 ], [ %builtin_call.i.i187, %ifcont5.i.i189 ], [ %visited.sroa.0.0409, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  %visited.sroa.13.2 = phi i32 [ %visited.sroa.13.0410, %ifcont10 ], [ %spec.select, %ifcont5.i.i189 ], [ %visited.sroa.13.0410, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  %visited.sroa.24.1 = phi i32 [ %visited.sroa.24.0411, %ifcont10 ], [ %select_val.i182, %ifcont5.i.i189 ], [ %visited.sroa.24.0411, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  %7 = sext i32 %visited.sroa.13.2 to i64
  %ptr_arr_asi.i197 = getelementptr [8 x i8], ptr %visited.sroa.0.1, i64 %7
  store ptr %deref_ref, ptr %ptr_arr_asi.i197, align 8
  %inc.i199 = add i32 %visited.sroa.13.2, 1
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit206"

"Vector::Vec<CQB::CI::Task*>_push_T.exit206":     ; preds = %then.i.i205, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201", %ifcont.i194
  %visited.sroa.0.2 = phi ptr [ %visited.sroa.0.1, %ifcont.i194 ], [ null, %then.i.i205 ], [ null, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  %visited.sroa.13.3 = phi i32 [ %inc.i199, %ifcont.i194 ], [ 0, %then.i.i205 ], [ %visited.sroa.13.0410, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  %visited.sroa.24.2 = phi i32 [ %visited.sroa.24.1, %ifcont.i194 ], [ 0, %then.i.i205 ], [ %visited.sroa.24.0411, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i201" ]
  store ptr %deref_ref, ptr %activeTask_ptr, align 8
  %size.i207 = load i32, ptr %3, align 8
  %icmplt14392 = icmp sgt i32 %size.i207, 0
  %name31.pre = load ptr, ptr %deref_ref, align 8
  %data6.pre.i213.pre = load ptr, ptr %2, align 8
  br i1 %icmplt14392, label %for.body, label %then27

for.body:                                         ; preds = %"Vector::Vec<CQB::CI::Task*>_push_T.exit206", %ifcont22
  %"CQB::Engine::i.0393" = phi i32 [ %inc25, %ifcont22 ], [ 0, %"Vector::Vec<CQB::CI::Task*>_push_T.exit206" ]
  %8 = zext nneg i32 %"CQB::Engine::i.0393" to i64
  %lval_ptr_arr_addr.i209 = getelementptr [64 x i8], ptr %data6.pre.i213.pre, i64 %8
  %name = load ptr, ptr %lval_ptr_arr_addr.i209, align 8
  %ptr_eq20 = icmp eq ptr %name, %name31.pre
  br i1 %ptr_eq20, label %else, label %ifcont22

ifcont22:                                         ; preds = %for.body
  %inc25 = add nuw nsw i32 %"CQB::Engine::i.0393", 1
  %exitcond425.not = icmp eq i32 %inc25, %size.i207
  br i1 %exitcond425.not, label %then27, label %for.body

then27:                                           ; preds = %ifcont22, %"Vector::Vec<CQB::CI::Task*>_push_T.exit206"
  %state32.fca.0.insert = insertvalue %"CQB::Engine::TaskState" poison, ptr %name31.pre, 0
  %state32.fca.1.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.0.insert, ptr @.str.113, 1
  %state32.fca.2.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.1.insert, ptr @.str.114, 2
  %state32.fca.3.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.2.insert, i32 0, 3
  %state32.fca.4.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.3.insert, ptr @0, 4
  %state32.fca.5.0.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.4.insert, ptr null, 5, 0
  %state32.fca.5.1.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.5.0.insert, i32 0, 5, 1
  %state32.fca.5.2.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.5.1.insert, i32 0, 5, 2
  %state32.fca.6.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.5.2.insert, i32 0, 6
  %state32.fca.7.insert = insertvalue %"CQB::Engine::TaskState" %state32.fca.6.insert, i32 0, 7
  %capacity.i210 = load i32, ptr %4, align 4
  %icmple.not.i212 = icmp sgt i32 %capacity.i210, %size.i207
  br i1 %icmple.not.i212, label %ifcont.i227, label %then.i214

then.i214:                                        ; preds = %then27
  %icmpeq.i215 = icmp eq i32 %capacity.i210, 0
  %mul.i216 = shl i32 %capacity.i210, 1
  %select_val.i217 = select i1 %icmpeq.i215, i32 1, i32 %mul.i216
  %icmpeq.i.i218 = icmp eq i32 %select_val.i217, 0
  br i1 %icmpeq.i.i218, label %then.i.i236, label %ifcont.i.i219

then.i.i236:                                      ; preds = %then.i214
  tail call fastcc void @qc_free(ptr %data6.pre.i213.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<CQB::Engine::TaskState>_push_T.exit"

ifcont.i.i219:                                    ; preds = %then.i214
  %promote_int.i.i220 = sext i32 %select_val.i217 to i64
  %mul.i.i221 = shl nsw i64 %promote_int.i.i220, 6
  %builtin_call.i.i222 = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i213.pre, i64 %mul.i.i221)
  %ptr_eq.i.i223 = icmp eq ptr %builtin_call.i.i222, null
  br i1 %ptr_eq.i.i223, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i224

ifcont5.i.i224:                                   ; preds = %ifcont.i.i219
  store i32 %select_val.i217, ptr %4, align 4
  %size.i.i225 = load i32, ptr %3, align 8
  %icmpgt.i.i226 = icmp sgt i32 %size.i.i225, %select_val.i217
  br i1 %icmpgt.i.i226, label %then8.i.i233, label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i"

then8.i.i233:                                     ; preds = %ifcont5.i.i224
  store i32 %select_val.i217, ptr %3, align 8
  br label %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i"

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i": ; preds = %then8.i.i233, %ifcont5.i.i224
  %size512.i = phi i32 [ %size.i.i225, %ifcont5.i.i224 ], [ %select_val.i217, %then8.i.i233 ]
  store ptr %builtin_call.i.i222, ptr %2, align 8
  br label %ifcont.i227

"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i219
  %data.pr.i234 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %data.pr.i234, null
  %size.i237.pre = load i32, ptr %3, align 8
  br i1 %9, label %"Vector::Vec<CQB::Engine::TaskState>_push_T.exit", label %ifcont.i227

ifcont.i227:                                      ; preds = %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i", %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i", %then27
  %data6.i228 = phi ptr [ %data6.pre.i213.pre, %then27 ], [ %builtin_call.i.i222, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i" ], [ %data.pr.i234, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i" ]
  %size5.i229 = phi i32 [ %size.i207, %then27 ], [ %size512.i, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exit.thread.i" ], [ %size.i237.pre, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i" ]
  %10 = sext i32 %size5.i229 to i64
  %ptr_arr_asi.i230 = getelementptr [64 x i8], ptr %data6.i228, i64 %10
  store %"CQB::Engine::TaskState" %state32.fca.7.insert, ptr %ptr_arr_asi.i230, align 8
  %inc_deref.i231 = load i32, ptr %3, align 8
  %inc.i232 = add i32 %inc_deref.i231, 1
  store i32 %inc.i232, ptr %3, align 8
  br label %"Vector::Vec<CQB::Engine::TaskState>_push_T.exit"

"Vector::Vec<CQB::Engine::TaskState>_push_T.exit": ; preds = %then.i.i236, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i", %ifcont.i227
  %size.i237 = phi i32 [ 0, %then.i.i236 ], [ %size.i237.pre, %"Vector::Vec<CQB::Engine::TaskState>_reserve_int.exitthread-pre-split.i" ], [ %inc.i232, %ifcont.i227 ]
  %sub = add i32 %size.i237, -1
  %.pre = sext i32 %sub to i64
  br label %ifcont28

ifcont28:                                         ; preds = %else, %"Vector::Vec<CQB::Engine::TaskState>_push_T.exit"
  %.pre-phi = phi i64 [ %8, %else ], [ %.pre, %"Vector::Vec<CQB::Engine::TaskState>_push_T.exit" ]
  %data.i238 = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i241 = getelementptr [64 x i8], ptr %data.i238, i64 %.pre-phi
  %11 = getelementptr inbounds nuw i8, ptr %deref_ref, i64 16
  %size.i248395 = load i32, ptr %11, align 8
  %icmplt57396 = icmp sgt i32 %size.i248395, 0
  br i1 %icmplt57396, label %for.body51.lr.ph, label %ifcont99

for.body51.lr.ph:                                 ; preds = %ifcont28
  %12 = getelementptr inbounds nuw i8, ptr %deref_ref, i64 8
  %progress_ptr67 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 24
  %lastOutput_ptr74 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 40
  %14 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 52
  %15 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 48
  %errorsCount_ptr = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 60
  %ignoreFailure_ptr = getelementptr inbounds nuw i8, ptr %deref_ref, i64 40
  br label %for.body51

else:                                             ; preds = %for.body
  %16 = zext nneg i32 %"CQB::Engine::i.0393" to i64
  %lval_ptr_arr_addr.i243 = getelementptr [64 x i8], ptr %data6.pre.i213.pre, i64 %16
  %status_ptr = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i243, i64 16
  store ptr @.str.116, ptr %status_ptr, align 8
  %data.i244 = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i245 = getelementptr [64 x i8], ptr %data.i244, i64 %16
  %progress_ptr = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i245, i64 24
  store i32 0, ptr %progress_ptr, align 4
  %data.i246 = load ptr, ptr %2, align 8
  %lval_ptr_arr_addr.i247 = getelementptr [64 x i8], ptr %data.i246, i64 %16
  %lastOutput_ptr = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i247, i64 32
  store ptr @.str.117, ptr %lastOutput_ptr, align 8
  br label %ifcont28

for.body51:                                       ; preds = %for.body51.lr.ph, %ifcont81
  %indvars.iv426 = phi i64 [ 0, %for.body51.lr.ph ], [ %indvars.iv.next427, %ifcont81 ]
  %size.i248398 = phi i32 [ %size.i248395, %for.body51.lr.ph ], [ %size.i248, %ifcont81 ]
  %data.i249 = load ptr, ptr %12, align 8
  %lval_ptr_arr_addr.i250 = getelementptr [24 x i8], ptr %data.i249, i64 %indvars.iv426
  %strip_ref.unpack = load ptr, ptr %lval_ptr_arr_addr.i250, align 8
  %strip_ref.elt148 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i250, i64 8
  %strip_ref.unpack149.unpack = load ptr, ptr %strip_ref.elt148, align 8
  %strip_ref.unpack149.elt151 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i250, i64 16
  %strip_ref.unpack149.unpack152 = load i32, ptr %strip_ref.unpack149.elt151, align 8
  %strip_ref.unpack149.elt153 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i250, i64 20
  %strip_ref.unpack149.unpack154 = load i32, ptr %strip_ref.unpack149.elt153, align 4
  %icmpgt = icmp sgt i32 %size.i248398, 0
  %17 = trunc nuw nsw i64 %indvars.iv426 to i32
  %mul = mul i32 %17, 100
  %sdiv = sdiv i32 %mul, %size.i248398
  %select_val = select i1 %icmpgt, i32 %sdiv, i32 100
  store i32 %select_val, ptr %progress_ptr67, align 4
  %name70 = load ptr, ptr %deref_ref, align 8
  tail call fastcc void @qc_print_string(ptr nonnull @24)
  tail call fastcc void @qc_fmt_string(ptr %name70)
  tail call fastcc void @qc_print_string(ptr nonnull @25)
  tail call fastcc void @qc_fmt_string(ptr %strip_ref.unpack)
  tail call fastcc void @qc_print_string(ptr nonnull @29)
  %command.fca.0.insert = insertvalue %"Vector::Vec<char*>" poison, ptr %strip_ref.unpack149.unpack, 0
  %command.fca.1.insert = insertvalue %"Vector::Vec<char*>" %command.fca.0.insert, i32 %strip_ref.unpack149.unpack152, 1
  %command.fca.2.insert = insertvalue %"Vector::Vec<char*>" %command.fca.1.insert, i32 %strip_ref.unpack149.unpack154, 2
  %calltmp = tail call %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %command.fca.2.insert, ptr nonnull @.str.119, i1 false)
  %calltmp.fca.0.extract = extractvalue %"CQB::Engine::RunResult" %calltmp, 0
  %calltmp.fca.1.extract = extractvalue %"CQB::Engine::RunResult" %calltmp, 1
  store ptr %calltmp.fca.1.extract, ptr %lastOutput_ptr74, align 8
  %capacity.i253 = load i32, ptr %14, align 4
  %size.i254 = load i32, ptr %15, align 8
  %icmple.not.i255 = icmp sgt i32 %capacity.i253, %size.i254
  %data6.pre.i256 = load ptr, ptr %13, align 8
  br i1 %icmple.not.i255, label %ifcont.i271, label %then.i257

then.i257:                                        ; preds = %for.body51
  %icmpeq.i258 = icmp eq i32 %capacity.i253, 0
  %mul.i259 = shl i32 %capacity.i253, 1
  %select_val.i260 = select i1 %icmpeq.i258, i32 1, i32 %mul.i259
  %icmpeq.i.i261 = icmp eq i32 %select_val.i260, 0
  br i1 %icmpeq.i.i261, label %then.i.i280, label %ifcont.i.i262

then.i.i280:                                      ; preds = %then.i257
  tail call fastcc void @qc_free(ptr %data6.pre.i256)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i262:                                    ; preds = %then.i257
  %promote_int.i.i263 = sext i32 %select_val.i260 to i64
  %mul.i.i264 = shl nsw i64 %promote_int.i.i263, 3
  %builtin_call.i.i265 = tail call fastcc ptr @qc_realloc(ptr %data6.pre.i256, i64 %mul.i.i264)
  %ptr_eq.i.i266 = icmp eq ptr %builtin_call.i.i265, null
  br i1 %ptr_eq.i.i266, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i267

ifcont5.i.i267:                                   ; preds = %ifcont.i.i262
  store i32 %select_val.i260, ptr %14, align 4
  %size.i.i268 = load i32, ptr %15, align 8
  %icmpgt.i.i269 = icmp sgt i32 %size.i.i268, %select_val.i260
  br i1 %icmpgt.i.i269, label %then8.i.i277, label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

then8.i.i277:                                     ; preds = %ifcont5.i.i267
  store i32 %select_val.i260, ptr %15, align 8
  br label %"Vector::Vec<char*>_reserve_int.exit.thread.i"

"Vector::Vec<char*>_reserve_int.exit.thread.i":   ; preds = %then8.i.i277, %ifcont5.i.i267
  %size511.i270 = phi i32 [ %size.i.i268, %ifcont5.i.i267 ], [ %select_val.i260, %then8.i.i277 ]
  store ptr %builtin_call.i.i265, ptr %13, align 8
  br label %ifcont.i271

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i262
  %data.pr.i278 = load ptr, ptr %13, align 8
  %18 = icmp eq ptr %data.pr.i278, null
  br i1 %18, label %"Vector::Vec<char*>_push_T.exit", label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i"

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i": ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i"
  %size5.pre.i279 = load i32, ptr %15, align 8
  br label %ifcont.i271

ifcont.i271:                                      ; preds = %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i", %"Vector::Vec<char*>_reserve_int.exit.thread.i", %for.body51
  %data6.i272 = phi ptr [ %data.pr.i278, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %builtin_call.i.i265, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %data6.pre.i256, %for.body51 ]
  %size5.i273 = phi i32 [ %size5.pre.i279, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.ifcont_crit_edge.i" ], [ %size511.i270, %"Vector::Vec<char*>_reserve_int.exit.thread.i" ], [ %size.i254, %for.body51 ]
  %19 = sext i32 %size5.i273 to i64
  %ptr_arr_asi.i274 = getelementptr [8 x i8], ptr %data6.i272, i64 %19
  store ptr %calltmp.fca.1.extract, ptr %ptr_arr_asi.i274, align 8
  %inc_deref.i275 = load i32, ptr %15, align 8
  %inc.i276 = add i32 %inc_deref.i275, 1
  store i32 %inc.i276, ptr %15, align 8
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i280, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i271
  tail call fastcc void @qc_print_string(ptr nonnull @26)
  tail call fastcc void @qc_fmt_string(ptr %calltmp.fca.1.extract)
  tail call fastcc void @qc_print_string(ptr nonnull @29)
  %icmpne.not = icmp eq i32 %calltmp.fca.0.extract, 0
  br i1 %icmpne.not, label %ifcont81, label %then80

then80:                                           ; preds = %"Vector::Vec<char*>_push_T.exit"
  %inc_deref83 = load i32, ptr %errorsCount_ptr, align 4
  %inc84 = add i32 %inc_deref83, 1
  store i32 %inc84, ptr %errorsCount_ptr, align 4
  tail call fastcc void @qc_print_string(ptr nonnull @27)
  tail call fastcc void @qc_fmt_string(ptr %strip_ref.unpack)
  %20 = sext i32 %calltmp.fca.0.extract to i64
  tail call fastcc void @qc_print_string(ptr nonnull @28)
  tail call fastcc void @qc_fmt_int(i64 %20, i32 -1, i1 false)
  tail call fastcc void @qc_print_string(ptr nonnull @29)
  %ignoreFailure = load i1, ptr %ignoreFailure_ptr, align 8
  br i1 %ignoreFailure, label %ifcont81, label %then98

ifcont81:                                         ; preds = %then80, %"Vector::Vec<char*>_push_T.exit"
  tail call fastcc void @qc_free(ptr %calltmp.fca.1.extract)
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1
  %size.i248 = load i32, ptr %11, align 8
  %21 = sext i32 %size.i248 to i64
  %icmplt57 = icmp slt i64 %indvars.iv.next427, %21
  br i1 %icmplt57, label %for.body51, label %ifcont99

then98:                                           ; preds = %then80
  %status_ptr93 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 16
  store ptr @.str.122, ptr %status_ptr93, align 8
  store ptr null, ptr %activeTask_ptr, align 8
  tail call fastcc void @qc_free(ptr %pending.sroa.0.0412)
  tail call fastcc void @qc_free(ptr %visited.sroa.0.2)
  br label %common.ret

ifcont99:                                         ; preds = %ifcont81, %ifcont28
  %progress_ptr102 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 24
  store i32 100, ptr %progress_ptr102, align 4
  %status_ptr104 = getelementptr inbounds nuw i8, ptr %lval_ptr_arr_addr.i241, i64 16
  store ptr @.str.123, ptr %status_ptr104, align 8
  %next_ptr = getelementptr inbounds nuw i8, ptr %deref_ref, i64 24
  %data.i287 = load ptr, ptr %next_ptr, align 8
  %22 = getelementptr inbounds nuw i8, ptr %deref_ref, i64 32
  %size.i288 = load i32, ptr %22, align 8
  %icmple.i294.not399 = icmp sgt i32 %size.i288, 0
  br i1 %icmple.i294.not399, label %foreach.body108.preheader, label %while.cond.backedge

foreach.body108.preheader:                        ; preds = %ifcont99
  %wide.trip.count432 = zext nneg i32 %size.i288 to i64
  br label %foreach.body108

foreach.body108:                                  ; preds = %foreach.body108.preheader, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341"
  %indvars.iv429 = phi i64 [ 0, %foreach.body108.preheader ], [ %indvars.iv.next430, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.34.1403 = phi i32 [ %pending.sroa.34.0414, %foreach.body108.preheader ], [ %pending.sroa.34.5, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.17.1402 = phi i32 [ %pending.sroa.17.0413, %foreach.body108.preheader ], [ %pending.sroa.17.7, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %pending.sroa.0.1401 = phi ptr [ %pending.sroa.0.0412, %foreach.body108.preheader ], [ %pending.sroa.0.5, %"Vector::Vec<CQB::CI::Task*>_push_T.exit341" ]
  %indvars.iv.next430 = add nuw nsw i64 %indvars.iv429, 1
  %ptr_arr_addr5.i304 = getelementptr [8 x i8], ptr %data.i287, i64 %indvars.iv429
  %common.ret.op.i305 = load ptr, ptr %ptr_arr_addr5.i304, align 8
  %icmple.not.i312 = icmp sgt i32 %pending.sroa.34.1403, %pending.sroa.17.1402
  br i1 %icmple.not.i312, label %ifcont.i329, label %then.i314

then.i314:                                        ; preds = %foreach.body108
  %icmpeq.i315 = icmp eq i32 %pending.sroa.34.1403, 0
  %mul.i316 = shl i32 %pending.sroa.34.1403, 1
  %select_val.i317 = select i1 %icmpeq.i315, i32 1, i32 %mul.i316
  %icmpeq.i.i318 = icmp eq i32 %select_val.i317, 0
  br i1 %icmpeq.i.i318, label %then.i.i340, label %ifcont.i.i319

then.i.i340:                                      ; preds = %then.i314
  tail call fastcc void @qc_free(ptr %pending.sroa.0.1401)
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit341"

ifcont.i.i319:                                    ; preds = %then.i314
  %promote_int.i.i320 = sext i32 %select_val.i317 to i64
  %mul.i.i321 = shl nsw i64 %promote_int.i.i320, 3
  %builtin_call.i.i322 = tail call fastcc ptr @qc_realloc(ptr %pending.sroa.0.1401, i64 %mul.i.i321)
  %ptr_eq.i.i323 = icmp eq ptr %builtin_call.i.i322, null
  br i1 %ptr_eq.i.i323, label %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336", label %ifcont5.i.i324

ifcont5.i.i324:                                   ; preds = %ifcont.i.i319
  %spec.select364 = tail call i32 @llvm.smin.i32(i32 %pending.sroa.17.1402, i32 %select_val.i317)
  br label %ifcont.i329

"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336": ; preds = %ifcont.i.i319
  %23 = icmp eq ptr %pending.sroa.0.1401, null
  br i1 %23, label %"Vector::Vec<CQB::CI::Task*>_push_T.exit341", label %ifcont.i329

ifcont.i329:                                      ; preds = %ifcont5.i.i324, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336", %foreach.body108
  %pending.sroa.0.4 = phi ptr [ %pending.sroa.0.1401, %foreach.body108 ], [ %builtin_call.i.i322, %ifcont5.i.i324 ], [ %pending.sroa.0.1401, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %pending.sroa.17.6 = phi i32 [ %pending.sroa.17.1402, %foreach.body108 ], [ %spec.select364, %ifcont5.i.i324 ], [ %pending.sroa.17.1402, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %pending.sroa.34.4 = phi i32 [ %pending.sroa.34.1403, %foreach.body108 ], [ %select_val.i317, %ifcont5.i.i324 ], [ %pending.sroa.34.1403, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %24 = sext i32 %pending.sroa.17.6 to i64
  %ptr_arr_asi.i332 = getelementptr [8 x i8], ptr %pending.sroa.0.4, i64 %24
  store ptr %common.ret.op.i305, ptr %ptr_arr_asi.i332, align 8
  %inc.i334 = add i32 %pending.sroa.17.6, 1
  br label %"Vector::Vec<CQB::CI::Task*>_push_T.exit341"

"Vector::Vec<CQB::CI::Task*>_push_T.exit341":     ; preds = %then.i.i340, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336", %ifcont.i329
  %pending.sroa.0.5 = phi ptr [ %pending.sroa.0.4, %ifcont.i329 ], [ null, %then.i.i340 ], [ null, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %pending.sroa.17.7 = phi i32 [ %inc.i334, %ifcont.i329 ], [ 0, %then.i.i340 ], [ %pending.sroa.17.1402, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %pending.sroa.34.5 = phi i32 [ %pending.sroa.34.4, %ifcont.i329 ], [ 0, %then.i.i340 ], [ %pending.sroa.34.1403, %"Vector::Vec<CQB::CI::Task*>_reserve_int.exitthread-pre-split.i336" ]
  %exitcond433.not = icmp eq i64 %indvars.iv.next430, %wide.trip.count432
  br i1 %exitcond433.not, label %while.cond.backedge, label %foreach.body108
}

define weak_odr void @"CQB::Engine::Runner_Runner_Vector::Vec<Build::Command>_CI::Task*"(ptr %0, %"Vector::Vec<CQB::Build::Command>" %1, ptr %2) local_unnamed_addr !qc.return_types !15 {
entry:
  %buildGraph_ptr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.elt = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 0
  store ptr %.elt, ptr %buildGraph_ptr, align 8
  %buildGraph_ptr.repack4 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.elt5 = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 1
  store i32 %.elt5, ptr %buildGraph_ptr.repack4, align 8
  %buildGraph_ptr.repack6 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.elt7 = extractvalue %"Vector::Vec<CQB::Build::Command>" %1, 2
  store i32 %.elt7, ptr %buildGraph_ptr.repack6, align 4
  %ciRoot_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %ciRoot_ptr, align 8
  %activeTask_ptr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %activeTask_ptr, align 8
  %activeStates_ptr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i1 false, ptr %0, align 8
  %buildDone_ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i1 false, ptr %buildDone_ptr, align 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %activeStates_ptr, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr i1 @"CQB::Engine::Runner_Run"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %runCIPipeline_result = tail call i32 @"CQB::Engine::Runner_runCIPipeline"(ptr %0)
  %runBuildPipeline_result = tail call i32 @"CQB::Engine::Runner_runBuildPipeline"(ptr %0)
  ret i1 true
}

declare !qc.return_types !39 i32 @clock_gettime(i32, ptr) local_unnamed_addr

declare !qc.return_types !58 i32 @waitpid(i32, ptr, i32) local_unnamed_addr

declare !qc.return_types !39 i32 @pipe(ptr) local_unnamed_addr

declare !qc.return_types !39 i32 @isatty(i32) local_unnamed_addr

define weak_odr i16 @__bswap_16(i16 %__bsx) local_unnamed_addr !qc.return_types !59 {
entry:
  %rev = tail call i16 @llvm.bswap.i16(i16 %__bsx)
  ret i16 %rev
}

define weak_odr i32 @__bswap_32(i32 %__bsx) local_unnamed_addr !qc.return_types !60 {
entry:
  %rev = tail call i32 @llvm.bswap.i32(i32 %__bsx)
  ret i32 %rev
}

define weak_odr i64 @__bswap_64(i64 %__bsx) local_unnamed_addr !qc.return_types !61 {
entry:
  %ortmp28 = tail call i64 @llvm.bswap.i64(i64 %__bsx)
  ret i64 %ortmp28
}

define weak_odr i16 @__uint16_identity(i16 %__x) local_unnamed_addr !qc.return_types !59 {
entry:
  ret i16 %__x
}

define weak_odr i32 @__uint32_identity(i32 %__x) local_unnamed_addr !qc.return_types !60 {
entry:
  ret i32 %__x
}

define weak_odr i64 @__uint64_identity(i64 %__x) local_unnamed_addr !qc.return_types !61 {
entry:
  ret i64 %__x
}

declare !qc.return_types !39 i32 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr) local_unnamed_addr

declare !qc.return_types !39 i32 @posix_spawn_file_actions_init(ptr) local_unnamed_addr

declare !qc.return_types !39 i32 @posix_spawn_file_actions_destroy(ptr) local_unnamed_addr

declare !qc.return_types !39 i32 @posix_spawn_file_actions_addclose(ptr, i32) local_unnamed_addr

declare !qc.return_types !39 i32 @posix_spawn_file_actions_adddup2(ptr, i32, i32) local_unnamed_addr

define weak_odr i64 @"CQB::Engine::nowMs"() local_unnamed_addr !qc.return_types !62 {
entry:
  %ts = alloca %timespec, align 8
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %ts, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts, i8 0, i64 16, i1 false)
  %calltmp = call i32 @clock_gettime(i32 1, ptr nonnull %ts)
  %tv_sec = load i64, ptr %ts, align 8
  %mul = mul i64 %tv_sec, 1000
  %tv_nsec = load i64, ptr %.fca.1.gep, align 8
  %sdiv = sdiv i64 %tv_nsec, 1000000
  %add = add i64 %sdiv, %mul
  ret i64 %add
}

define weak_odr i1 @"CQB::Engine::isProgressLine"(ptr %s, i32 %start) local_unnamed_addr !qc.return_types !27 {
entry:
  %0 = sext i32 %start to i64
  %ptr_arr_addr = getelementptr i8, ptr %s, i64 %0
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne.not = icmp eq i8 %ptr_arr_val, 91
  br i1 %icmpne.not, label %while.cond, label %common.ret

common.ret.loopexit:                              ; preds = %ifcont17, %while.cond
  %common.ret.op.ph = phi i1 [ true, %while.cond ], [ false, %ifcont17 ]
  br label %common.ret

common.ret:                                       ; preds = %while.cond, %while.cond, %common.ret.loopexit, %entry
  %common.ret.op = phi i1 [ %common.ret.op.ph, %common.ret.loopexit ], [ false, %entry ], [ false, %while.cond ], [ false, %while.cond ]
  ret i1 %common.ret.op

while.cond:                                       ; preds = %entry, %ifcont17
  %"CQB::Engine::j.0.in" = phi i32 [ %"CQB::Engine::j.0", %ifcont17 ], [ %start, %entry ]
  %"CQB::Engine::j.0" = add i32 %"CQB::Engine::j.0.in", 1
  %1 = sext i32 %"CQB::Engine::j.0" to i64
  %ptr_arr_addr7 = getelementptr i8, ptr %s, i64 %1
  %ptr_arr_val8 = load i8, ptr %ptr_arr_addr7, align 1
  switch i8 %ptr_arr_val8, label %ifcont17 [
    i8 93, label %common.ret.loopexit
    i8 10, label %common.ret
    i8 0, label %common.ret
  ]

ifcont17:                                         ; preds = %while.cond
  %2 = add i8 %ptr_arr_val8, -91
  %and = icmp ult i8 %2, -26
  %icmpeq23 = icmp ne i8 %ptr_arr_val8, 32
  %or24.not = and i1 %icmpeq23, %and
  br i1 %or24.not, label %common.ret.loopexit, label %while.cond
}

define weak_odr i32 @"CQB::Engine::countDone"(ptr %s) local_unnamed_addr !qc.return_types !39 {
entry:
  %ptr_arr_val42 = load i8, ptr %s, align 1
  %icmpne.not43 = icmp eq i8 %ptr_arr_val42, 0
  br i1 %icmpne.not43, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.end11
  %ptr_arr_addr46 = phi ptr [ %ptr_arr_addr, %while.end11 ], [ %s, %entry ]
  %"CQB::Engine::n.045" = phi i32 [ %spec.select, %while.end11 ], [ 0, %entry ]
  %"CQB::Engine::i.044" = phi i32 [ %spec.select41, %while.end11 ], [ 0, %entry ]
  %calltmp = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %ptr_arr_addr46, ptr noundef nonnull dereferenceable(7) @.str.86, i64 6)
  %icmpeq = icmp eq i32 %calltmp, 0
  %inc = zext i1 %icmpeq to i32
  %spec.select = add i32 %"CQB::Engine::n.045", %inc
  br label %while.cond9

while.end:                                        ; preds = %while.end11, %entry
  %"CQB::Engine::n.0.lcssa" = phi i32 [ 0, %entry ], [ %spec.select, %while.end11 ]
  ret i32 %"CQB::Engine::n.0.lcssa"

while.cond9:                                      ; preds = %while.body10, %while.body
  %"CQB::Engine::i.1" = phi i32 [ %"CQB::Engine::i.044", %while.body ], [ %inc23, %while.body10 ]
  %0 = sext i32 %"CQB::Engine::i.1" to i64
  %ptr_arr_addr14 = getelementptr i8, ptr %s, i64 %0
  %ptr_arr_val15 = load i8, ptr %ptr_arr_addr14, align 1
  switch i8 %ptr_arr_val15, label %while.body10 [
    i8 10, label %while.end11
    i8 0, label %while.end11
  ]

while.body10:                                     ; preds = %while.cond9
  %inc23 = add i32 %"CQB::Engine::i.1", 1
  br label %while.cond9

while.end11:                                      ; preds = %while.cond9, %while.cond9
  %icmpeq28 = icmp eq i8 %ptr_arr_val15, 10
  %inc32 = zext i1 %icmpeq28 to i32
  %spec.select41 = add i32 %"CQB::Engine::i.1", %inc32
  %1 = sext i32 %spec.select41 to i64
  %ptr_arr_addr = getelementptr i8, ptr %s, i64 %1
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne.not = icmp eq i8 %ptr_arr_val, 0
  br i1 %icmpne.not, label %while.end, label %while.body
}

define weak_odr void @"CQB::Engine::printWithoutProgress"(ptr %s) local_unnamed_addr !qc.return_types !34 {
entry:
  %ptr_arr_val50 = load i8, ptr %s, align 1
  %icmpne.not51 = icmp eq i8 %ptr_arr_val50, 0
  br i1 %icmpne.not51, label %while.end, label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %entry, %ifcont31
  %ptr_arr_addr53 = phi ptr [ %ptr_arr_addr, %ifcont31 ], [ %s, %entry ]
  %"CQB::Engine::i.052" = phi i32 [ %"CQB::Engine::i.2", %ifcont31 ], [ 0, %entry ]
  br label %while.cond4

while.end:                                        ; preds = %ifcont31, %entry
  ret void

while.cond4:                                      ; preds = %while.cond4.preheader, %while.body5
  %"CQB::Engine::i.1" = phi i32 [ %inc, %while.body5 ], [ %"CQB::Engine::i.052", %while.cond4.preheader ]
  %0 = sext i32 %"CQB::Engine::i.1" to i64
  %ptr_arr_addr9 = getelementptr i8, ptr %s, i64 %0
  %ptr_arr_val10 = load i8, ptr %ptr_arr_addr9, align 1
  switch i8 %ptr_arr_val10, label %while.body5 [
    i8 10, label %while.end6
    i8 0, label %while.end6
  ]

while.body5:                                      ; preds = %while.cond4
  %inc = add i32 %"CQB::Engine::i.1", 1
  br label %while.cond4

while.end6:                                       ; preds = %while.cond4, %while.cond4
  %ptr_arr_addr9.le = getelementptr i8, ptr %s, i64 %0
  %icmpeq = icmp eq i8 %ptr_arr_val10, 10
  store i8 0, ptr %ptr_arr_addr9.le, align 1
  %ptr_arr_val.i = load i8, ptr %ptr_arr_addr53, align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i, 91
  br i1 %icmpne.not.i, label %while.cond.i, label %then

while.cond.i:                                     ; preds = %while.end6, %ifcont17.i
  %"CQB::Engine::j.0.in.i" = phi i32 [ %"CQB::Engine::j.0.i", %ifcont17.i ], [ %"CQB::Engine::i.052", %while.end6 ]
  %"CQB::Engine::j.0.i" = add i32 %"CQB::Engine::j.0.in.i", 1
  %1 = sext i32 %"CQB::Engine::j.0.i" to i64
  %ptr_arr_addr7.i = getelementptr i8, ptr %s, i64 %1
  %ptr_arr_val8.i = load i8, ptr %ptr_arr_addr7.i, align 1
  switch i8 %ptr_arr_val8.i, label %ifcont17.i [
    i8 93, label %ifcont
    i8 10, label %then
    i8 0, label %then
  ]

ifcont17.i:                                       ; preds = %while.cond.i
  %2 = add i8 %ptr_arr_val8.i, -91
  %and.i = icmp ult i8 %2, -26
  %icmpeq23.i = icmp ne i8 %ptr_arr_val8.i, 32
  %or24.not.i = and i1 %icmpeq23.i, %and.i
  br i1 %or24.not.i, label %then, label %while.cond.i

then:                                             ; preds = %while.cond.i, %while.cond.i, %ifcont17.i, %while.end6
  tail call fastcc void @qc_print_string(ptr nonnull @0)
  tail call fastcc void @qc_fmt_string(ptr nonnull %ptr_arr_addr53)
  tail call fastcc void @qc_print_string(ptr nonnull @29)
  br label %ifcont

ifcont:                                           ; preds = %while.cond.i, %then
  br i1 %icmpeq, label %then30, label %ifcont31

then30:                                           ; preds = %ifcont
  store i8 10, ptr %ptr_arr_addr9.le, align 1
  %inc36 = add i32 %"CQB::Engine::i.1", 1
  %.pre = sext i32 %inc36 to i64
  br label %ifcont31

ifcont31:                                         ; preds = %then30, %ifcont
  %.pre-phi = phi i64 [ %.pre, %then30 ], [ %0, %ifcont ]
  %"CQB::Engine::i.2" = phi i32 [ %inc36, %then30 ], [ %"CQB::Engine::i.1", %ifcont ]
  %ptr_arr_addr = getelementptr i8, ptr %s, i64 %.pre-phi
  %ptr_arr_val = load i8, ptr %ptr_arr_addr, align 1
  %icmpne.not = icmp eq i8 %ptr_arr_val, 0
  br i1 %icmpne.not, label %while.end, label %while.cond4.preheader
}

define weak_odr i1 @"CQB::Engine::exited"(i32 %status) local_unnamed_addr !qc.return_types !27 {
entry:
  %andtmp = and i32 %status, 127
  %icmpeq = icmp eq i32 %andtmp, 0
  ret i1 %icmpeq
}

define weak_odr i32 @"CQB::Engine::exitStatus"(i32 %status) local_unnamed_addr !qc.return_types !39 {
entry:
  %ashrtmp = lshr i32 %status, 8
  %andtmp = and i32 %ashrtmp, 255
  ret i32 %andtmp
}

define weak_odr i1 @"CQB::Engine::signaled"(i32 %status) local_unnamed_addr !qc.return_types !27 {
entry:
  %andtmp = and i32 %status, 127
  %icmpne = icmp ne i32 %andtmp, 0
  %icmpne4 = icmp ne i32 %andtmp, 127
  %and = and i1 %icmpne, %icmpne4
  ret i1 %and
}

define weak_odr i32 @"CQB::Engine::termSignal"(i32 %status) local_unnamed_addr !qc.return_types !39 {
entry:
  %andtmp = and i32 %status, 127
  ret i32 %andtmp
}

define weak_odr i32 @"CQB::Engine::decodeStatus"(i32 %status) local_unnamed_addr !qc.return_types !39 {
entry:
  %andtmp.i = and i32 %status, 127
  switch i32 %andtmp.i, label %then7 [
    i32 0, label %then
    i32 127, label %common.ret
  ]

common.ret:                                       ; preds = %entry, %then7, %then
  %common.ret.op = phi i32 [ %andtmp.i14, %then ], [ %add, %then7 ], [ -1, %entry ]
  ret i32 %common.ret.op

then:                                             ; preds = %entry
  %ashrtmp.i = lshr i32 %status, 8
  %andtmp.i14 = and i32 %ashrtmp.i, 255
  br label %common.ret

then7:                                            ; preds = %entry
  %add = or disjoint i32 %andtmp.i, 128
  br label %common.ret
}

define weak_odr %"CQB::Engine::RunResult" @"CQB::Engine::runCommand"(%"Vector::Vec<char*>" %args, ptr %label, i1 %tty) local_unnamed_addr !qc.return_types !63 {
entry:
  %ts.i161 = alloca %timespec, align 8
  %ts.i153 = alloca %timespec, align 8
  %ts.i = alloca %timespec, align 8
  %"CQB::Engine::status" = alloca i32, align 4
  %"CQB::Engine::phase" = alloca [32 x i8], align 1
  %"CQB::Engine::line" = alloca [512 x i8], align 1
  %"CQB::Engine::buf" = alloca [4096 x i8], align 1
  %"CQB::Engine::pid" = alloca i32, align 4
  %fa = alloca %posix_spawn_file_actions_t, align 8
  %"CQB::Engine::fds" = alloca [2 x i32], align 8
  %tty3.sroa.0 = alloca i8, align 1
  %args.fca.0.extract = extractvalue %"Vector::Vec<char*>" %args, 0
  %args.fca.1.extract = extractvalue %"Vector::Vec<char*>" %args, 1
  %args.fca.2.extract = extractvalue %"Vector::Vec<char*>" %args, 2
  store i1 %tty, ptr %tty3.sroa.0, align 1
  store i64 0, ptr %"CQB::Engine::fds", align 8
  %calltmp = call i32 @pipe(ptr nonnull %"CQB::Engine::fds")
  %icmpne.not = icmp eq i32 %calltmp, 0
  br i1 %icmpne.not, label %ifcont, label %common.ret

common.ret:                                       ; preds = %entry, %"CQB::Engine::decodeStatus.exit", %then28
  %common.ret.op = phi %"CQB::Engine::RunResult" [ %5, %"CQB::Engine::decodeStatus.exit" ], [ { i32 -1, ptr @.str.89 }, %then28 ], [ { i32 -1, ptr @.str.88 }, %entry ]
  ret %"CQB::Engine::RunResult" %common.ret.op

ifcont:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %fa, i8 0, i64 80, i1 false)
  %calltmp5 = call i32 @posix_spawn_file_actions_init(ptr nonnull %fa)
  %arr_elem_ptr = getelementptr inbounds nuw i8, ptr %"CQB::Engine::fds", i64 4
  %arr_elem = load i32, ptr %arr_elem_ptr, align 4
  %calltmp7 = call i32 @posix_spawn_file_actions_adddup2(ptr nonnull %fa, i32 %arr_elem, i32 1)
  %arr_elem10 = load i32, ptr %arr_elem_ptr, align 4
  %calltmp11 = call i32 @posix_spawn_file_actions_adddup2(ptr nonnull %fa, i32 %arr_elem10, i32 2)
  %arr_elem14 = load i32, ptr %"CQB::Engine::fds", align 8
  %calltmp15 = call i32 @posix_spawn_file_actions_addclose(ptr nonnull %fa, i32 %arr_elem14)
  %arr_elem18 = load i32, ptr %arr_elem_ptr, align 4
  %calltmp19 = call i32 @posix_spawn_file_actions_addclose(ptr nonnull %fa, i32 %arr_elem18)
  %icmple.not.i = icmp sgt i32 %args.fca.2.extract, %args.fca.1.extract
  br i1 %icmple.not.i, label %ifcont.i, label %then.i

then.i:                                           ; preds = %ifcont
  %icmpeq.i = icmp eq i32 %args.fca.2.extract, 0
  %mul.i = shl i32 %args.fca.2.extract, 1
  %select_val.i = select i1 %icmpeq.i, i32 1, i32 %mul.i
  %icmpeq.i.i = icmp eq i32 %select_val.i, 0
  br i1 %icmpeq.i.i, label %then.i.i, label %ifcont.i.i

then.i.i:                                         ; preds = %then.i
  call fastcc void @qc_free(ptr %args.fca.0.extract)
  br label %"Vector::Vec<char*>_push_T.exit"

ifcont.i.i:                                       ; preds = %then.i
  %promote_int.i.i = sext i32 %select_val.i to i64
  %mul.i.i = shl nsw i64 %promote_int.i.i, 3
  %builtin_call.i.i = call fastcc ptr @qc_realloc(ptr %args.fca.0.extract, i64 %mul.i.i)
  %ptr_eq.i.i = icmp eq ptr %builtin_call.i.i, null
  br i1 %ptr_eq.i.i, label %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", label %ifcont5.i.i

ifcont5.i.i:                                      ; preds = %ifcont.i.i
  %spec.select177 = call i32 @llvm.smin.i32(i32 %args.fca.1.extract, i32 %select_val.i)
  br label %ifcont.i

"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i": ; preds = %ifcont.i.i
  %0 = icmp eq ptr %args.fca.0.extract, null
  br i1 %0, label %"Vector::Vec<char*>_push_T.exit", label %ifcont.i

ifcont.i:                                         ; preds = %ifcont5.i.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont
  %args1.sroa.0.0 = phi ptr [ %args.fca.0.extract, %ifcont ], [ %builtin_call.i.i, %ifcont5.i.i ], [ %args.fca.0.extract, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %size5.i = phi i32 [ %args.fca.1.extract, %ifcont ], [ %spec.select177, %ifcont5.i.i ], [ %args.fca.1.extract, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  %1 = sext i32 %size5.i to i64
  %ptr_arr_asi.i = getelementptr [8 x i8], ptr %args1.sroa.0.0, i64 %1
  store ptr null, ptr %ptr_arr_asi.i, align 8
  br label %"Vector::Vec<char*>_push_T.exit"

"Vector::Vec<char*>_push_T.exit":                 ; preds = %then.i.i, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i", %ifcont.i
  %args1.sroa.0.1 = phi ptr [ %args1.sroa.0.0, %ifcont.i ], [ null, %then.i.i ], [ null, %"Vector::Vec<char*>_reserve_int.exitthread-pre-split.i" ]
  store i32 0, ptr %"CQB::Engine::pid", align 4
  %ptr_arr_val = load ptr, ptr %args1.sroa.0.1, align 8
  %__environ = load ptr, ptr @__environ, align 8
  %calltmp22 = call i32 @posix_spawnp(ptr nonnull %"CQB::Engine::pid", ptr %ptr_arr_val, ptr nonnull %fa, ptr null, ptr nonnull %args1.sroa.0.1, ptr %__environ)
  %calltmp24 = call i32 @posix_spawn_file_actions_destroy(ptr nonnull %fa)
  %arr_elem26 = load i32, ptr %arr_elem_ptr, align 4
  call fastcc void @qc_close(i32 %arr_elem26)
  %icmpne27.not = icmp eq i32 %calltmp22, 0
  br i1 %icmpne27.not, label %ifcont29, label %then28

then28:                                           ; preds = %"Vector::Vec<char*>_push_T.exit"
  %arr_elem31 = load i32, ptr %"CQB::Engine::fds", align 8
  call fastcc void @qc_close(i32 %arr_elem31)
  br label %common.ret

ifcont29:                                         ; preds = %"Vector::Vec<char*>_push_T.exit"
  %builtin_call.i = call fastcc ptr @qc_malloc(i64 1)
  store i8 0, ptr %builtin_call.i, align 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %"CQB::Engine::buf", i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %"CQB::Engine::line", i8 0, i64 512, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %"CQB::Engine::phase", i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i)
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %ts.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i, i8 0, i64 16, i1 false)
  %calltmp.i = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i)
  %tv_sec.i = load i64, ptr %ts.i, align 8
  %tv_nsec.i = load i64, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i)
  %arr_elem34 = load i32, ptr %"CQB::Engine::fds", align 8
  %builtin_call = call fastcc i64 @qc_read(i32 %arr_elem34, ptr %"CQB::Engine::buf")
  %"CQB::Engine::n.0192" = trunc i64 %builtin_call to i32
  %icmpgt193 = icmp sgt i32 %"CQB::Engine::n.0192", 0
  br i1 %icmpgt193, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %ifcont29
  %sdiv.i = sdiv i64 %tv_nsec.i, 1000000
  %mul.i134 = mul i64 %tv_sec.i, 1000
  %add.i135 = add i64 %sdiv.i, %mul.i134
  %.fca.1.gep.i162 = getelementptr inbounds nuw i8, ptr %ts.i161, i64 8
  %.fca.1.gep.i154 = getelementptr inbounds nuw i8, ptr %ts.i153, i64 8
  %tty3.sroa.0.0.tty3.sroa.0.0.tty3.sroa.0.0.tty3.sroa.0.0.tty3.0.tty98 = load i1, ptr %tty3.sroa.0, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %for.end
  %"CQB::Engine::lineLen.0200" = phi i32 [ 0, %while.body.lr.ph ], [ %"CQB::Engine::lineLen.2", %for.end ]
  %"CQB::Engine::steps.0199" = phi i32 [ 0, %while.body.lr.ph ], [ %"CQB::Engine::steps.2", %for.end ]
  %"CQB::Engine::phaseStart.0198" = phi i64 [ %add.i135, %while.body.lr.ph ], [ %"CQB::Engine::phaseStart.2", %for.end ]
  %"CQB::Engine::lastStepMs.0197" = phi i64 [ 0, %while.body.lr.ph ], [ %"CQB::Engine::lastStepMs.2", %for.end ]
  %"CQB::Engine::n.0.in196" = phi i64 [ %builtin_call, %while.body.lr.ph ], [ %builtin_call110, %for.end ]
  %outs.sroa.8.0195 = phi i64 [ 0, %while.body.lr.ph ], [ %add.i141, %for.end ]
  %outs.sroa.0.0194 = phi ptr [ %builtin_call.i, %while.body.lr.ph ], [ %builtin_call.i142, %for.end ]
  %2 = and i64 %"CQB::Engine::n.0.in196", 2147483647
  %arr_elem_ptr37 = getelementptr inbounds nuw i8, ptr %"CQB::Engine::buf", i64 %2
  store i8 0, ptr %arr_elem_ptr37, align 1
  %strlen.i136 = call i64 @strlen(ptr nonnull dereferenceable(1) %"CQB::Engine::buf")
  %add.i138 = add i64 %strlen.i136, 1
  %builtin_call.i139 = call fastcc ptr @qc_malloc(i64 %add.i138)
  call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i139, ptr nonnull align 1 %"CQB::Engine::buf", i64 %add.i138, i1 false)
  %add.i141 = add i64 %strlen.i136, %outs.sroa.8.0195
  %add2.i = add i64 %add.i141, 1
  %builtin_call.i142 = call fastcc ptr @qc_realloc(ptr %outs.sroa.0.0194, i64 %add2.i)
  %icmplt27.i = icmp sgt i64 %strlen.i136, 0
  br i1 %icmplt27.i, label %for.body.i.preheader, label %for.body.preheader

for.body.i.preheader:                             ; preds = %while.body
  %3 = getelementptr i8, ptr %builtin_call.i142, i64 %outs.sroa.8.0195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %builtin_call.i139, i64 %strlen.i136, i1 false)
  br label %for.body.preheader

for.body.preheader:                               ; preds = %while.body, %for.body.i.preheader
  %ptr_arr_asi15.i = getelementptr i8, ptr %builtin_call.i142, i64 %add.i141
  store i8 0, ptr %ptr_arr_asi15.i, align 1
  call fastcc void @qc_free(ptr %builtin_call.i139)
  %wide.trip.count211 = and i64 %"CQB::Engine::n.0.in196", 4294967295
  br label %for.body

while.end:                                        ; preds = %for.end, %ifcont29
  %outs.sroa.0.0.lcssa = phi ptr [ %builtin_call.i, %ifcont29 ], [ %builtin_call.i142, %for.end ]
  %arr_elem113 = load i32, ptr %"CQB::Engine::fds", align 8
  call fastcc void @qc_close(i32 %arr_elem113)
  store i32 0, ptr %"CQB::Engine::status", align 4
  %pid114 = load i32, ptr %"CQB::Engine::pid", align 4
  %calltmp115 = call i32 @waitpid(i32 %pid114, ptr nonnull %"CQB::Engine::status", i32 0)
  %status116 = load i32, ptr %"CQB::Engine::status", align 4
  %andtmp.i.i = and i32 %status116, 127
  switch i32 %andtmp.i.i, label %then7.i [
    i32 0, label %then.i147
    i32 127, label %"CQB::Engine::decodeStatus.exit"
  ]

then.i147:                                        ; preds = %while.end
  %ashrtmp.i.i = lshr i32 %status116, 8
  %andtmp.i14.i = and i32 %ashrtmp.i.i, 255
  br label %"CQB::Engine::decodeStatus.exit"

then7.i:                                          ; preds = %while.end
  %add.i148 = or disjoint i32 %andtmp.i.i, 128
  br label %"CQB::Engine::decodeStatus.exit"

"CQB::Engine::decodeStatus.exit":                 ; preds = %while.end, %then.i147, %then7.i
  %common.ret.op.i = phi i32 [ %andtmp.i14.i, %then.i147 ], [ %add.i148, %then7.i ], [ -1, %while.end ]
  %4 = insertvalue %"CQB::Engine::RunResult" zeroinitializer, i32 %common.ret.op.i, 0
  %5 = insertvalue %"CQB::Engine::RunResult" %4, ptr %outs.sroa.0.0.lcssa, 1
  br label %common.ret

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv208 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next209, %for.inc ]
  %"CQB::Engine::lineLen.1187" = phi i32 [ %"CQB::Engine::lineLen.0200", %for.body.preheader ], [ %"CQB::Engine::lineLen.2", %for.inc ]
  %"CQB::Engine::steps.1186" = phi i32 [ %"CQB::Engine::steps.0199", %for.body.preheader ], [ %"CQB::Engine::steps.2", %for.inc ]
  %"CQB::Engine::phaseStart.1185" = phi i64 [ %"CQB::Engine::phaseStart.0198", %for.body.preheader ], [ %"CQB::Engine::phaseStart.2", %for.inc ]
  %"CQB::Engine::lastStepMs.1184" = phi i64 [ %"CQB::Engine::lastStepMs.0197", %for.body.preheader ], [ %"CQB::Engine::lastStepMs.2", %for.inc ]
  %arr_elem_ptr43 = getelementptr inbounds nuw i8, ptr %"CQB::Engine::buf", i64 %indvars.iv208
  %arr_elem44 = load i8, ptr %arr_elem_ptr43, align 1
  %icmpne45.not = icmp eq i8 %arr_elem44, 10
  br i1 %icmpne45.not, label %ifcont47, label %then46

for.inc:                                          ; preds = %while.cond.i, %while.cond.i, %ifcont17.i, %ifcont47, %ifcont93, %then99, %then46, %then49
  %"CQB::Engine::lastStepMs.2" = phi i64 [ %"CQB::Engine::lastStepMs.1184", %then49 ], [ %"CQB::Engine::lastStepMs.1184", %then46 ], [ %"CQB::Engine::lastStepMs.1184", %ifcont47 ], [ %"CQB::Engine::lastStepMs.3", %then99 ], [ %"CQB::Engine::lastStepMs.3", %ifcont93 ], [ %"CQB::Engine::lastStepMs.1184", %ifcont17.i ], [ %"CQB::Engine::lastStepMs.1184", %while.cond.i ], [ %"CQB::Engine::lastStepMs.1184", %while.cond.i ]
  %"CQB::Engine::phaseStart.2" = phi i64 [ %"CQB::Engine::phaseStart.1185", %then49 ], [ %"CQB::Engine::phaseStart.1185", %then46 ], [ %"CQB::Engine::phaseStart.1185", %ifcont47 ], [ %"CQB::Engine::phaseStart.3", %then99 ], [ %"CQB::Engine::phaseStart.3", %ifcont93 ], [ %"CQB::Engine::phaseStart.1185", %ifcont17.i ], [ %"CQB::Engine::phaseStart.1185", %while.cond.i ], [ %"CQB::Engine::phaseStart.1185", %while.cond.i ]
  %"CQB::Engine::steps.2" = phi i32 [ %"CQB::Engine::steps.1186", %then49 ], [ %"CQB::Engine::steps.1186", %then46 ], [ %"CQB::Engine::steps.1186", %ifcont47 ], [ %"CQB::Engine::steps.3", %then99 ], [ %"CQB::Engine::steps.3", %ifcont93 ], [ %"CQB::Engine::steps.1186", %ifcont17.i ], [ %"CQB::Engine::steps.1186", %while.cond.i ], [ %"CQB::Engine::steps.1186", %while.cond.i ]
  %"CQB::Engine::lineLen.2" = phi i32 [ %inc, %then49 ], [ %"CQB::Engine::lineLen.1187", %then46 ], [ 0, %ifcont47 ], [ 0, %then99 ], [ 0, %ifcont93 ], [ 0, %ifcont17.i ], [ 0, %while.cond.i ], [ 0, %while.cond.i ]
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1
  %exitcond212.not = icmp eq i64 %indvars.iv.next209, %wide.trip.count211
  br i1 %exitcond212.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %arr_elem108 = load i32, ptr %"CQB::Engine::fds", align 8
  %builtin_call110 = call fastcc i64 @qc_read(i32 %arr_elem108, ptr %"CQB::Engine::buf")
  %"CQB::Engine::n.0" = trunc i64 %builtin_call110 to i32
  %icmpgt = icmp sgt i32 %"CQB::Engine::n.0", 0
  br i1 %icmpgt, label %while.body, label %while.end

then46:                                           ; preds = %for.body
  %icmplt48 = icmp slt i32 %"CQB::Engine::lineLen.1187", 511
  br i1 %icmplt48, label %then49, label %for.inc

ifcont47:                                         ; preds = %for.body
  %6 = sext i32 %"CQB::Engine::lineLen.1187" to i64
  %arr_elem_ptr57 = getelementptr inbounds i8, ptr %"CQB::Engine::line", i64 %6
  store i8 0, ptr %arr_elem_ptr57, align 1
  %ptr_arr_val.i151 = load i8, ptr %"CQB::Engine::line", align 1
  %icmpne.not.i = icmp eq i8 %ptr_arr_val.i151, 91
  br i1 %icmpne.not.i, label %while.cond.i, label %for.inc

while.cond.i:                                     ; preds = %ifcont47, %ifcont17.i
  %"CQB::Engine::j.0.in.i" = phi i32 [ %"CQB::Engine::j.0.i", %ifcont17.i ], [ 0, %ifcont47 ]
  %"CQB::Engine::j.0.i" = add i32 %"CQB::Engine::j.0.in.i", 1
  %7 = sext i32 %"CQB::Engine::j.0.i" to i64
  %ptr_arr_addr7.i = getelementptr i8, ptr %"CQB::Engine::line", i64 %7
  %ptr_arr_val8.i = load i8, ptr %ptr_arr_addr7.i, align 1
  switch i8 %ptr_arr_val8.i, label %ifcont17.i [
    i8 93, label %while.cond65.preheader
    i8 10, label %for.inc
    i8 0, label %for.inc
  ]

while.cond65.preheader:                           ; preds = %while.cond.i
  %icmplt68178 = icmp sgt i32 %"CQB::Engine::lineLen.1187", 1
  br i1 %icmplt68178, label %and.rhs.preheader, label %while.end67

and.rhs.preheader:                                ; preds = %while.cond65.preheader
  %8 = add nsw i32 %"CQB::Engine::lineLen.1187", -1
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %and.rhs

ifcont17.i:                                       ; preds = %while.cond.i
  %9 = add i8 %ptr_arr_val8.i, -91
  %and.i = icmp ult i8 %9, -26
  %icmpeq23.i = icmp ne i8 %ptr_arr_val8.i, 32
  %or24.not.i = and i1 %icmpeq23.i, %and.i
  br i1 %or24.not.i, label %for.inc, label %while.cond.i

then49:                                           ; preds = %then46
  %10 = sext i32 %"CQB::Engine::lineLen.1187" to i64
  %arr_elem_ptr55 = getelementptr inbounds i8, ptr %"CQB::Engine::line", i64 %10
  store i8 %arr_elem44, ptr %arr_elem_ptr55, align 1
  %inc = add nsw i32 %"CQB::Engine::lineLen.1187", 1
  br label %for.inc

while.body66:                                     ; preds = %and.rhs
  %arr_elem_ptr81 = getelementptr inbounds nuw i8, ptr %"CQB::Engine::phase", i64 %indvars.iv203
  store i8 %arr_elem71, ptr %arr_elem_ptr81, align 1
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count
  br i1 %exitcond.not, label %while.end67.loopexit.loopexit, label %and.rhs

while.end67.loopexit.loopexit:                    ; preds = %while.body66
  %11 = zext nneg i32 %8 to i64
  br label %while.end67

while.end67:                                      ; preds = %and.rhs, %while.end67.loopexit.loopexit, %while.cond65.preheader
  %"CQB::Engine::p.0.lcssa" = phi i64 [ 0, %while.cond65.preheader ], [ %11, %while.end67.loopexit.loopexit ], [ %indvars.iv203, %and.rhs ]
  %arr_elem_ptr87 = getelementptr inbounds nuw i8, ptr %"CQB::Engine::phase", i64 %"CQB::Engine::p.0.lcssa"
  store i8 0, ptr %arr_elem_ptr87, align 1
  %12 = load i32, ptr %"CQB::Engine::phase", align 1
  %13 = xor i32 %12, 1162760004
  %14 = getelementptr i8, ptr %"CQB::Engine::phase", i64 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 32
  %18 = or i32 %13, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %icmpeq = icmp eq i32 %20, 0
  br i1 %icmpeq, label %then92, label %else

and.rhs:                                          ; preds = %and.rhs.preheader, %while.body66
  %indvars.iv203 = phi i64 [ 0, %and.rhs.preheader ], [ %indvars.iv.next204, %while.body66 ]
  %indvars.iv = phi i64 [ 1, %and.rhs.preheader ], [ %indvars.iv.next, %while.body66 ]
  %arr_elem_ptr70 = getelementptr inbounds nuw i8, ptr %"CQB::Engine::line", i64 %indvars.iv
  %arr_elem71 = load i8, ptr %arr_elem_ptr70, align 1
  %icmpne72 = icmp ne i8 %arr_elem71, 93
  %icmplt75 = icmp samesign ult i64 %indvars.iv203, 31
  %or.cond = select i1 %icmpne72, i1 %icmplt75, i1 false
  br i1 %or.cond, label %while.body66, label %while.end67

then92:                                           ; preds = %while.end67
  %inc95 = add i32 %"CQB::Engine::steps.1186", 1
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i153)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i153, i8 0, i64 16, i1 false)
  %calltmp.i155 = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i153)
  %tv_sec.i156 = load i64, ptr %ts.i153, align 8
  %mul.i157 = mul i64 %tv_sec.i156, 1000
  %tv_nsec.i158 = load i64, ptr %.fca.1.gep.i154, align 8
  %sdiv.i159 = sdiv i64 %tv_nsec.i158, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i153)
  %add.i160 = sub i64 %mul.i157, %"CQB::Engine::phaseStart.1185"
  %sub = add i64 %add.i160, %sdiv.i159
  br label %ifcont93

ifcont93:                                         ; preds = %else, %then92
  %"CQB::Engine::lastStepMs.3" = phi i64 [ %sub, %then92 ], [ %"CQB::Engine::lastStepMs.1184", %else ]
  %"CQB::Engine::phaseStart.3" = phi i64 [ %"CQB::Engine::phaseStart.1185", %then92 ], [ %add.i168, %else ]
  %"CQB::Engine::steps.3" = phi i32 [ %inc95, %then92 ], [ %"CQB::Engine::steps.1186", %else ]
  br i1 %tty3.sroa.0.0.tty3.sroa.0.0.tty3.sroa.0.0.tty3.sroa.0.0.tty3.0.tty98, label %then99, label %for.inc

else:                                             ; preds = %while.end67
  call void @llvm.lifetime.start.p0(ptr nonnull %ts.i161)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ts.i161, i8 0, i64 16, i1 false)
  %calltmp.i163 = call i32 @clock_gettime(i32 1, ptr nonnull %ts.i161)
  %tv_sec.i164 = load i64, ptr %ts.i161, align 8
  %mul.i165 = mul i64 %tv_sec.i164, 1000
  %tv_nsec.i166 = load i64, ptr %.fca.1.gep.i162, align 8
  %sdiv.i167 = sdiv i64 %tv_nsec.i166, 1000000
  %add.i168 = add i64 %sdiv.i167, %mul.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %ts.i161)
  br label %ifcont93

then99:                                           ; preds = %ifcont93
  call fastcc void @qc_print_string(ptr nonnull @1)
  call fastcc void @qc_fmt_string(ptr %label)
  %21 = sext i32 %"CQB::Engine::steps.3" to i64
  call fastcc void @qc_print_string(ptr nonnull @2)
  call fastcc void @qc_fmt_int(i64 %21, i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @3)
  call fastcc void @qc_fmt_int(i64 %"CQB::Engine::lastStepMs.3", i32 -1, i1 false)
  call fastcc void @qc_print_string(ptr nonnull @4)
  call fastcc void @qc_fmt_string(ptr nonnull %"CQB::Engine::phase")
  call fastcc void @qc_print_string(ptr nonnull @5)
  call fastcc void @qc_flush()
  br label %for.inc
}

define weak_odr void @"Vector::Vec<bool>_Vec"(ptr %0) local_unnamed_addr !qc.return_types !15 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

define weak_odr void @"Vector::Vec<bool>_reserve_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %icmpeq = icmp eq i32 %1, 0
  %data = load ptr, ptr %0, align 8
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %ifcont, %ifcont9, %then
  ret void

then:                                             ; preds = %entry
  tail call fastcc void @qc_free(ptr %data)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont:                                           ; preds = %entry
  %promote_int = sext i32 %1 to i64
  %builtin_call = tail call fastcc ptr @qc_realloc(ptr %data, i64 %promote_int)
  %ptr_eq = icmp eq ptr %builtin_call, null
  br i1 %ptr_eq, label %common.ret, label %ifcont5

ifcont5:                                          ; preds = %ifcont
  %capacity_ptr7 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %capacity_ptr7, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 8
  %icmpgt = icmp sgt i32 %size, %1
  br i1 %icmpgt, label %then8, label %ifcont9

then8:                                            ; preds = %ifcont5
  store i32 %1, ptr %2, align 8
  br label %ifcont9

ifcont9:                                          ; preds = %then8, %ifcont5
  store ptr %builtin_call, ptr %0, align 8
  br label %common.ret
}

define weak_odr void @"Vector::Vec<bool>_push_T"(ptr %0, i1 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity = load i32, ptr %2, align 4
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmple.not = icmp sgt i32 %capacity, %size
  %data6.pre = load ptr, ptr %0, align 8
  br i1 %icmple.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq = icmp eq i32 %capacity, 0
  %mul = shl i32 %capacity, 1
  %select_val = select i1 %icmpeq, i32 1, i32 %mul
  %icmpeq.i = icmp eq i32 %select_val, 0
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data6.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %common.ret

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %select_val to i64
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data6.pre, i64 %promote_int.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<bool>_reserve_int.exitthread-pre-split", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %select_val, ptr %2, align 4
  %size.i = load i32, ptr %3, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %select_val
  br i1 %icmpgt.i, label %then8.i, label %"Vector::Vec<bool>_reserve_int.exit.thread"

then8.i:                                          ; preds = %ifcont5.i
  store i32 %select_val, ptr %3, align 8
  br label %"Vector::Vec<bool>_reserve_int.exit.thread"

"Vector::Vec<bool>_reserve_int.exit.thread":      ; preds = %ifcont5.i, %then8.i
  %size511 = phi i32 [ %size.i, %ifcont5.i ], [ %select_val, %then8.i ]
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

"Vector::Vec<bool>_reserve_int.exitthread-pre-split": ; preds = %ifcont.i
  %data.pr = load ptr, ptr %0, align 8
  %4 = icmp eq ptr %data.pr, null
  br i1 %4, label %common.ret, label %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.ifcont_crit_edge"

"Vector::Vec<bool>_reserve_int.exitthread-pre-split.ifcont_crit_edge": ; preds = %"Vector::Vec<bool>_reserve_int.exitthread-pre-split"
  %size5.pre = load i32, ptr %3, align 8
  br label %ifcont

common.ret:                                       ; preds = %then.i, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split", %ifcont
  ret void

ifcont:                                           ; preds = %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.ifcont_crit_edge", %"Vector::Vec<bool>_reserve_int.exit.thread", %entry
  %data6 = phi ptr [ %data.pr, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %builtin_call.i, %"Vector::Vec<bool>_reserve_int.exit.thread" ], [ %data6.pre, %entry ]
  %size5 = phi i32 [ %size5.pre, %"Vector::Vec<bool>_reserve_int.exitthread-pre-split.ifcont_crit_edge" ], [ %size511, %"Vector::Vec<bool>_reserve_int.exit.thread" ], [ %size, %entry ]
  %5 = sext i32 %size5 to i64
  %ptr_arr_asi = getelementptr i8, ptr %data6, i64 %5
  store i1 %1, ptr %ptr_arr_asi, align 1
  %inc_deref = load i32, ptr %3, align 8
  %inc = add i32 %inc_deref, 1
  store i32 %inc, ptr %3, align 8
  br label %common.ret
}

define weak_odr i32 @"Vector::Vec<bool>_length"(ptr %0) local_unnamed_addr !qc.return_types !39 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  ret i32 %size
}

define weak_odr void @"Vector::Vec<bool>_pop"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpgt = icmp sgt i32 %size, 0
  br i1 %icmpgt, label %then, label %ifcont

then:                                             ; preds = %entry
  %dec = add nsw i32 %size, -1
  store i32 %dec, ptr %1, align 4
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  ret void
}

define weak_odr void @"Vector::Vec<bool>_shrinkToFit"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq.i = icmp eq i32 %size, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %entry
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"Vector::Vec<bool>_reserve_int.exit"

ifcont.i:                                         ; preds = %entry
  %promote_int.i = sext i32 %size to i64
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %promote_int.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %"Vector::Vec<bool>_reserve_int.exit", label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  %capacity_ptr7.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %size, ptr %capacity_ptr7.i, align 4
  %size.i = load i32, ptr %1, align 8
  %icmpgt.i = icmp sgt i32 %size.i, %size
  br i1 %icmpgt.i, label %then8.i, label %ifcont9.i

then8.i:                                          ; preds = %ifcont5.i
  store i32 %size, ptr %1, align 8
  br label %ifcont9.i

ifcont9.i:                                        ; preds = %then8.i, %ifcont5.i
  store ptr %builtin_call.i, ptr %0, align 8
  br label %"Vector::Vec<bool>_reserve_int.exit"

"Vector::Vec<bool>_reserve_int.exit":             ; preds = %then.i, %ifcont.i, %ifcont9.i
  ret void
}

define weak_odr void @"Vector::Vec<bool>_operator[]=_T*_addr_t"(ptr %0, ptr %1, i64 %2) local_unnamed_addr !qc.return_types !34 {
entry:
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %3, align 4
  %icmpne.not = icmp eq i32 %size, 0
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %data1 = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data1)
  br label %ifcont

ifcont:                                           ; preds = %then, %entry
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %trunc = trunc i64 %2 to i32
  store i32 %trunc, ptr %capacity_ptr, align 4
  store i32 %trunc, ptr %3, align 4
  %sext = shl i64 %2, 32
  %promote_int = ashr exact i64 %sext, 32
  %builtin_call = tail call fastcc ptr @qc_malloc(i64 %promote_int)
  store ptr %builtin_call, ptr %0, align 8
  %size514 = load i32, ptr %3, align 8
  %icmplt15 = icmp sgt i32 %size514, 0
  br i1 %icmplt15, label %for.body, label %for.end

for.body:                                         ; preds = %ifcont, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %ifcont ]
  %data7 = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr i8, ptr %data7, i64 %indvars.iv
  %ptr_arr_addr = getelementptr i8, ptr %1, i64 %indvars.iv
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %size5 = load i32, ptr %3, align 8
  %4 = sext i32 %size5 to i64
  %icmplt = icmp slt i64 %indvars.iv.next, %4
  br i1 %icmplt, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %ifcont
  ret void
}

define weak_odr ptr @"Vector::Vec<bool>_operator[]_addr_t"(ptr %0, i64 %1) local_unnamed_addr !qc.return_types !40 {
entry:
  %data = load ptr, ptr %0, align 8
  %lval_ptr_arr_addr = getelementptr i8, ptr %data, i64 %1
  ret ptr %lval_ptr_arr_addr
}

define weak_odr void @"Vector::Iterator::It<bool>_It_T*_int_bool"(ptr %0, ptr %1, i32 %2, i1 %3) local_unnamed_addr !qc.return_types !15 {
entry:
  store ptr %1, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %size_ptr, align 8
  %select_val = select i1 %3, i32 %2, i32 0
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %select_val, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atEnd"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %2, align 4
  %icmple = icmp sle i32 %size, %current_index
  ret i1 %icmple
}

define weak_odr i1 @"Vector::Iterator::It<bool>__next"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.93, ptr nonnull @6, i32 132) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i.not = icmp sgt i32 %size, %current_index.i
  br i1 %icmple.i.not, label %then1, label %ifcont2

common.ret:                                       ; preds = %ifcont2, %then1
  %sub.sink = phi i32 [ %sub, %ifcont2 ], [ %current_index.i, %then1 ]
  %data4 = load ptr, ptr %0, align 8
  %3 = sext i32 %sub.sink to i64
  %ptr_arr_addr5 = getelementptr i8, ptr %data4, i64 %3
  %common.ret.op = load i1, ptr %ptr_arr_addr5, align 1
  ret i1 %common.ret.op

then1:                                            ; preds = %ifcont
  %inc = add nsw i32 %current_index.i, 1
  store i32 %inc, ptr %2, align 4
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %sub = add i32 %size, -1
  br label %common.ret
}

define weak_odr i1 @"Vector::Iterator::It<bool>__atStart"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index = load i32, ptr %1, align 4
  %icmple = icmp slt i32 %current_index, 1
  ret i1 %icmple
}

define weak_odr i1 @"Vector::Iterator::It<bool>__prev"(ptr %0) local_unnamed_addr !qc.return_types !41 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  br i1 %icmpeq, label %then, label %ifcont

then:                                             ; preds = %entry
  tail call fastcc void @__qc_panic(ptr nonnull @.str.94, ptr nonnull @6, i32 144) #29
  unreachable

ifcont:                                           ; preds = %entry
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %current_index.i = load i32, ptr %2, align 4
  %icmple.i = icmp slt i32 %current_index.i, 1
  br i1 %icmple.i, label %ifcont2, label %then1

common.ret:                                       ; preds = %ifcont2, %then1
  %common.ret.op.in = phi ptr [ %ptr_arr_addr, %then1 ], [ %ptr_arr_addr4, %ifcont2 ]
  %common.ret.op = load i1, ptr %common.ret.op.in, align 1
  ret i1 %common.ret.op

then1:                                            ; preds = %ifcont
  %dec = add nsw i32 %current_index.i, -1
  store i32 %dec, ptr %2, align 4
  %data = load ptr, ptr %0, align 8
  %3 = zext nneg i32 %dec to i64
  %ptr_arr_addr = getelementptr i8, ptr %data, i64 %3
  br label %common.ret

ifcont2:                                          ; preds = %ifcont
  %data3 = load ptr, ptr %0, align 8
  %4 = sext i32 %current_index.i to i64
  %ptr_arr_addr4 = getelementptr i8, ptr %data3, i64 %4
  br label %common.ret
}

define weak_odr void @"Vector::Iterator::It<bool>__moveTo_int"(ptr %0, i32 %1) local_unnamed_addr !qc.return_types !34 {
entry:
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %2, align 4
  %icmpge.not = icmp slt i32 %1, %size
  %sub = add i32 %size, -1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %index.0 = select i1 %icmpge.not, i32 %spec.store.select, i32 %sub
  %current_index_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %index.0, ptr %current_index_ptr, align 4
  ret void
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__begin"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<bool>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<bool>" poison, ptr %data, 0
  %"Vector::Iterator::It<bool>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<bool>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.1.insert", i32 0, 2
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.2.insert"
}

define weak_odr %"Vector::Iterator::It<bool>" @"Vector::Vec<bool>__end"(ptr %0) local_unnamed_addr !qc.return_types !42 {
entry:
  %data = load ptr, ptr %0, align 8
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 8
  %"Vector::Iterator::It<bool>_inst.fca.0.insert" = insertvalue %"Vector::Iterator::It<bool>" poison, ptr %data, 0
  %"Vector::Iterator::It<bool>_inst.fca.1.insert" = insertvalue %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.0.insert", i32 %size, 1
  %"Vector::Iterator::It<bool>_inst.fca.2.insert" = insertvalue %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.1.insert", i32 %size, 2
  ret %"Vector::Iterator::It<bool>" %"Vector::Iterator::It<bool>_inst.fca.2.insert"
}

define weak_odr void @"Vector::Vec<bool>__destroy"(ptr %0) local_unnamed_addr !qc.return_types !34 {
entry:
  %data = load ptr, ptr %0, align 8
  tail call fastcc void @qc_free(ptr %data)
  store ptr null, ptr %0, align 8
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %size_ptr, align 8
  %capacity_ptr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 -1, ptr %capacity_ptr, align 4
  ret void
}

define weak_odr ptr @"Vector::Vec<bool>_operator=_Vec<T>"(ptr %0, %"Vector::Vec<bool>" %1) local_unnamed_addr !qc.return_types !43 {
entry:
  %.fca.0.extract = extractvalue %"Vector::Vec<bool>" %1, 0
  %.fca.1.extract = extractvalue %"Vector::Vec<bool>" %1, 1
  %.fca.2.extract = extractvalue %"Vector::Vec<bool>" %1, 2
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %capacity1 = load i32, ptr %2, align 4
  %icmpne.not = icmp eq i32 %.fca.2.extract, %capacity1
  br i1 %icmpne.not, label %ifcont, label %then

then:                                             ; preds = %entry
  %icmpeq.i = icmp eq i32 %.fca.2.extract, 0
  %data.i = load ptr, ptr %0, align 8
  br i1 %icmpeq.i, label %then.i, label %ifcont.i

then.i:                                           ; preds = %then
  tail call fastcc void @qc_free(ptr %data.i)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %ifcont

ifcont.i:                                         ; preds = %then
  %promote_int.i = sext i32 %.fca.2.extract to i64
  %builtin_call.i = tail call fastcc ptr @qc_realloc(ptr %data.i, i64 %promote_int.i)
  %ptr_eq.i = icmp eq ptr %builtin_call.i, null
  br i1 %ptr_eq.i, label %ifcont, label %ifcont5.i

ifcont5.i:                                        ; preds = %ifcont.i
  store i32 %.fca.2.extract, ptr %2, align 4
  store ptr %builtin_call.i, ptr %0, align 8
  br label %ifcont

ifcont:                                           ; preds = %ifcont5.i, %ifcont.i, %then.i, %entry
  %size_ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.fca.1.extract, ptr %size_ptr, align 4
  %icmplt12 = icmp sgt i32 %.fca.1.extract, 0
  br i1 %icmplt12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %ifcont
  %wide.trip.count = zext nneg i32 %.fca.1.extract to i64
  %xtraiter = and i64 %wide.trip.count, 3
  %3 = icmp ult i32 %.fca.1.extract, 4
  br i1 %3, label %for.body.epil.preheader, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ 0, %for.body.preheader.new ], [ %niter.next.3, %for.body ]
  %data = load ptr, ptr %0, align 8
  %ptr_arr_asi = getelementptr i8, ptr %data, i64 %indvars.iv
  %ptr_arr_addr = getelementptr i8, ptr %.fca.0.extract, i64 %indvars.iv
  %ptr_arr_val = load i1, ptr %ptr_arr_addr, align 1
  store i1 %ptr_arr_val, ptr %ptr_arr_asi, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %data.1 = load ptr, ptr %0, align 8
  %ptr_arr_asi.1 = getelementptr i8, ptr %data.1, i64 %indvars.iv.next
  %ptr_arr_addr.1 = getelementptr i8, ptr %.fca.0.extract, i64 %indvars.iv.next
  %ptr_arr_val.1 = load i1, ptr %ptr_arr_addr.1, align 1
  store i1 %ptr_arr_val.1, ptr %ptr_arr_asi.1, align 1
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %data.2 = load ptr, ptr %0, align 8
  %ptr_arr_asi.2 = getelementptr i8, ptr %data.2, i64 %indvars.iv.next.1
  %ptr_arr_addr.2 = getelementptr i8, ptr %.fca.0.extract, i64 %indvars.iv.next.1
  %ptr_arr_val.2 = load i1, ptr %ptr_arr_addr.2, align 1
  store i1 %ptr_arr_val.2, ptr %ptr_arr_asi.2, align 1
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %data.3 = load ptr, ptr %0, align 8
  %ptr_arr_asi.3 = getelementptr i8, ptr %data.3, i64 %indvars.iv.next.2
  %ptr_arr_addr.3 = getelementptr i8, ptr %.fca.0.extract, i64 %indvars.iv.next.2
  %ptr_arr_val.3 = load i1, ptr %ptr_arr_addr.3, align 1
  store i1 %ptr_arr_val.3, ptr %ptr_arr_asi.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.3, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %for.body.epil

for.body.epil:                                    ; preds = %for.body.epil, %for.body.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %for.body.epil.preheader ], [ %indvars.iv.next.epil, %for.body.epil ]
  %epil.iter = phi i64 [ 0, %for.body.epil.preheader ], [ %epil.iter.next, %for.body.epil ]
  %data.epil = load ptr, ptr %0, align 8
  %ptr_arr_asi.epil = getelementptr i8, ptr %data.epil, i64 %indvars.iv.epil
  %ptr_arr_addr.epil = getelementptr i8, ptr %.fca.0.extract, i64 %indvars.iv.epil
  %ptr_arr_val.epil = load i1, ptr %ptr_arr_addr.epil, align 1
  store i1 %ptr_arr_val.epil, ptr %ptr_arr_asi.epil, align 1
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %for.end, label %for.body.epil, !llvm.loop !64

for.end:                                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.epil, %ifcont
  ret ptr %0
}

define weak_odr i1 @"Vector::Vec<bool>_isEmpty"(ptr %0) local_unnamed_addr !qc.return_types !27 {
entry:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %size = load i32, ptr %1, align 4
  %icmpeq = icmp eq i32 %size, 0
  ret i1 %icmpeq
}

define weak_odr %"String::Str" @"String::toStr<int>"(i32 %value) local_unnamed_addr {
entry:
  %"String::buffer" = alloca [64 x i8], align 1
  %icmpeq = icmp eq i32 %value, 0
  br i1 %icmpeq, label %then, label %ifcont

common.ret:                                       ; preds = %for.end, %then
  %"String::Str_inst.fca.0.load.pn.in.sroa.speculated" = phi ptr [ %builtin_call.i, %then ], [ %builtin_call.i54, %for.end ]
  %"String::Str_inst.fca.1.load.pn" = phi i64 [ 1, %then ], [ %strlen.i51, %for.end ]
  %"String::Str_inst.fca.2.load.pn" = phi i64 [ 2, %then ], [ %add.i53, %for.end ]
  %"String::Str_inst.fca.0.insert.pn" = insertvalue %"String::Str" poison, ptr %"String::Str_inst.fca.0.load.pn.in.sroa.speculated", 0
  %"String::Str_inst.fca.1.insert.pn" = insertvalue %"String::Str" %"String::Str_inst.fca.0.insert.pn", i64 %"String::Str_inst.fca.1.load.pn", 1
  %common.ret.op = insertvalue %"String::Str" %"String::Str_inst.fca.1.insert.pn", i64 %"String::Str_inst.fca.2.load.pn", 2
  ret %"String::Str" %common.ret.op

then:                                             ; preds = %entry
  %builtin_call.i = tail call fastcc ptr @qc_malloc(i64 2)
  store i16 48, ptr %builtin_call.i, align 1
  br label %common.ret

ifcont:                                           ; preds = %entry
  %icmplt = icmp slt i32 %value, 0
  br i1 %icmplt, label %ifcont5, label %ifcont5.thread

ifcont5.thread:                                   ; preds = %ifcont
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %"String::buffer", i8 0, i64 64, i1 false)
  br label %while.body.preheader

ifcont5:                                          ; preds = %ifcont
  %neg = sub i32 0, %value
  %icmpgt56 = icmp sgt i32 %neg, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %"String::buffer", i8 0, i64 64, i1 false)
  br i1 %icmpgt56, label %while.body.preheader, label %then9

while.body.preheader:                             ; preds = %ifcont5.thread, %ifcont5
  %value1.158.ph = phi i32 [ %neg, %ifcont5 ], [ %value, %ifcont5.thread ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %value1.158 = phi i32 [ %sdiv, %while.body ], [ %value1.158.ph, %while.body.preheader ]
  %"String::i.057" = phi i64 [ %inc, %while.body ], [ 0, %while.body.preheader ]
  %inc = add i64 %"String::i.057", 1
  %srem = urem i32 %value1.158, 10
  %0 = trunc nuw nsw i32 %srem to i8
  %trunc_char = or disjoint i8 %0, 48
  %arr_elem_ptr = getelementptr inbounds i8, ptr %"String::buffer", i64 %"String::i.057"
  store i8 %trunc_char, ptr %arr_elem_ptr, align 1
  %sdiv = udiv i32 %value1.158, 10
  %icmpgt.not = icmp samesign ult i32 %value1.158, 10
  br i1 %icmpgt.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  br i1 %icmplt, label %then9, label %ifcont10

then9:                                            ; preds = %ifcont5, %while.end
  %"String::i.0.lcssa66" = phi i64 [ %inc, %while.end ], [ 0, %ifcont5 ]
  %inc12 = add i64 %"String::i.0.lcssa66", 1
  %arr_elem_ptr13 = getelementptr inbounds i8, ptr %"String::buffer", i64 %"String::i.0.lcssa66"
  store i8 45, ptr %arr_elem_ptr13, align 1
  br label %ifcont10

ifcont10:                                         ; preds = %then9, %while.end
  %"String::i.1" = phi i64 [ %inc12, %then9 ], [ %inc, %while.end ]
  %sdiv14 = sdiv i64 %"String::i.1", 2
  %icmplt1559 = icmp sgt i64 %"String::i.1", 1
  br i1 %icmplt1559, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %ifcont10
  %1 = getelementptr i8, ptr %"String::buffer", i64 %"String::i.1"
  %xtraiter = and i64 %sdiv14, 1
  %2 = and i64 %"String::i.1", 9223372036854775806
  %3 = icmp eq i64 %2, 2
  br i1 %3, label %for.body.epil.preheader, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = and i64 %sdiv14, 4611686018427387902
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %"String::j.060" = phi i64 [ 0, %for.body.lr.ph.new ], [ %inc31.1, %for.body ]
  %niter = phi i64 [ 0, %for.body.lr.ph.new ], [ %niter.next.1, %for.body ]
  %arr_elem_ptr17 = getelementptr inbounds nuw i8, ptr %"String::buffer", i64 %"String::j.060"
  %arr_elem = load i8, ptr %arr_elem_ptr17, align 1
  %4 = xor i64 %"String::j.060", -1
  %arr_elem_ptr22 = getelementptr i8, ptr %1, i64 %4
  %arr_elem23 = load i8, ptr %arr_elem_ptr22, align 1
  store i8 %arr_elem23, ptr %arr_elem_ptr17, align 1
  store i8 %arr_elem, ptr %arr_elem_ptr22, align 1
  %5 = getelementptr inbounds nuw i8, ptr %"String::buffer", i64 %"String::j.060"
  %arr_elem_ptr17.1 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %arr_elem.1 = load i8, ptr %arr_elem_ptr17.1, align 1
  %6 = xor i64 %"String::j.060", -2
  %arr_elem_ptr22.1 = getelementptr i8, ptr %1, i64 %6
  %arr_elem23.1 = load i8, ptr %arr_elem_ptr22.1, align 1
  store i8 %arr_elem23.1, ptr %arr_elem_ptr17.1, align 1
  store i8 %arr_elem.1, ptr %arr_elem_ptr22.1, align 1
  %inc31.1 = add nuw nsw i64 %"String::j.060", 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end, label %for.body.epil.preheader

for.body.epil.preheader:                          ; preds = %for.end.loopexit.unr-lcssa, %for.body.lr.ph
  %"String::j.060.epil.init" = phi i64 [ 0, %for.body.lr.ph ], [ %inc31.1, %for.end.loopexit.unr-lcssa ]
  %lcmp.mod67 = trunc i64 %sdiv14 to i1
  tail call void @llvm.assume(i1 %lcmp.mod67)
  %arr_elem_ptr17.epil = getelementptr inbounds nuw i8, ptr %"String::buffer", i64 %"String::j.060.epil.init"
  %arr_elem.epil = load i8, ptr %arr_elem_ptr17.epil, align 1
  %7 = xor i64 %"String::j.060.epil.init", -1
  %arr_elem_ptr22.epil = getelementptr i8, ptr %1, i64 %7
  %arr_elem23.epil = load i8, ptr %arr_elem_ptr22.epil, align 1
  store i8 %arr_elem23.epil, ptr %arr_elem_ptr17.epil, align 1
  store i8 %arr_elem.epil, ptr %arr_elem_ptr22.epil, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.epil.preheader, %for.end.loopexit.unr-lcssa, %ifcont10
  %arr_elem_ptr33 = getelementptr inbounds i8, ptr %"String::buffer", i64 %"String::i.1"
  store i8 0, ptr %arr_elem_ptr33, align 1
  %strlen.i51 = call i64 @strlen(ptr nonnull dereferenceable(1) %"String::buffer")
  %add.i53 = add i64 %strlen.i51, 1
  %builtin_call.i54 = tail call fastcc ptr @qc_malloc(i64 %add.i53)
  call void @llvm.memcpy.inline.p0.p0.i64(ptr align 1 %builtin_call.i54, ptr nonnull align 1 %"String::buffer", i64 %add.i53, i1 false)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { cold mustprogress nofree noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind sspstrong willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noinline optnone "noipa" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { cold nounwind }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind allocsize(1) }
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
!14 = distinct !{null}
!15 = !{}
!16 = !{!"Str"}
!17 = !{!"addr_t"}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = !{!"branch_weights", i32 4, i32 28}
!22 = distinct !{!22, !19, !20}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !19}
!26 = !{!"View"}
!27 = !{!"bool"}
!28 = distinct !{!28, !19, !20}
!29 = distinct !{!29, !19, !20}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !24}
!33 = !{!"char&"}
!34 = !{!"void"}
!35 = distinct !{!35, !24}
!36 = distinct !{!36, !24}
!37 = !{!"qbool"}
!38 = !{!"char*"}
!39 = !{!"int"}
!40 = !{!"T&"}
!41 = !{!"T"}
!42 = !{!"Iterator::It<T>"}
!43 = !{!"Vec<T>&"}
!44 = distinct !{!44, !24}
!45 = !{!"Vector::Vec<int>"}
!46 = !{!"double"}
!47 = !{!"Errors::Error<double>"}
!48 = distinct !{!48, !24}
!49 = !{!"Command&"}
!50 = !{!"Builder*"}
!51 = !{!"Vector::Vec<Command>"}
!52 = distinct !{!52, !24}
!53 = !{!"Task*"}
!54 = !{!"Job*"}
!55 = distinct !{!55, !24}
!56 = distinct !{!56, !19, !20}
!57 = distinct !{!57, !20, !19}
!58 = !{!"__pid_t"}
!59 = !{!"__uint16_t"}
!60 = !{!"__uint32_t"}
!61 = !{!"__uint64_t"}
!62 = !{!"long int"}
!63 = !{!"RunResult"}
!64 = distinct !{!64, !24}
