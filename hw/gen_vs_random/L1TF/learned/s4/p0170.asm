.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 12
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
add sil, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
or rax, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
