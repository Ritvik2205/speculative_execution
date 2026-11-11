.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or dl, bl
or al, -78
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rbx
test bl, al
test cl, 101
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 36
btc esi, 199
test cl, -18
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and si, -121
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or rbx, -77
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
