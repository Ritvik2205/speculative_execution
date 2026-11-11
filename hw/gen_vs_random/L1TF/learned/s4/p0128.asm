.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
inc dl
and eax, -409673666
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xor bl, 38
or bl, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
