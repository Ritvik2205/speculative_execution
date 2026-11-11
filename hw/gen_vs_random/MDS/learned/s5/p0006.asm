.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
xor dl, -43
test sil, -96
and bx, 58
test bl, -9
or edx, -78
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
test al, 91
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and cl, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
