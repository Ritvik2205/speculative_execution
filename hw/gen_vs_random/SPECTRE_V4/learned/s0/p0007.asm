.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -66
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
dec bl
cmovnp cx, bx
and dl, bl
xchg al, cl
inc al
sbb cl, 127
or sil, -47
add al, cl
and cl, 32
or al, cl
or rax, -943474997
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
mov al, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
