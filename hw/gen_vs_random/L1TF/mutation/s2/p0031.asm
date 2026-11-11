.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
lea esi, qword ptr [rsi + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
or bl, -88
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
lea ax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
cmp al, 27
lea ebx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rcx]
add cl, dl
sub dl, -34
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
