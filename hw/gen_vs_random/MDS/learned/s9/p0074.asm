.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and ax, 13090
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 98
or dil, -78
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and sil, 74
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 70
and al, 82
test al, -81
and ax, -16061
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
