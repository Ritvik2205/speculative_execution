.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 41
cmovnp di, si
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
adc al, 80
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
lea rdi, qword ptr [rdx]
add cl, -26 # instrumentation
cmovnp di, ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
add bl, 7 # instrumentation
cmovnl eax, edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
inc si
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
