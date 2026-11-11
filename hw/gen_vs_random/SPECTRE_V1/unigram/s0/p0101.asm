.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns al
bts di, 144
sbb si, ax
neg rcx
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
add cl, 21 # instrumentation
adc cx, 85
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
lea rbx, qword ptr [rdi + rdx + 71]
sbb esi, 33
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
test al, 48
add al, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 5
setns dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
