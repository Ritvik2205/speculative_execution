.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
lea esi, qword ptr [rbx]
adc al, -82
inc bl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
add al, -65
xor al, cl
inc esi
and al, 33
and cl, -57
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
