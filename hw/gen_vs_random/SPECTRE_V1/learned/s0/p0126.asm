.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
sbb al, 33
adc dl, -49
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, cl
sub dl, bl
adc ax, 24404
lea bx, qword ptr [rcx]
add edx, 4
add dx, -90
movzx edx, bx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
