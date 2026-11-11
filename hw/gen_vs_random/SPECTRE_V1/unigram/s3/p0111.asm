.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
btr rax, 16
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edi
lea eax, qword ptr [rsi + rsi]
or rax, -3
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
xchg cl, dl
add dl, 88 # instrumentation
sbb dl, 80
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -68
cmovp bx, dx
imul edx, eax, 48
adc dil, dl
cmovbe ecx, edx
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
