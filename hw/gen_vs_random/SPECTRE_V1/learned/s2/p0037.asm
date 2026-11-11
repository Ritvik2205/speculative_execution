.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
add cl, cl
add al, -109
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 43
and dl, sil
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
xchg ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
