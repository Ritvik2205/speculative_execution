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
and cl, -63
and cl, 8
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 25
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
test bl, 106
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
bts rax, 149
or al, al
bt eax, eax
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and al, 73
test dil, -72
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and ax, -30938
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
