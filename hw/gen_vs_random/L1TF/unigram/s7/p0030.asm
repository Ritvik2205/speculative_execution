.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 77
add al, -124 # instrumentation
setnz al
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
lea rdi, qword ptr [rdi + rcx]
lea rdi, qword ptr [rdx + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
btc ax, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
add al, -57 # instrumentation
cmovo rdx, rcx
dec di
cmp esi, -52
inc bl
add bl, 107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 58
mul sil
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
