.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
or cl, 30
and bl, 68
or sil, cl
bt edi, ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
or rsi, 71
xor cl, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
test dl, dil
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
