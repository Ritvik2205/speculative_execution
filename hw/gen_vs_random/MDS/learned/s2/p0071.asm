.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and ax, 5001
test rbx, 17
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
