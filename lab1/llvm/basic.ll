declare i8* @malloc(i64)
declare i32 @getint(...)
declare i32 @printf(i8*,...)
@global = global i32 8, align 4
@test_str = constant [18 x i8] c"Test:value is %d\0A\00", align 1
@test_int = constant [19 x i8] c"iTest:value is %d\0A\00", align 1
@test_float = constant [19 x i8] c"fTest:value is %f\0A\00", align 1
define i32 @main() {
	%local = alloca i32, align 4
	%global_val = load i32, i32* @global, align 4
	store i32 %global_val, i32* %local, align 4
	%local_val = load i32, i32* %local, align 4
	%tmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds([18 x i8],[18 x i8]* @test_str, i64 0, i64 0), i32 %local_val)
	%float_1 = alloca float, align 4
	store float 5.000000e+00, float* %float_1, align 4
	%float_val1 = load float, float* %float_1, align 4
	%double_val1 = fpext float %float_val1 to double
	%tmp2 = call i32 (i8*,...) @printf (i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_float,i64 0, i64 0), double %double_val1)
	%float_neg = fneg float %float_val1
	%double_neg = fpext float %float_neg to double
	%tmp3 = call i32 (i8*,...) @printf (i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_float,i64 0, i64 0), double %double_neg)
	%int_1 = alloca i32, align 4
	%int_2 = alloca i32, align 4
	store i32 3, i32* %int_1, align 4
	store i32 7, i32* %int_2, align 4
	%int_val1 = load i32, i32* %int_1, align 4
	%int_val2 = load i32, i32* %int_2, align 4
	%int_sum = add i32 %int_val1, %int_val2
	%tmp4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_int, i64 0, i64 0), i32 %int_sum)
	%int_div = sdiv i32 %int_val2, %int_val1 
	%tmp5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_int, i64 0, i64 0), i32 %int_div)
	%float_mul = fmul float %float_val1, %float_neg
	%double_mul = fpext float %float_mul to double
	%tmp6 = call i32 (i8*,...) @printf (i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_float,i64 0, i64 0), double %double_mul)
	%and_res = and i32 %int_val1, %int_val2
	%xor_res = xor i32 %int_val1, %int_val2
	%tmp7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_int, i64 0, i64 0), i32 %and_res)
	%tmp8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds([19 x i8],[19 x i8]* @test_int, i64 0, i64 0), i32 %xor_res)
	ret i32 0
}
