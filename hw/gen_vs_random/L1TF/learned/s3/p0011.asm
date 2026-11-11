.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
sbb dl, cl
xchg ecx, eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
test bl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 6
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
btr di, si
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
