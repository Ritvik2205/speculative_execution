.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
cmp rdx, -19
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
sub al, bl
not ax
lea rbx, qword ptr [rsi + rdx + 43294]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
sub bl, -19
inc ebx
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
