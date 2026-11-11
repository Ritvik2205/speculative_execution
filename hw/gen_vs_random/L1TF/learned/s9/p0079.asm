.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
xchg rdi, rsi
inc dil
or rdx, 11
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 91
xor cx, 113
sub sil, -99
imul rdx, rcx, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
