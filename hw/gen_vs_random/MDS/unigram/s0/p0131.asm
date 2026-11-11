.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb si, si
cmovb ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 67
cmovz dx, bx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rbx, 65
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
cmovnp rdx, rcx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rcx], cx
and dil, 125
and rax, rdx
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 86
cmovns eax, eax
cmovnbe eax, ebx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
