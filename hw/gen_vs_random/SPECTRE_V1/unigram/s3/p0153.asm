.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, dl
add al, 36 # instrumentation
cmovnp rax, rsi
adc bl, al
imul cl
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
sub al, al
cmovo rcx, rcx
sbb sil, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
adc dil, 74
imul rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
cmovnz si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
