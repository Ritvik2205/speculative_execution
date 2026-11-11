.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
sub al, -66
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb al, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb cl, cl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 46
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
