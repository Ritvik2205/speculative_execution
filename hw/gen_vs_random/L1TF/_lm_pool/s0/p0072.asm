.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor bl, dl
lea rbx, qword ptr [rdx + rdi + 44]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rcx]
and cx, -79
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and sil, 37
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
