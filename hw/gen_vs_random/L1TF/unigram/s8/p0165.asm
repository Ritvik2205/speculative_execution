.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 23
add si, -5
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 51
or rsi, 8
cmovle rsi, rcx
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
add dl, 109 # instrumentation
cmovnb rsi, rbx
or esi, 94
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
sub rdx, 69
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
btr eax, edi
setnbe cl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
cmp di, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
