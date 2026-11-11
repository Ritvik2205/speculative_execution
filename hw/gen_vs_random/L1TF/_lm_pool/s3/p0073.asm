.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rsi, 100
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and sil, sil
adc al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
