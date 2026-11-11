.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
sbb bl, al
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
or al, -2
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
and cl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
test cl, 76
lea cx, qword ptr [rbx + rcx + 79]
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
