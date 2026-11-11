.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
bts rax, rbx
and cl, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor sil, cl
not dil
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 66
xor al, 122
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
test al, sil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or al, 24
or al, 16
xor rax, -270810088
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
