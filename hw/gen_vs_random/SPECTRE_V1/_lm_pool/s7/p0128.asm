.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
cmp esi, 36
xor al, -74
cmovno ax, dx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 7
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -89
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
test al, -75
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
lea rax, qword ptr [rcx]
dec dil
lea cx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
