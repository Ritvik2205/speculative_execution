.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, dil
test bl, -8
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
adc bx, 58
sub bl, cl
xchg rcx, rax
sub cl, bl
cmovle rdi, rcx
or esi, -74
lea bx, qword ptr [rcx + rdi]
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
