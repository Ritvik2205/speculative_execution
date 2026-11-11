.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
lea eax, qword ptr [rcx + rcx + 93]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
sbb al, dl
xor cl, dl
sbb sil, -78
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
cmp dl, 119
test bl, -8
cmp al, 23
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
