.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc ax, 66
btr ebx, 71
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rcx + rbx + 26263]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
