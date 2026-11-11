.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -76
or sil, cl
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
test al, 127
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test sil, 17
test cl, 73
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and dil, -39
or dl, -31
or al, -75
or rbx, -72
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test dil, dil
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
