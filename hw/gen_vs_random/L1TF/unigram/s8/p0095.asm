.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 60
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rcx + rsi]
sbb bx, bx
or rbx, 18
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
test cl, 88
cmovnp dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
