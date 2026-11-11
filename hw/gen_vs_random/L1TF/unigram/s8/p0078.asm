.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
sub sil, -99
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
sub edx, -33
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
bt di, dx
setnz sil
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
