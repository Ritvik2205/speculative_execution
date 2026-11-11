.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
test di, 30
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 49
and dl, sil
add dl, -89 # instrumentation
sbb edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
test cl, -120
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, dil
and cl, dl
neg edi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 88
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
