.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
cmovnle edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
cmovo eax, ebx
cmovnp rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
cmovo rsi, rdi
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
or ecx, esi
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor rdx, -59
and rax, 452940266
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or dil, -41
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
test rax, -363019044
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
