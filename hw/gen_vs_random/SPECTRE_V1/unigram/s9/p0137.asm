.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -92 # instrumentation
cmovs ax, dx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
add cx, ax
sbb cl, 105
xor al, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
add bl, 78 # instrumentation
adc di, 89
mov rdi, 69
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
add bl, -92 # instrumentation
cmovs di, si
add al, 10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
