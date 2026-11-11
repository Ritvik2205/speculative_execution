.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
xor rdx, -59
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rsi], si
bts cx, 14
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or bx, bx
cmovno rdx, rcx
xor al, 55
test sil, -96
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
