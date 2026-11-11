.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
or ebx, -124
add dl, -127 # instrumentation
setp cl
lea rsi, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and cl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
lea ecx, qword ptr [rcx + rdi + 65137]
test ax, -13885
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
mul sil
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
