.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
test dl, 113
and al, 33
add cl, -127
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 100
test cl, -120
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
neg rdi
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
test al, 42
xor bl, cl
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
