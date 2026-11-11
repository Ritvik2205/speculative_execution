.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
cmovno bx, si
test cl, al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
xor al, 115
test al, 91
btc cx, 115
or sil, -78
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
or ax, -20176
btc bx, 104
or rdx, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
