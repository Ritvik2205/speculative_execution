.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
sbb al, 61
add sil, -61
adc ax, 87
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
test cl, dil
xor al, al
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
sub al, -47
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
