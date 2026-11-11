.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rax, -2058103810
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
cmovnp rax, rsi
cmovo eax, ebx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
xor rdx, -59
or dil, -71
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 24
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
test rax, -359674714
cmovo rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
