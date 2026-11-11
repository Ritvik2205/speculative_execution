.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
not dil
and ax, 26813
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bt esi, edx
sub dil, bl
xor dil, -42
and bl, 89
lea edi, qword ptr [rdi + rsi + 36]
cmp ax, 24210
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
