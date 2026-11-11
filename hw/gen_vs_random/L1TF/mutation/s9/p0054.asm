.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
lea ax, qword ptr [rcx]
or bl, -88
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
lea esi, qword ptr [rsi + rdx]
cmp al, -119
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
lea ebx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
sub dl, 105
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sub al, dl
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
