.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 50
mov dil, 62
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 55
and bl, dl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
movzx ecx, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, -38
add si, 47
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -108
setb al
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
cmp dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
