.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 118
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
mul sil
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
