.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sub dx, 89
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rdx, 16
lea rdx, qword ptr [rdi + rax]
add dl, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
lea ebx, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
mul bl
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and esi, 81
cmovs edx, ebx
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
adc rcx, 92
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 34
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
