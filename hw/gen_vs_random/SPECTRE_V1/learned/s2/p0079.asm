.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or ecx, 4
sub al, bl
sub bl, -6
sub al, -66
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sub bl, dl
jb .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, 53
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
