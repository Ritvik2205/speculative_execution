.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], -41
btc rdi, 221
cmovo edi, edi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], di
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 40
jmp .bb_0.1
.bb_0.1:
and rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
cmovz ecx, esi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
xor dil, al
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
cmovns edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
