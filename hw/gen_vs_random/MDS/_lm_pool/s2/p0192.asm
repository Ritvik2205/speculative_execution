.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 339
test dil, -51
xor rax, -270810088
and cl, -111
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and dl, -73
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
or dl, cl
xor dil, 81
xor ax, -6793
test rdi, 37
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or cl, 7
test dl, 27
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
