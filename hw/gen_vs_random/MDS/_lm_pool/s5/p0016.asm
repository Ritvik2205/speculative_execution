.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
not cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and dl, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
jmp .bb_0.2
.bb_0.2:
test dil, bl
jmp .bb_0.3
.bb_0.3:
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xor di, -83
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 93
or rsi, 73
jmp .bb_0.4
.bb_0.4:
or al, 74
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
