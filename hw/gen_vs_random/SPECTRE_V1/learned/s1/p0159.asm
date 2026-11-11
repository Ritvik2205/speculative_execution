.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdx]
adc cl, -81
or ax, 18658
xchg eax, ecx
sbb cl, 105
adc dl, -49
add al, al
add al, bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
dec al
movzx ebx, di
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
