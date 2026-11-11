.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
sub al, cl
mov dil, dl
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 46
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
dec cx
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -127
add bl, -95
lea ax, qword ptr [rcx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
or rcx, 45
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
