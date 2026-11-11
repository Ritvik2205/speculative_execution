.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rcx]
lea rdx, qword ptr [rax + rsi]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
cmovno dx, dx
setnp dil
add dl, 43 # instrumentation
adc al, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 43
sbb al, 29
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rbx
lea bx, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dil
jmp .bb_0.1
.bb_0.1:
mov rax, -6437636498926413678
add al, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
cmovno ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
