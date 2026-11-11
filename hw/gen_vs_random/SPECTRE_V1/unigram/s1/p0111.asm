.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edi, 29
lea di, qword ptr [rcx + rsi]
bts ebx, eax
test rdx, 44
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
sbb al, al
btr dx, cx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
lea rdi, qword ptr [rbx + rdi + 29]
add bl, 63 # instrumentation
cmovl bx, cx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 100
add al, 90 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
