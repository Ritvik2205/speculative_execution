.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 97
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 86
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
bt rbx, 8
sbb dl, -26
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
add esi, -17
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 27
bswap ebx
setle al
or dx, 1 # instrumentation
dec rax
cmovnz rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
