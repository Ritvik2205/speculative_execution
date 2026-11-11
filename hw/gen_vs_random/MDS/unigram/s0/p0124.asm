.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, -18
and bl, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
and dl, -107 # instrumentation
cmovz rcx, rbx
not eax
cmovz rdi, rdx
bt dx, di
bt rcx, rax
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 19
cmovs edi, edi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
not ebx
cmovp eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
bts edi, esi
bt esi, 41
bts ax, si
xor si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
