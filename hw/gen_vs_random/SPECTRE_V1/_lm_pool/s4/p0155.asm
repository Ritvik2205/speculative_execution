.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
mov al, sil
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
sub al, -66
sub bl, dl
add bl, dl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
