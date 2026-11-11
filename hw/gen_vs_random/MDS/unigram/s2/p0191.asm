.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
btc ax, 55
and si, -121
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and edi, 23
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
btr cx, 9
and cl, 11 # instrumentation
cmovp edx, ecx
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
test rdi, 88
and dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
bt ecx, 30
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdx
or edi, -88
and bl, 33 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
test rbx, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
