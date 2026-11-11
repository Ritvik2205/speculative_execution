.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
cmp al, 56
lea ax, qword ptr [rcx]
xor cl, cl
lea ebx, qword ptr [rsi]
lea esi, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
or bl, -88
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sub dl, 105
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
