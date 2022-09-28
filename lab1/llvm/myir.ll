define i32 @main() #0 {  
 %a = alloca i32, align 4
 store i32 1, i32* %a, align 4
 %b = alloca i32, align 4
 store i32 2, i32* %b, align 4
 %1 = load i32, i32* %a, align 4
 %2 = load i32, i32* %b, align 4
 %temp = add nsw i32 %1, %2
 ret i32 %temp
 }
