.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
inc rcx
add al, -13
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, sil
and al, 33
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
