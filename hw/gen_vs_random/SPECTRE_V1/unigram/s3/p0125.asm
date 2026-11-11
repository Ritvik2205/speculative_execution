.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
neg bx
adc al, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
lea rcx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
add cl, 105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 49
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 13
xchg dl, bl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 26
cwde
xor rcx, 38
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
