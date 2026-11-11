.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
xchg sil, dil
test sil, 87
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 15
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 12
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
adc al, bl
not rdx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
