.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
lea bx, qword ptr [rbx]
adc al, dil
lea cx, qword ptr [rsi + rdx + 61792]
or ax, -114
and cl, dil
or edi, 54
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
