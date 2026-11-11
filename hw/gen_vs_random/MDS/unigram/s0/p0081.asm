.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp dx, dx
cmovnb rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 52
test cl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rbx]
cmovle rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and dil, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
btr edx, esi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
cmovo edi, edx
or al, -75
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
