.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
add dil, 90 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
cmovbe rax, rcx
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
add dl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb al, -127
cmovl ax, bx
bswap rdx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
setno bl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
sub rdx, 92
sbb dil, dl
btr rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
