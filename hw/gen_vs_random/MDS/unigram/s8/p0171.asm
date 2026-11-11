.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
bts bx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
cmovz ebx, eax
test rax, 1949278494
or dil, 12
not cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
not dl
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
btr di, ax
btr ax, dx
and rdi, 53
btc edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
