declare i8* @malloc(i64)
declare i32 @getint(...)
declare i32 @printf(i8*,...)
@test_str = constant [18 x i8] c"Test:value is %d\0A\00", align 1
@test_int = constant [19 x i8] c"iTest:value is %d\0A\00", align 1
@test_float = constant [19 x i8] c"fTest:value is %f\0A\00", align 1
@if_cmp = constant [14 x i8] c"If branch %d\0A\00", align 1
@loop = constant [25 x i8] c"I am here and val1 = %d\0A\00", align 1
@switch_eq5 = constant [13 x i8] c"Now it is 5\0A\00", align 1
@switch_neq5 = constant [17 x i8] c"Now it is not 5\0A\00", align 1
define i32 @main() {
	%int_op1 = alloca i32, align 4
	%int_op2 = alloca i32, align 4
	%float_op1 = alloca float, align 4
	%float_op2 = alloca float, align 4
	store i32 2, i32* %int_op1, align 4
	store i32 7, i32* %int_op2, align 4
	store float 3.000000e+00, float* %float_op1, align 4
	store float 7.000000e+00, float* %float_op2, align 4
	%int_val1 = load i32, i32* %int_op1, align 4
	%int_val2 = load i32, i32* %int_op2, align 4
	%float_val1 = load float, float* %float_op1, align 4
	%float_val2 = load float, float* %float_op2, align 4
;initialization ended

	%int_greater = icmp sgt i32 %int_val1, %int_val2
	br i1 %int_greater, label %Greater, label %nGreater
Greater:
	%tmp1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8],[14 x i8]* @if_cmp, i64 0, i64 0), i1 %int_greater)
	br label %Greater_end
nGreater:
	%tmp2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8],[14 x i8]* @if_cmp, i64 0, i64 0), i1 %int_greater)
	br label %Greater_end
While_loop:
	%int_val1_old = load i32, i32* %int_op1, align 4
	%add_tmp = add i32 %int_val1_old, 1
	store i32 %add_tmp, i32* %int_op1, align 4
	%int_val1_new = load i32, i32* %int_op1, align 4
	%less_true = icmp slt i32 %int_val1_new, %int_val2
	%val1_neq5 = icmp ne i32 %int_val1_new, 5
	switch i1 %val1_neq5, label %Continue [
    	i1 0, label %Switch_eq5
    	i1 1, label %Switch_neq5
  	]
Continue:
	%tmp0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8],[25 x i8]* @loop, i64 0, i64 0), i32 %int_val1_new)
	br i1 %less_true, label %While_loop, label %While_end	
Greater_end:
	%float_lessteq = fcmp ole float %float_val1, %float_val2
	br i1 %float_lessteq, label %While_loop, label %While_end
Switch_eq5:
	%tmp3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8],[13 x i8]* @switch_eq5, i64 0, i64 0))
	br label %Continue
Switch_neq5:
	%tmp4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8],[17 x i8]* @switch_neq5, i64 0, i64 0))
	br label %Continue
While_end:
	ret i32 0
}
