.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or al, 37
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 25
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
or sil, al
or bl, 13
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
test al, cl
xor ax, -16696
or sil, cl
xor eax, 2063216578
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
