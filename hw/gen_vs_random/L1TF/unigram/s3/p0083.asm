.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl dl
lea edx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 79
bswap rsi
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
add al, -21 # instrumentation
mov eax, edi
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
add bl, 76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
