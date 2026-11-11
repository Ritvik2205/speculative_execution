.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
cmovz rdi, rdx
btr di, 199
or rax, -2043376621
cmovnb dx, cx
and bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
setnl cl
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp edx, ecx
xor eax, 1170472196
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and al, sil
cmovp ax, dx
imul edx, eax, 30
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and sil, sil
cmovz esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 89
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
