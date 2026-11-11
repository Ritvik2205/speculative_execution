.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor cx, 66
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
mov cl, -98
sub bx, ax
lea rcx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
adc cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
btr esi, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
