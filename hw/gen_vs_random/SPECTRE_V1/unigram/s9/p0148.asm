.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 24
lea edx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
adc cx, ax
sub dl, 71
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
adc al, cl
lea rax, qword ptr [rcx + rsi]
sub rdi, 63
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
sbb dx, 85
xor al, dl
lea ebx, qword ptr [rbx + rcx]
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
dec rdx
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
