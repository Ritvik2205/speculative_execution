.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and bl, 121 # instrumentation
bt rsi, 55
cmovle si, di
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -18
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
cmovb bx, dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and al, 39 # instrumentation
cmovbe dx, si
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
cmovnl edi, esi
cmovnp rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
