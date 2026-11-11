.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
lea rbx, qword ptr [rdx]
add sil, -68
setp cl
sub al, cl
lea rdx, qword ptr [rdi + rbx + 97]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
