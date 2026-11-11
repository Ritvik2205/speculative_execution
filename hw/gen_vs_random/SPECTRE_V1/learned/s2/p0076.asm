.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, eax
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb bl, -41
and bl, dl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb bl, al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 29
sbb cl, dl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
