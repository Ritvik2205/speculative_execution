.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
cmovbe dx, bx
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 1
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
bt rdx, 95
and rbx, rdi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
adc rdx, 23
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sbb al, dil
add al, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
