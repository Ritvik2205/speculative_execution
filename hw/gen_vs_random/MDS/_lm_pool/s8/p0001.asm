.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
test ecx, -1843375753
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
or sil, cl
xor di, 93
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and al, 35
test al, dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
jmp .bb_0.1
.bb_0.1:
xor dil, -70
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
