.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
cmp rax, -72548874
add dil, sil
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 87
sub cl, -47
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, bl
cmp ebx, -33
lea dx, qword ptr [rcx + rax + 76]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
