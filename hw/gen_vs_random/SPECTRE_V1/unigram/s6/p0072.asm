.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, edx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 55
add bl, -43 # instrumentation
adc ax, 18
or rdx, 92
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
cmp dl, cl
bts ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 36
adc bx, 2
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 99
sub ax, 124
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
