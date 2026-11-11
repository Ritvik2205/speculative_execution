.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and al, -23
sbb sil, al
inc eax
and bl, dl
test bl, -8
add sil, al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xchg edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
