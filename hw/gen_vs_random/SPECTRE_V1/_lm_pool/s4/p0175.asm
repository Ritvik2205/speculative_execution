.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 51
lea dx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
sub dil, -111
lea di, qword ptr [rbx + rax]
cmp sil, al
inc eax
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
lea ax, qword ptr [rdi + rsi + 66]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
