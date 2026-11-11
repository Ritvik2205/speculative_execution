.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
or bl, -52
xor bl, -102
xor sil, -14
test ecx, -1843375753
or si, 94
xor al, -19
and dl, sil
or cx, 49
bt ax, si
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
bt esi, 3
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and ax, 13090
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
