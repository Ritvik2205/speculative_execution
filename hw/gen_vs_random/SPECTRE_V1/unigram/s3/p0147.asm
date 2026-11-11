.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
test al, 59
cmovnle rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
add bl, -95
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, eax
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
movsx rdx, di
add dl, -42 # instrumentation
lea dx, qword ptr [rbx + rax]
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rax, rdx
lea rcx, qword ptr [rax + rcx]
lea edx, qword ptr [rax + rax + 3]
sub rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
