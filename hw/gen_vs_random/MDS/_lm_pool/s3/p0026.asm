.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and sil, sil
and cl, dil
btr rbx, 93
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or sil, -78
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and dx, 3
or ax, -6817
jmp .bb_0.1
.bb_0.1:
or al, 24
btc ax, 37
xor sil, -14
btr rcx, 30
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
