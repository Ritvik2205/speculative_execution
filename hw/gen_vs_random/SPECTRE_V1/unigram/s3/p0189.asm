.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 83
lea ebx, qword ptr [rdi]
or rdx, 92
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
not dx
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, -37
cmovnbe cx, bx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
adc bl, bl
not ax
add eax, 1938514106
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
