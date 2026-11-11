.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, si
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
inc ax
sub al, dl
add dil, 42 # instrumentation
lea edx, qword ptr [rdi + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
cmovnz bx, ax
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
