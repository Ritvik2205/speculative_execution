.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 75 # instrumentation
lfence
sbb dl, bl 
lfence
xchg dl, cl 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test word ptr [r14 + rdi], 8958 
lfence
or al, bl 
lfence
add al, cl 
lfence
test dil, -107 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rdi] 
lfence
jns .bb_0.1 
jmp .exit_0 
.bb_0.1:
add dl, 63 # instrumentation
lfence
cmovle cx, ax 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
and rax, qword ptr [r14 + rdx] 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sub byte ptr [r14 + rax], -4 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movsx rsi, word ptr [r14 + rbx] 
lfence
dec esi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov cx, word ptr [r14 + rbx] 
lfence
xor ax, 17976 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock adc word ptr [r14 + rbx], 40 
lfence
mov cl, -98 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
