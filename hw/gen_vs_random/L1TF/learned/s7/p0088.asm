.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
lea edi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 29
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test sil, 29
lea rsi, qword ptr [rdx + rbx]
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
