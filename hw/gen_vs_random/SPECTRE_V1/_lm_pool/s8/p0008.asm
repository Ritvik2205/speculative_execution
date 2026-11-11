.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add sil, sil
or bl, dl
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 13
add al, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
sub al, -82
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
