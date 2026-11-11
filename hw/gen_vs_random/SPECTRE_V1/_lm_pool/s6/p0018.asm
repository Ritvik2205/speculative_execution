.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
sub al, -89
add al, -13
jmp .bb_0.1
.bb_0.1:
sub al, -82
lea rbx, qword ptr [rax + rcx + 5]
and ax, -13240
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
