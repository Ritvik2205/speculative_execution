.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
lea rdx, qword ptr [rbx + rdi + 81]
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
sbb rdx, -34
sub dx, -23
cmovno cx, dx
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
