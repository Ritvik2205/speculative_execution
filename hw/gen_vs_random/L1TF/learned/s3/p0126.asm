.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rsi]
adc al, -61
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
test al, -84
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
add dl, sil
lea edx, qword ptr [rbx]
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
