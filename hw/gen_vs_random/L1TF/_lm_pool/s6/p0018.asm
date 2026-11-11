.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
add cl, -36
adc sil, 50
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
lea rdi, qword ptr [rdx + rbx + 74]
xor sil, 64
jmp .bb_0.1
.bb_0.1:
test al, -70
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
