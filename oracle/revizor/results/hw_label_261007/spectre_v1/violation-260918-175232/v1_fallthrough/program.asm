.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 75 # instrumentation
sbb dl, bl 
xchg dl, cl 
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958 
or al, bl 
add al, cl 
test dil, -107 
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi] 
jns .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, 63 # instrumentation
cmovle cx, ax 
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx] 
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4 
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx] 
dec esi 
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx] 
xor ax, 17976 
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40 
mov cl, -98 
.exit_0:
lfence
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
