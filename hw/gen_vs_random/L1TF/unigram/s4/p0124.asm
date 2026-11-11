.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sbb al, 92
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
cmovbe rdi, rsi
add bl, 48 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 3
adc dx, 17
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 52
setnp dil
add dl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xor ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
