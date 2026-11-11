.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rdi], di
or al, 24
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
btr cx, 136
or ax, ax
btr ax, bx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and cl, 112 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
test dl, al
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
cmovbe esi, edx
or eax, 359647041
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
