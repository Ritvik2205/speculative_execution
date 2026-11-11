.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, -24
lea rdx, qword ptr [rdi]
movsx rdi, ax
test dl, 113
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
add cl, dil
js .bb_0.3
jmp .exit_0
.bb_0.3:
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
lea ax, qword ptr [rcx + rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
