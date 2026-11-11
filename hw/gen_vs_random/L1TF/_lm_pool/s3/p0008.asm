.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
cmovnle rsi, rdi
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
xor rax, -2072052278
xor al, 45
btc di, bx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or bl, cl
sbb al, -14
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
