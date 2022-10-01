; ModuleID = 'testir.c'
source_filename = "testir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.student = type { i32, float, i32 }

@N = dso_local constant i32 5, align 4
@global = dso_local global i32 3, align 4
@.str = private unnamed_addr constant [31 x i8] c"f called,const a = %d, b = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"global is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"local is %d\0A\00", align 1
@farray = common dso_local global float* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"farray[3] = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"This is a message for DEBUG!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"U are bad one! Efforts needed\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Well done!\0A\00", align 1
@_sysy_start = common dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_end = common dso_local global %struct.timeval zeroinitializer, align 8
@_sysy_l1 = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_l2 = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_h = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_m = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_s = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_us = common dso_local global [1024 x i32] zeroinitializer, align 16
@_sysy_idx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fpext float %6 to double
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %5, double %7)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.student, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @global, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  store i32 4, i32* %2, align 4
  %7 = call i32 (...) @getint()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = call noalias i8* @malloc(i64 4) #3
  %11 = bitcast i8* %10 to float*
  store float* %11, float** @farray, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %15, %0
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 2
  %18 = srem i32 %17, 7
  %19 = sitofp i32 %18 to float
  %20 = fadd float %19, 0x4014CCCCC0000000
  %21 = fsub float %20, 1.000000e+00
  %22 = load float*, float** @farray, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds float, float* %22, i64 %25
  store float %21, float* %26, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load float*, float** @farray, align 8
  %29 = getelementptr inbounds float, float* %28, i64 3
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), double %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  call void @f(i32 10, float 2.500000e+00)
  %34 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 0
  store i32 2010139, i32* %34, align 4
  %35 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 1
  store float 0x40532CCCC0000000, float* %35, align 4
  %36 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 1
  %37 = load float, float* %36, align 4
  %38 = fcmp ogt float %37, 9.000000e+01
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 2
  store i32 1, i32* %40, align 4
  br label %43

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 2
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %53 [
    i32 0, label %46
    i32 1, label %51
  ]

46:                                               ; preds = %43
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %48 = getelementptr inbounds %struct.student, %struct.student* %4, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = fadd float %49, 1.500000e+01
  store float %50, float* %48, align 4
  br label %54

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %51, %46
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @getint(...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
