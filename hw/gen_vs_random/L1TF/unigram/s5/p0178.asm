.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
lea si, qword ptr [rbx + rdi + 53]
test ax, 22956
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add rdx, 43
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 7
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
lea edx, qword ptr [rcx + rcx + 56]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
btc rdx, 152
add bx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
