.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 120 # instrumentation
cmovnp dx, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or dx, 125
xor bl, bl
and esi, 8
bt ecx, esi
cmovo bx, ax
and cl, al
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmovnb si, dx
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 97
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
btc ecx, 87
btr si, 208
xor si, 80
and dil, 38 # instrumentation
cmovbe ebx, edi
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
