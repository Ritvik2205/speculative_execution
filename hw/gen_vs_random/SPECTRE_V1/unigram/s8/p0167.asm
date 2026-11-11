.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 5
lea eax, qword ptr [rbx + rax]
imul rax, rdx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
btr rcx, 158
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
test bl, dil
cmovp cx, cx
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
add dil, -29 # instrumentation
add dil, -70 # instrumentation
setnp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
