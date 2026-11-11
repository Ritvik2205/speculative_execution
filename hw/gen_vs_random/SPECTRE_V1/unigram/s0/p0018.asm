.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi]
add cl, 97 # instrumentation
adc bx, cx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 53
btc eax, 19
lea cx, qword ptr [rcx + rsi]
lea ax, qword ptr [rdx]
setnz cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
btr dx, cx
cmovl rbx, rsi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
cmp rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
sbb sil, sil
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
