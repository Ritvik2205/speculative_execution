.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo eax, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
or dil, -78
or ecx, esi
cmovo rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rax, -2058103810
and rsi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmovnle edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
cmovnp rax, rsi
test rax, 1978892575
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
