.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
sub dl, cl
add cl, -20
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
movzx ebx, dl
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
lea rbx, qword ptr [rax + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
