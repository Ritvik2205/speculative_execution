.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 15401
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and cl, -101
and cl, -101
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
xor bx, ax
jmp .bb_0.1
.bb_0.1:
and dl, -107 # instrumentation
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
cmovnle ecx, ebx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
cmovle edx, esi
cmovnle eax, ebx
test dil, -72
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and ax, 15401
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
