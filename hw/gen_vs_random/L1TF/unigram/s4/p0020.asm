.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rcx, 13
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 73
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
bt eax, esi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 40
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax + rdx]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
btc cx, 31
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rcx]
xor al, -127
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
