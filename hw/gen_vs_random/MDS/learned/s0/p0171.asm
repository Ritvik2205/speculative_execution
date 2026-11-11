.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
cmovbe rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
mov rsi, rax
xor al, -119
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
cmovnb bx, bx
bt edi, 254
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
xor dl, dil
bt rcx, rbx
xor cl, -79
bts rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
