.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
lea esi, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, sil
sub cl, dl
add al, 18
sbb bl, cl
sbb eax, 1392087754
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
