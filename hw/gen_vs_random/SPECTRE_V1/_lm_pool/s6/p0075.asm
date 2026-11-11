.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmp ecx, 2
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
xchg bl, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
cmovno di, si
cmp ebx, -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
