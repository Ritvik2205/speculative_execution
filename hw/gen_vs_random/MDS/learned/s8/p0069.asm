.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and si, -121
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
or bl, dl
and rax, 452940266
and al, 82
jmp .bb_0.1
.bb_0.1:
and dil, dil
btr dx, 47
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and al, bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 84
test esi, 425331143
btc bx, cx
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
