.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
add al, -72
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ebx
mov dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
sub al, dl
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
