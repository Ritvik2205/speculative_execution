.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 2
bt di, cx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
test dl, 48
xor bl, cl
or ax, -4210
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
test dl, bl
cmovnp rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
