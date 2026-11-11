.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
sub dl, cl
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
or rdx, 92
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, rax
movzx ax, cl
or rdx, 92
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
lea rdi, qword ptr [rcx + rsi + 11]
add bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
movzx ebx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
