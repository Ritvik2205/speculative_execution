.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rbx]
sub ecx, edx
sbb ecx, 100
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 22
test bl, -8
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
cmovl ecx, esi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
setno al
sbb dil, -93
sbb ebx, 86
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
