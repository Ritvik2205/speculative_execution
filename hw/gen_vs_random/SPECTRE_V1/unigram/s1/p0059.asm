.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rdx, rax
lea rax, qword ptr [rdi + rdi + 34]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add bl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
cmovl ax, si
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
cmp dl, bl
add cl, 45 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx + rax + 78]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 97
xor al, -42
adc sil, cl
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
