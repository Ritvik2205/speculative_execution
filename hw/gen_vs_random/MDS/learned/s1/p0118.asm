.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor bl, -61
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or sil, al
or bl, -62
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
jmp .bb_0.2
.bb_0.2:
and dl, sil
or cl, 7
xor edi, 91
and al, sil
test cl, dil
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and dil, -62
or al, -75
jmp .bb_0.3
.bb_0.3:
test ecx, -1843375753
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
