.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
cmovnp rax, rsi
and rax, 498847670
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor rdx, -59
cmovo eax, ebx
or dil, 12
test rax, 1207043993
or ecx, esi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
cmovo rsi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
cmovnle edi, ebx
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
