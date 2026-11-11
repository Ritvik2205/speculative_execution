.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
xor cl, 55
xor al, 55
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
or dil, 12
and rdx, 60
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test rsi, 71
not bl
and si, -121
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
