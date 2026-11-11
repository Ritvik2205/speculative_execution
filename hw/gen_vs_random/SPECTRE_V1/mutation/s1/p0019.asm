.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -127 # instrumentation
setp cl
and cl, al
lea rsi, qword ptr [rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rdx
or ebx, -124
lea ecx, qword ptr [rcx + rdi + 65137]
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
test ax, 636
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mul sil
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
