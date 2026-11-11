.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 85
bt cx, 72
inc bx
adc al, 53
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, cl
sub rax, -679751639
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
sub sil, -55
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
add dl, -124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
add cl, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
add sil, -47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
