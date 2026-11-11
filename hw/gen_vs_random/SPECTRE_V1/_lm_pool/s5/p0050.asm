.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 9
mov dil, dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
sbb eax, 2098460225
and dl, -92
lea rcx, qword ptr [rdi]
cmp sil, bl
sbb sil, -78
add bl, dl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
