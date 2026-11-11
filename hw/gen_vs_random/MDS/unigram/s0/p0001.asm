.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
test dil, dl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and bl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and al, -23 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
cmovz ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and cl, 112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovs bx, bx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and cx, -8
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, -63
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 39
cmovs ax, di
and esi, edi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
