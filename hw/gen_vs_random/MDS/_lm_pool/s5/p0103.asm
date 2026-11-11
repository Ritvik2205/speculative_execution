.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 46
or bl, sil
and sil, -9
xor dil, -3
and ax, 13090
xor al, sil
xor al, 122
jmp .bb_0.1
.bb_0.1:
or al, cl
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
or rax, 52
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
