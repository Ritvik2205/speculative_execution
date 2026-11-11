.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
imul si, dx, 13
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
not ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
sub bl, -96
or rax, 1362710293
lea rdx, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
