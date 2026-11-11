.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
or dx, dx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
lea rdi, qword ptr [rcx + rdx + 53]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rcx]
sub dl, -12
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
cmovnl rsi, rbx
lea dx, qword ptr [rdi]
test sil, 13
xchg dil, dil
cmovnbe edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
