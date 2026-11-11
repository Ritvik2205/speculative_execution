.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
bt esi, 61
bt rbx, rdx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 38
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
cmovnb bx, dx
bts di, dx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
and dl, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
bt edx, edx
cmovno ebx, edx
or bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and cx, 92
and sil, al
cmovnz rdx, rax
and al, 102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
