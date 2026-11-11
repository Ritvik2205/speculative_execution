.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
movsx ecx, cl
cmovnz dx, ax
sbb dx, 92
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 37
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 19
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
bt rax, rdi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
