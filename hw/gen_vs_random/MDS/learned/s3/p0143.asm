.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 28417
cmovnp bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
not di
and cl, -101
and cl, 8
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
add al, 71 # instrumentation
setp bl
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
cmovo rdx, rax
and al, 126
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and al, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
