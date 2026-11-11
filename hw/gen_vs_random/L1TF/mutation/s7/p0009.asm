.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
lea ebx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
or bl, 114
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
cmp al, -119
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ax, qword ptr [rcx]
xor cl, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sub al, dl
sub dl, -49
add cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
