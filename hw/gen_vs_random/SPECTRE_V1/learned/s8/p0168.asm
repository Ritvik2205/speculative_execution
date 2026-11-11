.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
xor cl, 78
sub cl, dil
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and sil, 52
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 127
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
