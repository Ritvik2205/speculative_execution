.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ebx, edi
bts ebx, ecx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 62
xor sil, -126
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
btc ecx, eax
xor cx, -18
and dl, 1 # instrumentation
cmovl cx, ax
and al, 21 # instrumentation
cmovb si, ax
and rax, rax
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rax
btr edi, 221
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
