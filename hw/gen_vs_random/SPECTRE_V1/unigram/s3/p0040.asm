.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
test cl, -49
add bl, 106 # instrumentation
cmovs eax, ebx
lea ax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
setns sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, dil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
xor cl, -103
sbb al, -127
lea rsi, qword ptr [rcx + rdi + 3]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 82
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
