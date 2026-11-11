.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and dl, 46 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and rdi, 49
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
or al, dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
cmovnbe rsi, rdx
cmovnp rdi, rbx
and cl, 101 # instrumentation
cmovno edx, ecx
jmp .bb_0.1
.bb_0.1:
cmovb rax, rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 47
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
bt edx, 91
or dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
