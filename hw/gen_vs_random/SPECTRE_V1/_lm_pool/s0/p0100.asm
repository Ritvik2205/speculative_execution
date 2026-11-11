.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 89
add al, -47
lea rbx, qword ptr [rax + rdx + 45]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 62
sub bl, dl
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
