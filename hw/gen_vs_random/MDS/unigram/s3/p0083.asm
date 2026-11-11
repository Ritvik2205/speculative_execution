.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
bt ecx, edx
test bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
test dil, al
not rbx
xor dl, bl
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
btc ecx, edx
jmp .bb_0.1
.bb_0.1:
test bl, bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and al, -83 # instrumentation
cmovnp rdi, rax
test sil, al
cmovnbe edi, ecx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and bl, 65 # instrumentation
cmovnbe ax, di
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
cmovbe edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
