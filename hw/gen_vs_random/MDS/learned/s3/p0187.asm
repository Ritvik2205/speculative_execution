.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and cl, 79
test cl, 73
and rax, -978188247
and dl, dl
test al, -81
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
bt di, si
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
and sil, -9
bt ax, dx
and al, cl
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
